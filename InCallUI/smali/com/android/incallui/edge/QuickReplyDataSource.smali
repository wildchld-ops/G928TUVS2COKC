.class public Lcom/android/incallui/edge/QuickReplyDataSource;
.super Ljava/lang/Object;
.source "QuickReplyDataSource.java"


# instance fields
.field private allColumns:[Ljava/lang/String;

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mDBHelper:Lcom/android/incallui/edge/QuickReplyDBHelper;

.field private mDBReferenceCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->allColumns:[Ljava/lang/String;

    iput v3, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDBReferenceCount:I

    new-instance v0, Lcom/android/incallui/edge/QuickReplyDBHelper;

    invoke-direct {v0, p1}, Lcom/android/incallui/edge/QuickReplyDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDBHelper:Lcom/android/incallui/edge/QuickReplyDBHelper;

    return-void
.end method

.method private declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDBReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDBReferenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDBHelper:Lcom/android/incallui/edge/QuickReplyDBHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDBHelper:Lcom/android/incallui/edge/QuickReplyDBHelper;

    invoke-virtual {v0}, Lcom/android/incallui/edge/QuickReplyDBHelper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized open()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDBReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDBReferenceCount:I

    iget-object v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDBHelper:Lcom/android/incallui/edge/QuickReplyDBHelper;

    invoke-virtual {v0}, Lcom/android/incallui/edge/QuickReplyDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAllQuickReplies()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/edge/QuickReplyItem;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "getAllQuickReplies"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/incallui/edge/QuickReplyDataSource;->open()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "quickreply"

    iget-object v2, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->allColumns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    new-instance v10, Lcom/android/incallui/edge/QuickReplyItem;

    invoke-direct {v10, v14, v12, v13}, Lcom/android/incallui/edge/QuickReplyItem;-><init>(Ljava/lang/String;J)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-direct {p0}, Lcom/android/incallui/edge/QuickReplyDataSource;->close()V

    const-string v0, "getAllQuickReplies : done"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v11

    goto :goto_0
.end method

.method public insertQuickReply(Landroid/content/ContentValues;)V
    .locals 4

    const-string v1, "insertQuickReply"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/incallui/edge/QuickReplyDataSource;->open()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    const-string v1, "DB is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "quickreply"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-direct {p0}, Lcom/android/incallui/edge/QuickReplyDataSource;->close()V

    const-string v1, "insertQuickReply : done"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertQuickReply(Ljava/lang/String;J)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timestamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/edge/QuickReplyDataSource;->insertQuickReply(Landroid/content/ContentValues;)V

    return-void
.end method

.method public removeAll()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "removeAll"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/incallui/edge/QuickReplyDataSource;->open()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/edge/QuickReplyDataSource;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "quickreply"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/edge/QuickReplyDataSource;->close()V

    const-string v1, "removeAll : done"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

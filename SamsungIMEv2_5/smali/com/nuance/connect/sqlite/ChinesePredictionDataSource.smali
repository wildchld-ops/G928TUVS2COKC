.class public Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;
.super Lcom/nuance/connect/sqlite/SQLDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionOpenHelper;,
        Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "chineseprediction"

.field private static final DB_VERSION:I = 0x1

.field private static final FIELD_RESULT_ATTRIBUTE:Ljava/lang/String; = "f"

.field private static final FIELD_RESULT_CCPS_VERSION:Ljava/lang/String; = "i"

.field private static final FIELD_RESULT_CLOUD_TIME:Ljava/lang/String; = "g"

.field private static final FIELD_RESULT_CREATED_STAMP:Ljava/lang/String; = "j"

.field private static final FIELD_RESULT_FULLSPELL:Ljava/lang/String; = "e"

.field private static final FIELD_RESULT_PHRASE:Ljava/lang/String; = "c"

.field private static final FIELD_RESULT_PREDICTION_ID:Ljava/lang/String; = "a"

.field private static final FIELD_RESULT_SPELL:Ljava/lang/String; = "d"

.field private static final FIELD_RESULT_TOTAL_TIME:Ljava/lang/String; = "h"

.field private static final FIELD_RESULT_TYPE:Ljava/lang/String; = "b"

.field private static final MAX_DATABASE_SIZE:I = 0x100000

.field private static final MAX_WAIT_TRANSMIT_TIME:J = 0x927c0L

.field private static final PREDICTION_TABLE:Ljava/lang/String; = "aa"

.field public static final RESULT_TYPE_CANCELED:I = 0x2

.field public static final RESULT_TYPE_COMPLETED:I = 0x3

.field public static final RESULT_TYPE_FAILED:I = 0x1

.field public static final RESULT_TYPE_PENDING:I = 0x0

.field private static final ROWID:Ljava/lang/String; = "rowid"


# instance fields
.field private context:Landroid/content/Context;

.field private databaseFull:Z

.field handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

.field private helper:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionOpenHelper;

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-object p1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->context:Landroid/content/Context;

    new-instance v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionOpenHelper;

    const-string v1, "chineseprediction"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->helper:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionOpenHelper;

    return-void
.end method

.method private declared-synchronized getHandler()Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    invoke-direct {v0, p0}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;-><init>(Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getIntegerArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private parseStringToIntegerArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    :try_start_0
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v3, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "NumberFormatException in parseStringToIntegerArray() string: "

    invoke-interface {v3, v4, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    return-object v1
.end method

.method private printCursor(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "["

    const-string v3, "]"

    const-string v4, "Num Columns: "

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "["

    const-string v3, "]"

    const-string v4, "Columns Names: "

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "["

    const-string v3, "]"

    const-string v4, "Row: "

    invoke-static {p2}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private printDatabaseContents()V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    const-string v0, "aa"

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->printCursor(Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "printDatabaseContents failed; message: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->helper:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionOpenHelper;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionOpenHelper;->close()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method deletePredictions(I)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "deletePredictions beforeRowId="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    if-lez p1, :cond_1

    const-string v2, "rowid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " < ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "aa"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "deletePredictions rows="

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "deletePredictions failed: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public deletePredictionsFrom(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->getHandler()Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->process(IIILjava/lang/Object;)V

    return-void
.end method

.method public getPendingLogSize()I
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "getPendingLogSize"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->openSafe()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "aa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "getPendingLogSize failed: "

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getPredictions(Ljava/lang/String;)Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;
    .locals 14

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "getPredictions"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->setDeviceID(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->openSafe()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "SELECT rowid, * FROM "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "aa"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " WHERE ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " != ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ") OR ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "j"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " < ? OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "j"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " > ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    add-long/2addr v8, v6

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    const/4 v6, 0x2

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v6

    iget-object v6, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    new-instance v2, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;-><init>(ILcom/nuance/connect/proto/Prediction$LoggingRequestV1;)V

    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move v6, v4

    move v4, v5

    :cond_1
    :try_start_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "getPredictions.map == "

    invoke-virtual {v8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v2

    const-string v9, "c"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->getIntegerArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->addAllPhrase(Ljava/lang/Iterable;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v2

    const-string v9, "d"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->getIntegerArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->addAllSpell(Ljava/lang/Iterable;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v2

    const-string v9, "e"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->getIntegerArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->addAllFullSpell(Ljava/lang/Iterable;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v2

    const-string v9, "f"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->parseStringToIntegerArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->addAllAttribute(Ljava/lang/Iterable;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v2

    iget-object v9, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v10, "prediction transaction id: "

    const-string v11, "a"

    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v9

    const-string v10, "a"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setTransactionID(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v9

    const-string v10, "i"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setCcpsVersion(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v9

    const-string v10, "h"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setTotalTime(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v9

    const-string v10, "g"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setCloudTime(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setPredictionResult(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v9

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v9}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getTransactionID()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object v0, v3

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-object v2, v0

    invoke-virtual {v2, v9}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->addTransactions(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v2, "rowid"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    :goto_1
    add-int/lit8 v6, v6, 0x1

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    if-lez v6, :cond_2

    new-instance v2, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;

    check-cast v3, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    invoke-virtual {v3}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;-><init>(ILcom/nuance/connect/proto/Prediction$LoggingRequestV1;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_3
    iget-object v7, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "getPredictions failed: "

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v8, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;

    invoke-direct {v2, v5, v13}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;-><init>(ILcom/nuance/connect/proto/Prediction$LoggingRequestV1;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    move v6, v4

    move v4, v5

    goto :goto_3

    :cond_3
    move v6, v4

    move v4, v5

    goto :goto_2
.end method

.method public insertPrediction(Ljava/lang/String;Ljava/lang/String;IJJ)Z
    .locals 10

    new-instance v1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;-><init>(Ljava/lang/String;Ljava/lang/String;JJI)V

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->getHandler()Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->addPrediction(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method insertPredictionObject(Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "insertPredictionObject row="

    invoke-virtual {p1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->openSafe()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->isFull()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "a"

    iget-object v3, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->predictionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "i"

    iget-object v3, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->ccpsVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "b"

    iget v3, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->resultType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "g"

    iget-wide v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->cloudTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "h"

    iget-wide v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->totalTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "j"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "aa"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "insertPredictionObject failed to insert event: "

    invoke-virtual {p1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "insertPredictionObject failed to insert prediction: ("

    invoke-virtual {p1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ") SQL message"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method insertPredictionResultObject(Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "insertPredictionResultObject row="

    invoke-virtual {p1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->openSafe()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->isFull()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "b"

    iget v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->resultType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "c"

    iget-object v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->phrase:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "d"

    iget-object v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->spell:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "e"

    iget-object v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->fullSpell:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    iget-object v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->attribute:[I

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->attribute:[I

    array-length v4, v4

    if-lez v4, :cond_2

    iget-object v2, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->attribute:[I

    const-string v4, ","

    invoke-static {v2, v4}, Lcom/nuance/connect/util/StringUtils;->implode([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v4, "f"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->predictionId:Ljava/lang/String;

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "aa"

    const-string v6, "a = ?"

    invoke-virtual {v4, v5, v3, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "insertPredictionResultObject failed to create result for prediction: "

    iget-object v3, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->predictionId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :cond_3
    if-le v2, v1, :cond_4

    :try_start_1
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "insertPredictionResultObject failed to properly create result for prediction: "

    iget-object v3, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->predictionId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "insertPredictionResultObject failed to create result for prediction: "

    iget-object v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->predictionId:Ljava/lang/String;

    const-string v5, " SQL message"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_2

    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public isFull()Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->databaseFull:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PRAGMA page_size;"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "PRAGMA page_count;"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/high16 v4, 0x100000

    mul-int/2addr v0, v3

    if-ge v4, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->databaseFull:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-boolean v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->databaseFull:Z

    return v0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public logPredictionResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 7

    new-instance v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->getHandler()Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->addPrediction(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->helper:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionOpenHelper;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    invoke-direct {v0, p0}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;-><init>(Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->start()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ChinesePredictionDataSource.reset()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->close()V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->context:Landroid/content/Context;

    const-string v1, "chineseprediction"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->databaseFull:Z

    return-void
.end method

.method public verifyDatabase()V
    .locals 0

    return-void
.end method

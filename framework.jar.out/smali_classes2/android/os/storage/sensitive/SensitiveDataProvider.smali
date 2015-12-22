.class public Landroid/os/storage/sensitive/SensitiveDataProvider;
.super Ljava/lang/Object;
.source "SensitiveDataProvider.java"


# static fields
.field public static final DB_READ:I = 0x1

.field public static final DB_WRITE:I = 0x2

.field private static final DEBUG:Z = false

.field private static final FLAG_SIZE:I = 0x4


# instance fields
.field private TAG:Ljava/lang/String;

.field private client_columns:Ljava/lang/String;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

.field private insert_columns:Ljava/lang/String;

.field private mCtx:Landroid/content/Context;

.field private read_columns:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LSManager.SensitiveDataProvider"

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    iput-object v1, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    const-string v0, "name"

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->client_columns:Ljava/lang/String;

    const-string/jumbo v0, "uuid, flags, client_id, dek"

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->insert_columns:Ljava/lang/String;

    const-string v0, "flags, dek"

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->read_columns:Ljava/lang/String;

    iput-object v1, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->mCtx:Landroid/content/Context;

    const-string v0, "Constructing SensitiveDataProvider..."

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "context is null in SensitiveDataProvider!!!... =/"

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/os/storage/sensitive/DBOpenHelper;

    invoke-direct {v0, p1}, Landroid/os/storage/sensitive/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    if-nez v0, :cond_1

    const-string v0, "dbHelper is NULL."

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->mCtx:Landroid/content/Context;

    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->mCtx:Landroid/content/Context;

    if-nez v0, :cond_2

    const-string v0, "mCtx is NULL!!!... =/"

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const-string v0, "close"

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    invoke-virtual {v0}, Landroid/os/storage/sensitive/DBOpenHelper;->close()V

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v3, 0x0

    const-string v6, "delete"

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-nez v6, :cond_0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT _id FROM clients WHERE name=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v4, v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM data WHERE uuid=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "client_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v6

    int-to-long v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Affected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v7, "Client not found."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public drop()V
    .locals 2

    const-string v0, "drop"

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    invoke-virtual {v1}, Landroid/os/storage/sensitive/DBOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method public get_keys_by_flag(J)[B
    .locals 9

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "get_keys_by_flag"

    invoke-direct {p0, v3}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "database is not opened..."

    invoke-direct {p0, v3}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT uuid,dek FROM data WHERE flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cursor error"

    invoke-direct {p0, v2}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    new-array v2, v6, [B

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xc

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    goto/16 :goto_0
.end method

.method public get_keys_by_flag_and_uuid(JLjava/lang/String;)[B
    .locals 9

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "get_keys_by_flag_and_uuid"

    invoke-direct {p0, v3}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "database is not opened..."

    invoke-direct {p0, v3}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT uuid,dek FROM data WHERE flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "uuid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cursor error"

    invoke-direct {p0, v2}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    new-array v2, v6, [B

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xc

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    goto/16 :goto_0
.end method

.method public open(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open with mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "database is not opened..."

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    const-string v0, "BOOM is expected, so humbly leaving..."

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    invoke-virtual {v0}, Landroid/os/storage/sensitive/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    invoke-virtual {v0}, Landroid/os/storage/sensitive/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PRAGMA foreign_keys = ON;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12

    const/4 v11, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "read"

    invoke-direct {p0, v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "database is not opened..."

    invoke-direct {p0, v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    move-object v1, v6

    :goto_0
    return-object v1

    :cond_0
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT _id FROM clients WHERE name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v4, v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v7, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->read_columns:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " FROM "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " WHERE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "uuid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "client_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_1
    iget-object v7, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v8, "Client not found."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v1, v6

    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v7, "Record not found."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public update_keys([B)V
    .locals 8

    const-string/jumbo v6, "update_keys"

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "database is not opened..."

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Count of keys: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    new-array v2, v6, [B

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ID len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    new-array v3, v6, [B

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE data SET dek=?, flags=0 WHERE uuid=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update statement "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v3}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v6

    if-gtz v6, :cond_2

    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v7, "Update failed."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    goto/16 :goto_0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;J[B)Z
    .locals 13

    const-string/jumbo v8, "write"

    invoke-direct {p0, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "database is not opened..."

    invoke-direct {p0, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "database is read only..."

    invoke-direct {p0, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT _id FROM clients WHERE name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    const-string v11, ""

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v6, v8

    const-string v8, "Client already exists."

    invoke-direct {p0, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT into data("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->insert_columns:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") VALUES(?,?,?,?);"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v4, v8, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v8, 0x2

    move-wide/from16 v0, p3

    invoke-virtual {v4, v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v8, 0x3

    invoke-virtual {v4, v8, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v8, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v4, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    :try_start_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_4

    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v9, "Client add error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT into clients("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->client_columns:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") VALUES(?);"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    const/4 v8, 0x1

    const-string v9, "."

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_2

    const-string/jumbo v8, "row error"

    invoke-direct {p0, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v9, "Client add error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v9, "Record add error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

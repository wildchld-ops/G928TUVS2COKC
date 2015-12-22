.class public Landroid/database/sqlite/SQLiteException;
.super Landroid/database/SQLException;
.source "SQLiteException.java"


# static fields
.field private static final errCode:I = -0x1

.field private static final errString:[[Ljava/lang/String;

.field private static final errString2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x1d

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SQLITE_OK"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SQLITE_ERROR"

    aput-object v2, v1, v4

    const-string v2, "SQL(query) error or missing database."

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SQLITE_INTERNAL"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_PERM"

    aput-object v3, v2, v4

    const-string v3, "Access permission denied."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_ABORT"

    aput-object v3, v2, v4

    const-string v3, "Callback routine requested an abort."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_BUSY"

    aput-object v3, v2, v4

    const-string v3, "The database file is locked."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_LOCKED"

    aput-object v3, v2, v4

    const-string v3, "A table in the database is locked."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_NOMEM"

    aput-object v3, v2, v4

    const-string v3, "There is no enough heap memory for application."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_READONLY"

    aput-object v3, v2, v4

    const-string v3, "Attempt to write a readonly database. (database may be deleted by other process)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_INTERRUPT"

    aput-object v3, v2, v4

    const-string v3, "Operation terminated by interrupt function."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_IOERR"

    aput-object v3, v2, v4

    const-string v3, "disk I/O error occurred."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_CORRUPT"

    aput-object v3, v2, v4

    const-string v3, "The database disk image is malformed."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_NOTFOUND"

    aput-object v3, v2, v4

    const-string v3, "Unknown operation code."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_FULL"

    aput-object v3, v2, v4

    const-string v3, "No available space in disk."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_CANTOPEN"

    aput-object v3, v2, v4

    const-string v3, "Unable to open the database file."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_PROTOCOL"

    aput-object v3, v2, v4

    const-string v3, "Database lock protocol error."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_EMPTY"

    aput-object v3, v2, v4

    const-string v3, "Database is empty."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_SCHEMA"

    aput-object v3, v2, v4

    const-string v3, "The database schema changed."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_TOOBIG"

    aput-object v3, v2, v4

    const-string v3, "String or BLOB exceeds size limits."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_CONSTRAINT"

    aput-object v3, v2, v4

    const-string v3, "Abort due to constraint violation."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_MISMATCH"

    aput-object v3, v2, v4

    const-string v3, "Data type mismatch."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_MISUSE"

    aput-object v3, v2, v4

    const-string v3, "Library used incorrectly."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_NOLFS"

    aput-object v3, v2, v4

    const-string v3, "Uses OS features not supported on host."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_AUTH"

    aput-object v3, v2, v4

    const-string v3, "Authorization denied."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_FORMAT"

    aput-object v3, v2, v4

    const-string v3, "Auxiliary database format error."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_RANGE"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_NOTADB"

    aput-object v3, v2, v4

    const-string v3, "File opened that is not a database file or encrypted."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_NOTICE"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_WARNING"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Landroid/database/sqlite/SQLiteException;->errString:[[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "SQLITE_ROW"

    aput-object v1, v0, v4

    const-string v1, "SQLITE_DONE"

    aput-object v1, v0, v5

    sput-object v0, Landroid/database/sqlite/SQLiteException;->errString2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/sqlite/SQLiteException;->makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/sqlite/SQLiteException;->makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getCausedBy(II)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    sparse-switch p0, :sswitch_data_0

    :cond_0
    sget-object v0, Landroid/database/sqlite/SQLiteException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :sswitch_0
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_1
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDiskIOException;->makeCausedBy(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method private static getErrString(II)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    :cond_0
    sget-object v0, Landroid/database/sqlite/SQLiteException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :sswitch_0
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_1
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_2
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_3
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteConstraintException;->errString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteConstraintException;->errString:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_1
        0xe -> :sswitch_2
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method private static makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Landroid/database/sqlite/SQLiteExceptionLog;

    const/4 v3, -0x1

    invoke-direct {v0, v3, p0}, Landroid/database/sqlite/SQLiteExceptionLog;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteExceptionLog;->getMajorCode()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    const/16 v3, 0x65

    if-gt v1, v3, :cond_0

    sget-object v3, Landroid/database/sqlite/SQLiteException;->errString2:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x64

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteExceptionLog;->setErrString(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteExceptionLog;->makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    if-ltz v1, :cond_1

    sget-object v3, Landroid/database/sqlite/SQLiteException;->errString:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteExceptionLog;->getMinorCode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteException;->getErrString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteExceptionLog;->setErrString(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteException;->getCausedBy(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteExceptionLog;->makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

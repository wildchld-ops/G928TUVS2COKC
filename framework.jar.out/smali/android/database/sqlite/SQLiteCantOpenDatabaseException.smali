.class public Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteCantOpenDatabaseException.java"


# static fields
.field public static final errCode:I = 0xe

.field public static final errString:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SQLITE_CANTOPEN"

    aput-object v2, v1, v4

    const-string v2, "Unable to open the database file."

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SQLITE_CANTOPEN_NOTEMPDIR"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SQLITE_CANTOPEN_ISDIR"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_CANTOPEN_FULLPATH"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_CANTOPEN_CONVPATH"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_CANTOPEN_ENOENT"

    aput-object v3, v2, v4

    const-string v3, "Specified directory or database file does not exist."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_CANTOPEN_ENOMEM"

    aput-object v3, v2, v4

    const-string v3, "No available memory space."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_CANTOPEN_EACCES"

    aput-object v3, v2, v4

    const-string v3, "Application has no permission to open the specified database file."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_CANTOPEN_EMFILE"

    aput-object v3, v2, v4

    const-string v3, "Application has opened two many files. Maximum of available file descriptors in one process is 1024 in default."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_CANTOPEN_ENOSPC"

    aput-object v3, v2, v4

    const-string v3, "No available space in disk."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_CANTOPEN_EROFS"

    aput-object v3, v2, v4

    const-string v3, "Current partition has been mounted with read-only mode."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->addErrCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static addErrCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "(code "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " (code 14)"

    goto :goto_0
.end method

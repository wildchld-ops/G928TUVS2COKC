.class public Landroid/database/sqlite/SQLiteExceptionLog;
.super Ljava/lang/Object;
.source "SQLiteExceptionLog.java"


# instance fields
.field errCode:I

.field errCodeString:Ljava/lang/String;

.field errMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteExceptionLog;->parseCode(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    iput-object p2, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errMessage:Ljava/lang/String;

    return-void
.end method

.method private needMemoryInfo()Z
    .locals 2

    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/16 v1, 0xc0a

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/16 v1, 0x60e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needMountInfo()Z
    .locals 2

    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/16 v1, 0x1b0a

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteExceptionLog;->getMajorCode()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteExceptionLog;->getMajorCode()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needStorageInfo()Z
    .locals 2

    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/16 v1, 0x130a

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/16 v1, 0x90e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public FormatSize(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v2, 0x400

    const/4 v0, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const-string v0, "KB"

    div-long/2addr p1, v2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const-string v0, "MB"

    div-long/2addr p1, v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAvailableInternalMemorySize()J
    .locals 8

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v4, v6

    mul-long v6, v4, v0

    return-wide v6
.end method

.method public getMajorCode()I
    .locals 2

    iget v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    if-gez v1, :cond_0

    iget v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    :goto_0
    return v1

    :cond_0
    const/16 v0, 0xff

    iget v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    and-int/2addr v1, v0

    goto :goto_0
.end method

.method public getMinorCode()I
    .locals 2

    iget v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    if-gez v1, :cond_0

    iget v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    :goto_0
    return v1

    :cond_0
    const/16 v0, 0xff

    iget v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    shr-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v0

    goto :goto_0
.end method

.method public getTotalInternalMemorySize()J
    .locals 8

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    mul-long v6, v4, v0

    return-wide v6
.end method

.method public makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v0, "\n#################################################################\n"

    iget v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Error Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCodeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errMessage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errMessage:Ljava/lang/String;

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Caused By : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#################################################################"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errMessage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public parseCode(ILjava/lang/String;)I
    .locals 7

    if-eqz p2, :cond_1

    const-string v5, "code "

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    add-int/lit8 v4, v4, 0x5

    move v1, v4

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    :cond_1
    move v0, p1

    :goto_1
    return v0

    :catch_0
    move-exception v3

    move v0, p1

    goto :goto_1
.end method

.method public setErrString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCodeString:Ljava/lang/String;

    return-void
.end method

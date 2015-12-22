.class public abstract Lcom/sec/android/app/launcher/providers/ProviderBase;
.super Landroid/content/ContentProvider;
.source "ProviderBase.java"


# static fields
.field protected static final DELIMITER:Ljava/lang/String; = ","

.field private static final MAX_NOTIFY_IDS:I = 0x32

.field public static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field private static final PROJ_ID:[Ljava/lang/String;

.field public static final QUERY_DELETE:I = 0x3

.field private static final QUERY_IDS:Ljava/lang/String; = "ids"

.field public static final QUERY_INSERT:I = 0x1

.field private static final QUERY_OPERATION:Ljava/lang/String; = "op"

.field public static final QUERY_UNKOWN:I = 0x0

.field public static final QUERY_UPDATE:I = 0x2

.field static final TAG:Ljava/lang/String; = "Launcher.Provider"

.field public static final USER_DELIMITER:Ljava/lang/String; = "@"


# instance fields
.field protected mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/providers/ProviderBase;->PROJ_ID:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private dbInsert(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 5

    new-instance v0, Lcom/sec/android/app/launcher/utils/SqlArguments;

    invoke-direct {v0, p1}, Lcom/sec/android/app/launcher/utils/SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/providers/ProviderBase;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/providers/ProviderBase;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v3, v0, Lcom/sec/android/app/launcher/utils/SqlArguments;->table:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, p2}, Lcom/sec/android/app/launcher/providers/ProviderBase;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method protected static dbInsertAndCheck(Landroid/database/sqlite/SQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static decodeIds(Ljava/lang/String;)[J
    .locals 6

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v1, v4, [J

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static getNotifyIds(Landroid/net/Uri;)[J
    .locals 2

    if-eqz p0, :cond_0

    const-string v1, "ids"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/launcher/providers/ProviderBase;->decodeIds(Ljava/lang/String;)[J

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNotifyQueryType(Landroid/net/Uri;)I
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v3, "op"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected appendNotifyUriIds(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/launcher/utils/SqlArguments;Ljava/lang/StringBuilder;)V
    .locals 10

    const/4 v8, 0x0

    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object v1, p2, Lcom/sec/android/app/launcher/utils/SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/launcher/providers/ProviderBase;->PROJ_ID:[Ljava/lang/String;

    iget-object v3, p2, Lcom/sec/android/app/launcher/utils/SqlArguments;->where:Ljava/lang/String;

    iget-object v4, p2, Lcom/sec/android/app/launcher/utils/SqlArguments;->args:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v1
.end method

.method protected buildNotifyUri(Landroid/net/Uri;ILjava/lang/String;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "op"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ids"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected buildNotifyUri(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/launcher/utils/SqlArguments;I)Landroid/net/Uri;
    .locals 14

    const/4 v11, 0x0

    :try_start_0
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/sec/android/app/launcher/utils/SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/app/launcher/providers/ProviderBase;->PROJ_ID:[Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/sec/android/app/launcher/utils/SqlArguments;->where:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/android/app/launcher/utils/SqlArguments;->args:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    invoke-static {v11}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return-object v3

    :cond_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_2

    const-string v3, ""

    move/from16 v0, p4

    invoke-virtual {p0, p1, v0, v3}, Lcom/sec/android/app/launcher/providers/ProviderBase;->buildNotifyUri(Landroid/net/Uri;ILjava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    invoke-static {v11}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v12

    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v11}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v5, ","

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {p0, p1, v0, v13}, Lcom/sec/android/app/launcher/providers/ProviderBase;->buildNotifyUri(Landroid/net/Uri;ILjava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    invoke-static {v11}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v11}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v3
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move-object v0, p2

    array-length v7, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_1

    aget-object v9, v0, v3

    invoke-direct {p0, p1, v9}, Lcom/sec/android/app/launcher/providers/ProviderBase;->dbInsert(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_0

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const-string v12, ","

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    invoke-virtual {p0, p1, v10, v6}, Lcom/sec/android/app/launcher/providers/ProviderBase;->buildNotifyUri(Landroid/net/Uri;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/launcher/providers/ProviderBase;->notifyChange(Landroid/net/Uri;)V

    :cond_2
    return v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    new-instance v0, Lcom/sec/android/app/launcher/utils/SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/launcher/utils/SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/providers/ProviderBase;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {p0, p1, v2, v0, v4}, Lcom/sec/android/app/launcher/providers/ProviderBase;->buildNotifyUri(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/launcher/utils/SqlArguments;I)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/android/app/launcher/utils/SqlArguments;->table:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/app/launcher/utils/SqlArguments;->where:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/android/app/launcher/utils/SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/providers/ProviderBase;->notifyChange(Landroid/net/Uri;)V

    return v1
.end method

.method protected abstract getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/providers/ProviderBase;->dbInsert(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lcom/sec/android/app/launcher/providers/ProviderBase;->buildNotifyUri(Landroid/net/Uri;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/providers/ProviderBase;->notifyChange(Landroid/net/Uri;)V

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method protected notifyChange(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/ProviderBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v5, 0x0

    new-instance v8, Lcom/sec/android/app/launcher/utils/SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/sec/android/app/launcher/utils/SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object v2, v8, Lcom/sec/android/app/launcher/utils/SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/providers/ProviderBase;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, v8, Lcom/sec/android/app/launcher/utils/SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/sec/android/app/launcher/utils/SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/ProviderBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isSafeMode()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/sec/android/app/launcher/utils/SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/sec/android/app/launcher/utils/SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/providers/ProviderBase;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {p0, p1, v2, v0, v4}, Lcom/sec/android/app/launcher/providers/ProviderBase;->buildNotifyUri(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/launcher/utils/SqlArguments;I)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/android/app/launcher/utils/SqlArguments;->table:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/app/launcher/utils/SqlArguments;->where:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/android/app/launcher/utils/SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v4, p2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/providers/ProviderBase;->notifyChange(Landroid/net/Uri;)V

    goto :goto_0
.end method

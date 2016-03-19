.class public Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BnSRemovedDBHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "RemoveListManager"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final KEY_ADDEDTIME:Ljava/lang/String; = "added_time"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_WORD:Ljava/lang/String; = "word"

.field private static final SERVER_DOWNLOADED_DATABASE_NAME:Ljava/lang/String; = "RemoveListManager-Server"

.field private static final TABLE_REMOVEDLIST:Ljava/lang/String; = "RemovedList"

.field private static currentDB:Landroid/database/sqlite/SQLiteDatabase;

.field private static mContext:Landroid/content/Context;

.field private static serverDB:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private final KEEP_DBFILES_AFTER_WORK:Z

.field private OriginalPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->currentDB:Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->serverDB:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "RemoveListManager"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sget-boolean v1, Lcom/ime/framework/util/Debug;->ENG_MODE:Z

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->KEEP_DBFILES_AFTER_WORK:Z

    const-string v0, "/data/data/com.sec.android.inputmethod/databases/"

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->OriginalPath:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sget-boolean v1, Lcom/ime/framework/util/Debug;->ENG_MODE:Z

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->KEEP_DBFILES_AFTER_WORK:Z

    const-string v0, "/data/data/com.sec.android.inputmethod/databases/"

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->OriginalPath:Ljava/lang/String;

    sput-object p1, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createDBTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE RemovedList(id INTEGER PRIMARY KEY,word TEXT NOT NULL UNIQUE,status INTEGER NOT NULL,locale TEXT NOT NULL,added_time DATETIME DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteDatabase(Landroid/content/Context;)Z
    .locals 5

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "deleteDatabase"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "deleteDatabase - fail! Context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    return v2

    :cond_0
    const-string v3, "RemoveListManager"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "success deleteDatabase"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    const-string v3, "SamsungIME_SYNC"

    const-string v4, "failed deleteDatabase"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static deleteDownloadedDatabase(Landroid/content/Context;)Z
    .locals 5

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "deleteDownloadedDatabase"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "deleteDownloadedDatabase - fail! Context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    return v2

    :cond_0
    const-string v3, "RemoveListManager-Server"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "success delete server Database "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    const-string v3, "SamsungIME_SYNC"

    const-string v4, "failed delete server Database"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public MergeRemoveList()V
    .locals 19

    const-string v2, "SamsungIME_SYNC"

    const-string v3, "MergeRemoveList()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SamsungIME_SYNC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "original path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->OriginalPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->OriginalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RemoveListManager-Server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->OriginalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RemoveListManager-Server-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SamsungIME_SYNC"

    const-string v3, "MergeRemoveList() : RemoveListManger_Server file is not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v2, "SamsungIME_SYNC"

    const-string v3, "MergeRemoveList() : RemoveListManger_Server and RemoveListManager-Server-journal found from the under of OriginalPath"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->openDataBase_server()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v11, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    const/16 v18, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const-string v17, "SELECT  * FROM RemovedList"

    sget-object v2, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->serverDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :try_start_1
    new-instance v1, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getStatus()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->addRemovedWord(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "SamsungIME_SYNC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MergeRemoveList() : word : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getWords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v15}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    :goto_2
    if-eqz v14, :cond_2

    if-eqz v18, :cond_2

    :try_start_3
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getStatus()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->updateRemovedWord(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->closeDataBase_server()V

    goto/16 :goto_0

    :catch_1
    move-exception v12

    const-string v2, "SamsungIME_SYNC"

    const-string v3, "MergeRemoveList() : SQLiteCantOpenDatabaseException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v12

    :try_start_4
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3
.end method

.method public addRemovedWord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRemovedWord SS - RemoveList Item word :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string v3, "word"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "locale"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "RemovedList"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "SamsungIME_SYNC"

    const-string v4, "RemoveList Item is duplicated SQLiteConstraintException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
.end method

.method public addRemovedWord(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRemovedWord SSI - RemoveList Item word :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string v3, "word"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "locale"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "RemovedList"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "SamsungIME_SYNC"

    const-string v4, "RemoveList Item is duplicated SQLiteConstraintException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
.end method

.method public closeDataBase_server()V
    .locals 4

    sget-object v2, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->serverDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->serverDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->OriginalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RemoveListManager-Server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->OriginalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RemoveListManager-Server-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "SamsungIME_SYNC"

    const-string v3, "closeDataBase_server : Only Eng Mode, RemoveListManger_Server files will be keep."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->KEEP_DBFILES_AFTER_WORK:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v2, "SamsungIME_SYNC"

    const-string v3, "closeDataBase_server : RemoveListManger_Server deleted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string v2, "SamsungIME_SYNC"

    const-string v3, "closeDataBase_server : RemoveListManger_Server_Journal deleted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public deleteWord(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "RemovedList"

    const-string v2, "word = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public dropDBTable()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SamsungIME_SYNC"

    const-string v2, "reset : drop table"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "drop table RemovedList"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public getAllWords()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/inputmethod/databases/BnSRemoveWord;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "SELECT  * FROM RemovedList"

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const/4 v1, 0x0

    invoke-virtual {v7, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BnSRemovedDBHelper getAllWords - list count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getWordCount()I
    .locals 5

    const-string v1, "SELECT  * FROM RemovedList"

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v0
.end method

.method public getWords(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/inputmethod/databases/BnSRemoveWord;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM RemovedList WHERE word=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const/4 v1, 0x0

    invoke-virtual {v7, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v9

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getWords(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/inputmethod/databases/BnSRemoveWord;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM RemovedList WHERE word=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const/4 v1, 0x0

    invoke-virtual {v7, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v9

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->createDBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS RemovedList"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public openDataBase_server()V
    .locals 5

    const-string v2, "SamsungIME_SYNC"

    const-string v3, "openDataBase_server() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->OriginalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RemoveListManager-Server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->OriginalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RemoveListManager-Server-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SamsungIME_SYNC"

    const-string v3, "Error! MergeRemoveList() : RemoveListManger_Server files are not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->OriginalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RemoveListManager-Server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->serverDB:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->serverDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME_SYNC"

    const-string v3, "openDataBase_server() : serverDB file is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "RemovedList"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public updateRemovedWord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "word"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "locale"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "status"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v4, "added_time"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "RemovedList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "word = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public updateRemovedWord(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "word"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "locale"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v4, "added_time"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "RemovedList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "word = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

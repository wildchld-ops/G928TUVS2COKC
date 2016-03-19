.class public Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;
.super Landroid/app/IntentService;
.source "CandidateExplainerDbInflater.java"


# static fields
.field private static final BLANK_SEPARATOR:Ljava/lang/String; = "\\s+"

.field private static final COMMENT_CHAR:Ljava/lang/String; = "#"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->getInstance(Landroid/content/Context;)Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object v13, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHandleIntent() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v6}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v6}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v13, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    const-string v14, "onHandleIntent() db is null."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v5

    sget-object v13, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHandleIntent() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->setBusyStatus(Z)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x7f060000

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v10, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    :cond_3
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v13, "#"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-lt v13, v14, :cond_3

    const-string v13, "\\s+"

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v13, v0

    const/4 v14, 0x4

    if-ne v13, v14, :cond_3

    const/4 v13, 0x0

    aget-object v13, v0, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v0, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x2

    aget-object v13, v0, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x3

    aget-object v13, v0, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    const/4 v1, -0x1

    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    :try_start_4
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    const-string v13, "word"

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "description"

    invoke-virtual {v11, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "category"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "pinyin"

    invoke-virtual {v11, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "chinese_dictionary"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v9, v10

    :goto_2
    :try_start_5
    sget-object v13, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHandleIntent() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v9, :cond_4

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->setBusyStatus(Z)V

    goto/16 :goto_0

    :catch_2
    move-exception v5

    :try_start_7
    sget-object v13, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHandleIntent() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    :catch_3
    move-exception v5

    move-object v9, v10

    :goto_4
    :try_start_8
    sget-object v13, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHandleIntent() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v9, :cond_5

    :try_start_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->setBusyStatus(Z)V

    goto/16 :goto_0

    :cond_6
    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v10, :cond_7

    :try_start_b
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_7
    :goto_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->setBusyStatus(Z)V

    move-object v9, v10

    goto/16 :goto_0

    :catch_4
    move-exception v5

    sget-object v13, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHandleIntent() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_5
    move-exception v5

    sget-object v13, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHandleIntent() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_6
    move-exception v5

    sget-object v13, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHandleIntent() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_7
    move-exception v5

    :goto_7
    :try_start_c
    sget-object v13, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHandleIntent() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v9, :cond_8

    :try_start_d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :cond_8
    :goto_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->setBusyStatus(Z)V

    goto/16 :goto_0

    :catch_8
    move-exception v5

    sget-object v13, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHandleIntent() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catchall_0
    move-exception v13

    :goto_9
    if-eqz v9, :cond_9

    :try_start_e
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :cond_9
    :goto_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->setBusyStatus(Z)V

    throw v13

    :catch_9
    move-exception v5

    sget-object v14, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onHandleIntent() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_1
    move-exception v13

    move-object v9, v10

    goto :goto_9

    :catch_a
    move-exception v5

    move-object v9, v10

    goto :goto_7

    :catch_b
    move-exception v5

    goto/16 :goto_4

    :catch_c
    move-exception v5

    goto/16 :goto_2
.end method

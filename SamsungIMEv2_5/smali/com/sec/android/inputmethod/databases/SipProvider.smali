.class public Lcom/sec/android/inputmethod/databases/SipProvider;
.super Landroid/content/ContentProvider;
.source "SipProvider.java"


# static fields
.field public static final Hanja_ASSET_PATH:Ljava/lang/String; = "databases/samsung_hanja.db"

.field public static final Hanja_DBNAME:Ljava/lang/String; = "samsung_hanja.db"

.field public static final Hanja_DB_TABLE_NAME:Ljava/lang/String; = "ksc5601_hanja"


# instance fields
.field m_HanjaDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private CopyDB(Z)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/databases/SipProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    if-nez v17, :cond_0

    const-string v17, "SamsungIME"

    const-string v18, "[SP] CopyDB - getContext() == null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/databases/SipProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/databases/SipProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "databases"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/databases/SipProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "databases"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "samsung_hanja.db"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v17, "SamsungIME"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[SP] CopyDB - filePath : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v17, "databases/samsung_hanja.db"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    if-nez p1, :cond_3

    const-string v17, "SamsungIME"

    const-string v18, "[SP] ExistsDB"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    :goto_2
    const-string v17, "SamsungIME"

    const-string v18, "[SP] CopyDB() fail"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "data/data/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/databases/SipProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/databases"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_3
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14

    const/16 v16, -0x1

    const/16 v17, 0x400

    :try_start_3
    move/from16 v0, v17

    new-array v6, v0, [B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    const/16 v17, 0x0

    const/16 v18, 0x400

    :try_start_4
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v6, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v5, v6, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v8

    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_4
    :goto_4
    if-eqz v14, :cond_5

    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    :cond_6
    :goto_6
    if-eqz v15, :cond_7

    :try_start_9
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    :cond_7
    :goto_7
    move-object v4, v5

    move-object v13, v14

    goto/16 :goto_0

    :cond_8
    if-eqz v5, :cond_9

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_9
    :goto_8
    if-eqz v14, :cond_a

    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_a
    :goto_9
    if-eqz v3, :cond_b

    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_b
    :goto_a
    if-eqz v15, :cond_7

    :try_start_d
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_7

    :catch_2
    move-exception v8

    :try_start_e
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_3
    move-exception v7

    move-object v4, v5

    move-object v13, v14

    goto/16 :goto_2

    :catch_4
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_5
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_6
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_7
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_8
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_9
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_a
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_7

    :catch_b
    move-exception v8

    :try_start_f
    invoke-virtual {v8}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v5, :cond_c

    :try_start_10
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    :cond_c
    :goto_b
    if-eqz v14, :cond_d

    :try_start_11
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    :cond_d
    :goto_c
    if-eqz v3, :cond_e

    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    :cond_e
    :goto_d
    if-eqz v15, :cond_7

    :try_start_13
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    goto :goto_7

    :catch_c
    move-exception v8

    :try_start_14
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_d
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_e
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_f
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3

    goto :goto_d

    :catchall_0
    move-exception v17

    if-eqz v5, :cond_f

    :try_start_15
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    :cond_f
    :goto_e
    if-eqz v14, :cond_10

    :try_start_16
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    :cond_10
    :goto_f
    if-eqz v3, :cond_11

    :try_start_17
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_12

    :cond_11
    :goto_10
    if-eqz v15, :cond_12

    :try_start_18
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_13

    :cond_12
    :goto_11
    :try_start_19
    throw v17

    :catch_10
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    :catch_11
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catch_12
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_13
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_3

    goto :goto_11

    :catch_14
    move-exception v7

    move-object v13, v14

    goto/16 :goto_2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "KOREA"

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/databases/SipProvider;->CopyDB(Z)V

    new-instance v1, Lcom/sec/android/inputmethod/databases/HanjaDatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/SipProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/inputmethod/databases/HanjaDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/HanjaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/SipProvider;->m_HanjaDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SipProvider;->m_HanjaDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SipProvider;->m_HanjaDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ksc5601_hanja"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v0, v9

    :goto_0
    return-object v0

    :catch_0
    move-exception v8

    const-string v0, "SamsungIME"

    const-string v1, "[SP] SQLiteException - query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/databases/SipProvider;->CopyDB(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SipProvider;->m_HanjaDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ksc5601_hanja"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SipProvider;->m_HanjaDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ksc5601_hanja"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

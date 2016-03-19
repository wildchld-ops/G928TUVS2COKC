.class public Lcom/android/phone/photoring/PhotoRingDB;
.super Ljava/lang/Object;
.source "PhotoRingDB.java"


# instance fields
.field private cacheProjectionMap:[Ljava/lang/String;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;

.field private mOpenHelper:Lcom/android/phone/operator/kor/LGTPhotoRingDB;

.field private phraseProjectionMap:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->mOpenHelper:Lcom/android/phone/operator/kor/LGTPhotoRingDB;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "phrase"

    aput-object v1, v0, v3

    const-string v1, "content_path"

    aput-object v1, v0, v4

    const-string v1, "thumb_path"

    aput-object v1, v0, v5

    const-string v1, "data_type"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->phraseProjectionMap:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "sender_CTN"

    aput-object v1, v0, v3

    const-string v1, "cache_url"

    aput-object v1, v0, v4

    const-string v1, "cache_data"

    aput-object v1, v0, v5

    const-string v1, "cache_hit"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->cacheProjectionMap:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingDB;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/phone/operator/kor/LGTPhotoRingDB;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingDB;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/phone/operator/kor/LGTPhotoRingDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->mOpenHelper:Lcom/android/phone/operator/kor/LGTPhotoRingDB;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->mOpenHelper:Lcom/android/phone/operator/kor/LGTPhotoRingDB;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public CheckPathReferencedOther(JLjava/lang/String;)Z
    .locals 11

    const-string v3, "content_path=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phrase_table"

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingDB;->phraseProjectionMap:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v0, v8, p1

    if-eqz v0, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CheckPhraseExist(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 12

    const-wide/16 v10, -0x1

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v0, "phrase"

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string v0, " is null AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v0, "data_type=? AND content_path"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p2, :cond_4

    if-nez p1, :cond_3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    :goto_1
    const-string v0, " is null"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phrase_table"

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingDB;->phraseProjectionMap:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v10

    :cond_2
    const-string v0, "=? AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    :goto_3
    const-string v0, "=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object p2, v4, v0

    goto :goto_3
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->mOpenHelper:Lcom/android/phone/operator/kor/LGTPhotoRingDB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->mOpenHelper:Lcom/android/phone/operator/kor/LGTPhotoRingDB;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingDB;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->mOpenHelper:Lcom/android/phone/operator/kor/LGTPhotoRingDB;

    return-void
.end method

.method public deleteCacheDataByID(Ljava/lang/String;)I
    .locals 4

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "mcid_cache"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public deleteOneItem()Ljava/lang/String;
    .locals 12

    const/4 v3, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mcid_cache"

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingDB;->cacheProjectionMap:[Ljava/lang/String;

    const-string v7, "cache_hit"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoRingDB;->deleteCacheDataByID(Ljava/lang/String;)I

    :cond_2
    return-object v9
.end method

.method public deletePhrase(Ljava/lang/String;)I
    .locals 4

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "phrase_table"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getCacheCount()I
    .locals 10

    const/4 v3, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mcid_cache"

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingDB;->cacheProjectionMap:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    return v8
.end method

.method public getCacheData(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 15

    const/4 v11, 0x0

    const-string v3, "sender_CTN=? AND cache_url=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mcid_cache"

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingDB;->cacheProjectionMap:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz p3, :cond_0

    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v10, v0, 0x1

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "cache_hit"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mcid_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v9, v14, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v11
.end method

.method public getCacheDataByCTN(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v3, "sender_CTN=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mcid_cache"

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingDB;->cacheProjectionMap:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v9
.end method

.method public getPhraseById(J)Landroid/database/Cursor;
    .locals 9

    const/4 v5, 0x0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phrase_table"

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingDB;->phraseProjectionMap:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPhrasesByType(I)Landroid/database/Cursor;
    .locals 8

    const/4 v5, 0x0

    const-string v3, "data_type=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v7, "_id DESC"

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phrase_table"

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingDB;->phraseProjectionMap:[Ljava/lang/String;

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insertCacheData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "sender_CTN"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cache_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cache_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cache_hit"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "mcid_cache"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public insertPhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "phrase"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content_path"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "thumb_path"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "phrase_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public updateCacheData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "cache_url"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cache_data"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sender_CTN=?"

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "mcid_cache"

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updatePhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "phrase"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content_path"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "thumb_path"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data_type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "phrase_table"

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

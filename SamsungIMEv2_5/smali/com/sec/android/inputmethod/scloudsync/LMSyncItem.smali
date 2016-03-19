.class public Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;
.super Ljava/lang/Object;
.source "LMSyncItem.java"


# static fields
.field private static final SYNCED_DIR:Ljava/lang/String; = "SyncFiles"

.field private static final SYNC_MERGED_DIR:Ljava/lang/String; = "SyncMerged"


# instance fields
.field private final REMOVE_TEMP_FILES:Z

.field private final SOURCE_DIR:Ljava/lang/String;

.field private final SYNCITEM_DELETED_BIT:Ljava/lang/String;

.field private final SYNCITEM_DIRTY_BIT:Ljava/lang/String;

.field private final SYNCITEM_LOCAL_ID:I

.field private final SYNCITEM_LOCAL_ID_NAME:Ljava/lang/String;

.field private final SYNCITEM_PREV_SYNCTIME:Ljava/lang/String;

.field private final SYNCITEM_SYNC_KEY:Ljava/lang/String;

.field private final SYNCITEM_TIMESTAMP:Ljava/lang/String;

.field private final SYNC_DATA:Ljava/lang/String;

.field private final WORD_FILE:Ljava/lang/String;

.field private final ZIP_FILE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeleted:Z

.field private mDirty:Z

.field private mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

.field private mId:I

.field private mPrevSyncTime:J

.field private mSyncDir:Ljava/io/File;

.field private mSyncKey:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->REMOVE_TEMP_FILES:Z

    const-string v0, ".zip"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->ZIP_FILE:Ljava/lang/String;

    const-string v0, "WordFile"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->WORD_FILE:Ljava/lang/String;

    const-string v0, "SipSyncData"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->SYNC_DATA:Ljava/lang/String;

    const-string v0, "sync_key"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->SYNCITEM_SYNC_KEY:Ljava/lang/String;

    const-string v0, "timestamp"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->SYNCITEM_TIMESTAMP:Ljava/lang/String;

    const-string v0, "localId"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->SYNCITEM_LOCAL_ID_NAME:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->SYNCITEM_LOCAL_ID:I

    const-string v0, "prev_synctime"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->SYNCITEM_PREV_SYNCTIME:Ljava/lang/String;

    const-string v0, "deleted"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->SYNCITEM_DELETED_BIT:Ljava/lang/String;

    const-string v0, "dirty"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->SYNCITEM_DIRTY_BIT:Ljava/lang/String;

    const-string v0, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->SOURCE_DIR:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mContext:Landroid/content/Context;

    const-string v0, "SWIFTKEY"

    const-string v1, "SWIFTKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;

    invoke-direct {v0, p1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mContext:Landroid/content/Context;

    const-string v1, "SyncFiles"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncDir:Ljava/io/File;

    return-void

    :cond_0
    const-string v0, "SWIFTKEY"

    const-string v1, "XT9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;

    invoke-direct {v0, p1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineNullObject;

    invoke-direct {v0, p1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineNullObject;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    goto :goto_0
.end method

.method private deleteExceptionFileIfExist()V
    .locals 6

    const-string v3, "engine_exception.log"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.sec.android.inputmethod/app_SwiftKey/user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "engine_exception.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v1, v2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public applyAddWordList()V
    .locals 0

    return-void
.end method

.method public applyRemoveWordList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->applyRemoveWordList()V

    return-void
.end method

.method public buildDirPath()V
    .locals 0

    return-void
.end method

.method public copyRemoveList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncDir:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->copyRemoveList(Ljava/io/File;)V

    return-void
.end method

.method public deleteAllFiles(Ljava/io/File;)Z
    .locals 7

    const-string v4, "SamsungIME_SYNC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAllFiles : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public delteLMFiles()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->deleteLMFiles()Z

    move-result v0

    return v0
.end method

.method public delteTemporaryFiles()Z
    .locals 5

    iget-object v4, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public delteTemporaryZipFiles()Z
    .locals 10

    const-string v8, "SamsungIME_SYNC"

    const-string v9, "delteTemporaryZipFiles + "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v8}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->getZipWorkDirectory()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object v8, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v8}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->getZipEngineDirectory()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_3
    const-string v8, "SamsungIME_SYNC"

    const-string v9, "delteTemporaryZipFiles - "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    return v8
.end method

.method public extractWordList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->extractWordList()Z

    return-void
.end method

.method public getDirtyBit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mDirty:Z

    return v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mId:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrevSyncTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mPrevSyncTime:J

    return-wide v0
.end method

.method public getSyncFileDirectory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncDir:Ljava/io/File;

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncMergedDirector()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mContext:Landroid/content/Context;

    const-string v1, "SyncMerged"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mTimestamp:J

    return-wide v0
.end method

.method public getUploadFileList()[Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public isActiveSession()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->isActiveSession()Z

    move-result v0

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mDeleted:Z

    return v0
.end method

.method public loadSyncItem()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mContext:Landroid/content/Context;

    const-string v2, "SipSyncData"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sync_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncKey:Ljava/lang/String;

    const-string v1, "timestamp"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mTimestamp:J

    const-string v1, "prev_synctime"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mPrevSyncTime:J

    const-string v1, "localId"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mId:I

    const-string v1, "deleted"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mDeleted:Z

    const-string v1, "dirty"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mDirty:Z

    return-void
.end method

.method public mergeUserData()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->unZipFiles()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SamsungIME_SYNC"

    const-string v1, "mergeUserData() : !unZipFiles()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncDir:Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncMergedDirector()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->mergeUserData(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    goto :goto_0
.end method

.method public prepareToSync()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mDeleted:Z

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mTimestamp:J

    iget-wide v4, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mTimestamp:J

    iput-wide v4, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mPrevSyncTime:J

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v4}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->getLatestUpdatedTimestamp()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mTimestamp:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    iput-wide v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mTimestamp:J

    const-string v4, "SamsungIME_SYNC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareToSync(): Update LM files: File\'s TS="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mTimestamp:J

    cmp-long v3, v4, v0

    if-nez v3, :cond_2

    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareToSync(): No change of LM files: mTimeStamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mTimestamp:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareToSync():LM files isn\'t exist.: File\'s TS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public prepareToUpSyncFile()V
    .locals 2

    const-string v0, "SamsungIME_SYNC"

    const-string v1, "[Step 1 prepareToUpSyncFile] : extract Word List"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->extractWordList()V

    const-string v0, "SamsungIME_SYNC"

    const-string v1, "[Step 2 prepareToUpSyncFile] : prepare Zip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->prepareZip()V

    const-string v0, "SamsungIME_SYNC"

    const-string v1, "[Step 3 prepareToUpSyncFile] : Zip files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->zipFiles()Z

    invoke-direct {p0}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->deleteExceptionFileIfExist()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->delteTemporaryZipFiles()Z

    return-void
.end method

.method public prepareZip()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v1}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->getZipEngineDirectory()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v2}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->getZipWorkDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->prepareZip(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public saveDeletedBit()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mContext:Landroid/content/Context;

    const-string v3, "SipSyncData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "deleted"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mDeleted:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveDirtyBit()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mContext:Landroid/content/Context;

    const-string v3, "SipSyncData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "dirty"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mDirty:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveSyncItem()V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mContext:Landroid/content/Context;

    const-string v3, "SipSyncData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "sync_key"

    iget-object v3, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncKey:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "timestamp"

    iget-wide v4, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mTimestamp:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "prev_synctime"

    iget-wide v4, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mPrevSyncTime:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "localId"

    iget v3, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mId:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setDeletedBit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mDeleted:Z

    return-void
.end method

.method public setDirtyBit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mDirty:Z

    return-void
.end method

.method public setNewLocalId()V
    .locals 3

    iget v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mId:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mId:I

    const-string v0, "SamsungIME_SYNC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNewLocalId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPrevSyncTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mPrevSyncTime:J

    return-void
.end method

.method public setSyncKey(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SamsungIME_SYNC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSyncKey(), New="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncKey:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mTimestamp:J

    return-void
.end method

.method public unZipFiles()Z
    .locals 9

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v6}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->getFiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const-string v6, "SamsungIME_SYNC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unZipFiles() mEngine.getFiles().size() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    iget-object v6, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v6}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->getFiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncDir:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "SamsungIME_SYNC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unZipFiles() : file is not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncDir:Ljava/io/File;

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Lcom/sec/android/inputmethod/scloudsync/ZipUtils;->unzip(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "SamsungIME_SYNC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unZipFiles() : IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public zipFiles()Z
    .locals 12

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v9}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->getZipEngineDirectory()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v9}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->getZipEngineDirectory()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncDir:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v10}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->getEngineName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v9, v4

    if-lez v9, :cond_0

    const-string v9, "SamsungIME_SYNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "zipFiles() ZIP_ENGINE_FILE_NAME :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v0}, Lcom/sec/android/inputmethod/scloudsync/ZipUtils;->zip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    iget-object v9, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v9}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->getZipWorkDirectory()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mEngine:Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;

    invoke-interface {v9}, Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;->getZipWorkDirectory()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mSyncDir:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "WordFile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v9, v4

    if-lez v9, :cond_1

    const-string v9, "SamsungIME_SYNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "zipFiles() ZIP_FILE_NAME :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v2}, Lcom/sec/android/inputmethod/scloudsync/ZipUtils;->zip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    const/4 v8, 0x1

    :goto_0
    return v8

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

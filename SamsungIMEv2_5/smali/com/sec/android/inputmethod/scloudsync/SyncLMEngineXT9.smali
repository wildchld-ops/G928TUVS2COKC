.class public Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;
.super Ljava/lang/Object;
.source "SyncLMEngineXT9.java"

# interfaces
.implements Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;


# instance fields
.field private final COPIED_SOURCE_DIR:Ljava/lang/String;

.field private final ENGINE_NAME:Ljava/lang/String;

.field private final LM_FILES:[Ljava/lang/String;

.field private final REMOVE_DB_DIR:Ljava/lang/String;

.field private final REMOVE_DB_FILES:[Ljava/lang/String;

.field private final SOURCE_DIR:Ljava/lang/String;

.field private final UPLOAD_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ZIP_ENGINE_DIR:Ljava/lang/String;

.field private final ZIP_WORK_DIR:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

.field private mRepository:Lcom/ime/framework/repository/Repository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/data/data/com.sec.android.inputmethod/app_xT9DB"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->SOURCE_DIR:Ljava/lang/String;

    const-string v0, "/data/data/com.sec.android.inputmethod/original_lm"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->COPIED_SOURCE_DIR:Ljava/lang/String;

    const-string v0, "/data/data/com.sec.android.inputmethod/databases"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->REMOVE_DB_DIR:Ljava/lang/String;

    const-string v0, "/data/data/com.sec.android.inputmethod/zipWork"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->ZIP_WORK_DIR:Ljava/lang/String;

    const-string v0, "/data/data/com.sec.android.inputmethod/zipSwiftKey"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->ZIP_ENGINE_DIR:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "xT9DLMData.dat"

    aput-object v1, v0, v3

    const-string v1, "xT9KDLMData.dat"

    aput-object v1, v0, v4

    const-string v1, "xT9UdbData.dat"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "xT9ZTUdbData.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "xT9ZHUdbData.dat"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->LM_FILES:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "XT9"

    aput-object v1, v0, v3

    const-string v1, "WordFile"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->UPLOAD_FILES:Ljava/util/List;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "RemoveListManager"

    aput-object v1, v0, v3

    const-string v1, "RemoveListManager-journal"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->REMOVE_DB_FILES:[Ljava/lang/String;

    const-string v0, "XT9"

    iput-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->ENGINE_NAME:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mRepository:Lcom/ime/framework/repository/Repository;

    iput-object v6, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iput-object p1, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public applyAddWordList()V
    .locals 0

    return-void
.end method

.method public applyRemoveWordList()V
    .locals 0

    return-void
.end method

.method public copyRemoveList(Ljava/io/File;)V
    .locals 13

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/data/com.sec.android.inputmethod/databases"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "SamsungIME_SYNC"

    const-string v11, "copyRemoveList replacement"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->REMOVE_DB_FILES:[Ljava/lang/String;

    array-length v7, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v8, v1, v4

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v10, "AddWordList_Default"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "AddWordList_Korean"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->getEngineName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "SamsungIME_SYNC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AddWordList[Discard] Current Engine="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->getEngineName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " File="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_0

    :cond_4
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    const-string v10, "SamsungIME_SYNC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AddWordList[Copy] Current Engine="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->getEngineName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " File="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move v4, v5

    :cond_6
    return-void

    :cond_7
    const-string v10, "SamsungIME_SYNC"

    const-string v11, "copyRemoveList removelistmanager-Server"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v6, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_6

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v10, "RemoveListManager"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "RemoveListManager-Server"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_8
    :goto_4
    const-string v10, "AddWordList_Default"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "AddWordList_Korean"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->getEngineName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v10, "SamsungIME_SYNC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AddWordList[Discard] Current Engine="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->getEngineName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " File="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    const-string v10, "RemoveListManager-journal"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "RemoveListManager-Server-journal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_4

    :cond_c
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    const-string v10, "SamsungIME_SYNC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AddWordList[Copy] Current Engine="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->getEngineName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " File="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public deleteAllFiles(Ljava/io/File;)Z
    .locals 5

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

.method public deleteDirectory(Ljava/lang/String;)Z
    .locals 6

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public deleteLMFiles()Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->LM_FILES:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.sec.android.inputmethod/app_xT9DB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    return v5
.end method

.method public extractWordList()Z
    .locals 12

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "AddWordList_Default"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->getEngineName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "AddWordList_Korean"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->getEngineName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v5, "none"

    const-string v6, "none"

    const/16 v7, 0xa

    iget-object v9, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v7}, Lcom/ime/framework/engine/InputEngineManager;->getEngAddedWordList(I)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v9, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v7}, Lcom/ime/framework/engine/InputEngineManager;->getEngAddedWordList(I)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    iget-object v9, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v7}, Lcom/ime/framework/engine/InputEngineManager;->getKorAddedWordList(I)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v9, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v7}, Lcom/ime/framework/engine/InputEngineManager;->getKorAddedWordList(I)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_6
    :goto_2
    if-eqz v4, :cond_b

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    move-object v1, v2

    :cond_7
    :goto_3
    const/4 v9, 0x1

    return v9

    :catch_0
    move-exception v9

    move-object v3, v4

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_8

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_8
    :goto_5
    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v9

    goto :goto_3

    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v1, :cond_9

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_9
    :goto_7
    if-eqz v3, :cond_a

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_a
    :goto_8
    throw v9

    :catch_3
    move-exception v9

    goto :goto_2

    :catch_4
    move-exception v9

    goto :goto_5

    :catch_5
    move-exception v10

    goto :goto_7

    :catch_6
    move-exception v10

    goto :goto_8

    :catchall_1
    move-exception v9

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v9

    move-object v3, v4

    move-object v1, v2

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v3, v4

    move-object v1, v2

    goto :goto_4

    :cond_b
    move-object v3, v4

    move-object v1, v2

    goto :goto_3
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.sec.android.inputmethod/app_xT9DB"

    return-object v0
.end method

.method public getEngineName()Ljava/lang/String;
    .locals 1

    const-string v0, "XT9"

    return-object v0
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->UPLOAD_FILES:Ljava/util/List;

    return-object v0
.end method

.method public getLatestUpdatedTimestamp()J
    .locals 10

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->LM_FILES:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.sec.android.inputmethod/app_xT9DB"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-lez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v6
.end method

.method public getRemovedDBDirectory()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.sec.android.inputmethod/databases"

    return-object v0
.end method

.method public getRemovedDBFiles()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->REMOVE_DB_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method public getZipEngineDirectory()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.sec.android.inputmethod/zipSwiftKey"

    return-object v0
.end method

.method public getZipWorkDirectory()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.sec.android.inputmethod/zipWork"

    return-object v0
.end method

.method public isActiveSession()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeUserData(Ljava/io/File;Ljava/io/File;)I
    .locals 14

    const-string v11, "SamsungIME_SYNC"

    const-string v12, "mergeUserData()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    if-nez v11, :cond_0

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    array-length v10, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v10, :cond_4

    aget-object v4, v0, v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "xT9DLMData.dat"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "SamsungIME_SYNC"

    const-string v12, "English DLM import on new file"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/ime/framework/engine/InputEngineManager;->importEnglishDlmFromFile(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/ime/framework/engine/InputEngineManager;->importKoreanDlmFromFile(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string v11, "xT9UdbData.dat"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "xT9ZTUdbData.dat"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "xT9ZHUdbData.dat"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    const-string v11, "SamsungIME_SYNC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Chinese UDB import on new file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/ime/framework/engine/InputEngineManager;->importChineseUDBFromFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v11, "SamsungIME_SYNC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "It\'s not XT9 engine\'s file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v11, "SamsungIME_SYNC"

    const-string v12, "mergedAddWordList()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    array-length v10, v0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_f

    aget-object v4, v0, v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const-string v11, "AddWordList_Default"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->getEngineName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v11, "SamsungIME_SYNC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Restore english add word List: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v11, v2}, Lcom/ime/framework/engine/InputEngineManager;->addMyWord(Ljava/lang/CharSequence;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_3

    :catch_0
    move-exception v3

    move-object v8, v9

    :goto_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    :goto_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "SamsungIME_SYNC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mergedAddWordList(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is deleted"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    if-eqz v9, :cond_11

    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v8, v9

    goto :goto_5

    :catch_1
    move-exception v11

    move-object v8, v9

    goto :goto_5

    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v8, :cond_8

    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_8
    :goto_8
    throw v11

    :cond_9
    const-string v11, "SamsungIME_SYNC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mergedAddWordList(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " fail to delete"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    const-string v11, "AddWordList_Korean"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->getEngineName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    :try_start_6
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_9
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v11, "SamsungIME_SYNC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Restore korean add word List: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v11, v2}, Lcom/ime/framework/engine/InputEngineManager;->addMyWord(Ljava/lang/CharSequence;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_9

    :catch_2
    move-exception v3

    move-object v8, v9

    :goto_a
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v8, :cond_b

    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_b
    :goto_b
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v11, "SamsungIME_SYNC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mergedAddWordList(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is deleted"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_c
    if-eqz v9, :cond_10

    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object v8, v9

    goto :goto_b

    :catch_3
    move-exception v11

    move-object v8, v9

    goto :goto_b

    :catchall_1
    move-exception v11

    :goto_c
    if-eqz v8, :cond_d

    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_d
    :goto_d
    throw v11

    :cond_e
    const-string v11, "SamsungIME_SYNC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mergedAddWordList(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " fail to delete"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_f
    const/4 v11, 0x1

    return v11

    :catch_4
    move-exception v11

    goto/16 :goto_5

    :catch_5
    move-exception v12

    goto/16 :goto_8

    :catch_6
    move-exception v11

    goto :goto_b

    :catch_7
    move-exception v12

    goto :goto_d

    :catchall_2
    move-exception v11

    move-object v8, v9

    goto :goto_c

    :catch_8
    move-exception v3

    goto :goto_a

    :catchall_3
    move-exception v11

    move-object v8, v9

    goto/16 :goto_7

    :catch_9
    move-exception v3

    goto/16 :goto_4

    :cond_10
    move-object v8, v9

    goto :goto_b

    :cond_11
    move-object v8, v9

    goto/16 :goto_5
.end method

.method public prepareZip(Ljava/lang/String;)Z
    .locals 10

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->LM_FILES:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.sec.android.inputmethod/app_xT9DB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v7}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/data/com.sec.android.inputmethod/databases"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v7}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    return v7
.end method

.method public prepareZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const/4 v12, 0x1

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    invoke-virtual {p0, v8}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->deleteAllFiles(Ljava/io/File;)Z

    const-string v9, "SamsungIME_SYNC"

    const-string v10, "prepareZip() for upsync files"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->LM_FILES:[Ljava/lang/String;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/data/com.sec.android.inputmethod/app_xT9DB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "SamsungIME_SYNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LM file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not exists, skip uploading"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v9, "SamsungIME_SYNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LM file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " exists, extract for uploading"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "xT9UdbData.dat"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "xT9ZTUdbData.dat"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "xT9ZHUdbData.dat"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string v9, "SamsungIME_SYNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Chinese UDB export : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/ime/framework/engine/InputEngineManager;->exportChineseUdbToFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v9, "xT9DLMData.dat"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "SamsungIME_SYNC"

    const-string v10, "English DLM export"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/ime/framework/engine/InputEngineManager;->exportEnglishDlmToFile(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/ime/framework/engine/InputEngineManager;->exportKoreanDlmToFile(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v9, "/data/data/com.sec.android.inputmethod/databases"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    invoke-virtual {p0, v7}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineXT9;->deleteAllFiles(Ljava/io/File;)Z

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    return v12

    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.class public Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;
.super Ljava/lang/Object;
.source "SipSyncClientImpl.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;


# static fields
.field static final SAMSUNGIME:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"


# instance fields
.field mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accountSignedIn(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 6

    const-string v4, "SamsungIME_SYNC"

    const-string v5, "accountSignedIn()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/32 v2, 0x15180

    const-string v4, "ro.csc.sales_code"

    const-string v5, "NONE"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_input_method"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "CHM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p2, v2, v3}, Lcom/sec/android/inputmethod/scloudsync/SipSyncProvider;->addPeriodicSync(Landroid/accounts/Account;J)V

    goto :goto_0
.end method

.method public accountSignedOut(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-direct {v1, p1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->loadSyncItem()V

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setSyncKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setPrevSyncTime(J)V

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setNewLocalId()V

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->saveSyncItem()V

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->delteLMFiles()Z

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v1, "RELOAD_LANGUAGEPACK"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountSignedOut(), clear the SyncKey info:SyncKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public complete(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;I)Z
    .locals 6

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "complete():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", LocalID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SyncKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "complete(): Created new SyncKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setSyncKey(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    iget-object v2, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setPrevSyncTime(J)V

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "complete(): Saved setPrevSyncTime= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getPrevSyncTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->saveSyncItem()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->delteTemporaryFiles()Z

    return v0

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not match SyncKey, Local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Server="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteLocal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteLocal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted Sync Key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setSyncKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setNewLocalId()V

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->saveSyncItem()V

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->delteLMFiles()Z

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setDeletedBit(Z)V

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->saveDeletedBit()V

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    iget-object v2, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setPrevSyncTime(J)V

    goto :goto_0
.end method

.method public getAttachmentFileInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v5, "SamsungIME_SYNC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAttachmentFileInfo():localId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-nez p3, :cond_1

    :cond_0
    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getTimestamp()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getUploadFileList()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SamsungIME_SYNC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAttachmentFileInfo():file="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getLocalChange(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v12, "SamsungIME_SYNC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[UpSync]-getLocalChange(), localId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v12, "syncKey"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v13}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "timestamp"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v13}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getTimestamp()J

    move-result-wide v14

    invoke-virtual {v10, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v2, p4

    array-length v11, v2

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v6, v2, v9

    new-instance v5, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v13}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncFileDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x38000000

    invoke-static {v5, v12}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "SamsungIME_SYNC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "copy attached file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v12

    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v12
.end method

.method public isSyncable(Landroid/content/Context;)Z
    .locals 4

    const-string v2, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CHM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public prepareToSync(Landroid/content/Context;[Ljava/lang/String;[J[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "[J[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "...................................."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "***** Start SIP Backup&Sync ***** prepareToSync(): "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->loadSyncItem()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local SyncKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->isDeleted()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->prepareToSync()Z

    move-result v18

    const-wide/16 v6, 0x0

    const/16 v17, 0x0

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v17, 0x1

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "Ignore the sync operation in case of SamsungIME inactive"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->isActiveSession()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v17, 0x1

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "Prediction engine session is null. Ignore this sync operations"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v8, :cond_2

    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Delete] SyncKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p2, :cond_a

    move-object/from16 v0, p2

    array-length v3, v0

    if-lez v3, :cond_a

    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    aget-object v3, p2, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    aget-wide v4, p3, v16

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-eqz v3, :cond_6

    aget-wide v4, p3, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getPrevSyncTime()J

    move-result-wide v10

    cmp-long v3, v4, v10

    if-lez v3, :cond_6

    if-eqz v17, :cond_5

    aget-wide v6, p3, v16

    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Ignore] No sync operation. Server TS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v10, p3, v16

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " local TS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v3, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v16

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    return-object v19

    :cond_4
    const-string v3, "SamsungIME_SYNC"

    const-string v4, "Local SyncKey:null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getPrevSyncTime()J

    move-result-wide v6

    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DownSync] Updated the Server\'s LM files. Server TS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v10, p3, v16

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Preve Local Sync TS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    if-eqz v17, :cond_7

    aget-wide v6, p3, v16

    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Ingore] No sync operation. Server TS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v10, p3, v16

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " local TS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    new-instance v3, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v16

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->prepareToUpSyncFile()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getTimestamp()J

    move-result-wide v6

    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to Backup the LM files to server. Server TS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v10, p3, v16

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " local TS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    :cond_9
    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getPrevSyncTime()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-lez v3, :cond_e

    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to Up-Sync, getPrevSyncTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getPrevSyncTime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-nez v17, :cond_3

    if-nez v18, :cond_b

    if-eqz v8, :cond_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setNewLocalId()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "Need to create new SyncKey"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->prepareToUpSyncFile()V

    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDeleted:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Local SyncKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", localId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getTimestamp()J

    move-result-wide v12

    const/4 v15, 0x0

    move v14, v8

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_e
    const-string v3, "SamsungIME_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SyncKeyLists.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public updateLocal(Landroid/content/Context;ILcom/samsung/android/scloud/oem/lib/sync/SyncItem;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v14, "SamsungIME_SYNC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateLocal(): Server SyncKey="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "SamsungIME_SYNC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Synck Key Error: local SyncKey="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v11

    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v14, "SamsungIME_SYNC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateLocal: toDownloadAttFileList-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v15}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getSyncFileDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v14, 0x0

    :try_start_2
    new-instance v16, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl$1;-><init>(Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;)V

    move-object/from16 v0, v16

    invoke-static {v7, v14, v15, v9, v0}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v6, v7

    move-object v8, v9

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    :goto_3
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v14

    :cond_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    array-length v14, v0

    if-lez v14, :cond_2

    move-object/from16 v2, p6

    array-length v12, v2

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v12, :cond_2

    aget-object v4, v2, v10

    const-string v14, "SamsungIME_SYNC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "toDeleteAttFile : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->size()I

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "SamsungIME_SYNC"

    const-string v15, "updateLocal(): Start mergeUserData!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->mergeUserData()I

    move-result v13

    const-string v14, "SamsungIME_SYNC"

    const-string v15, "updateLocal(): copyRemoveList!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->copyRemoveList()V

    const-string v14, "SamsungIME_SYNC"

    const-string v15, "updateLocal(): applyAddWordList!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->applyAddWordList()V

    const-string v14, "SamsungIME_SYNC"

    const-string v15, "updateLocal(): applyRemoveWordList!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->applyRemoveWordList()V

    :cond_3
    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setNewLocalId()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setSyncKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v15}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getTimestamp()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setPrevSyncTime(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->saveSyncItem()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->mLMSyncItem:Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v11

    :cond_4
    return-object v11

    :catchall_1
    move-exception v14

    move-object v8, v9

    goto/16 :goto_3

    :catchall_2
    move-exception v14

    move-object v6, v7

    move-object v8, v9

    goto/16 :goto_3

    :catch_2
    move-exception v3

    move-object v8, v9

    goto/16 :goto_2

    :catch_3
    move-exception v3

    move-object v6, v7

    move-object v8, v9

    goto/16 :goto_2

    :catch_4
    move-exception v3

    move-object v8, v9

    goto/16 :goto_1

    :catch_5
    move-exception v3

    move-object v6, v7

    move-object v8, v9

    goto/16 :goto_1
.end method

.class Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNextRequestId:I

.field private mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public allocateNewRequestId(Z)I
    .locals 5

    iget v1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    iget v2, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;-><init>()V

    iput v1, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mRequestId:I

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    :cond_0
    return v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-object v1, v0

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notifyResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V
    .locals 4

    iget v1, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {p0, v1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyResult : Could not find request information. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object p1, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z

    iget-object v1, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v6, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waitResult : Could not find request info!! id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, v3, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-boolean v6, v3, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    :try_start_1
    iget-object v6, v3, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    int-to-long v8, p2

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v6, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waitResult : Unlocked. Id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Elapsed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-object v3, v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v6, v3, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    sget-object v6, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "waitResult : e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6
.end method

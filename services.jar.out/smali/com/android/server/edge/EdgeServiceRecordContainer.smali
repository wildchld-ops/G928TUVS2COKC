.class public Lcom/android/server/edge/EdgeServiceRecordContainer;
.super Ljava/lang/Object;
.source "EdgeServiceRecordContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeServiceRecordContainer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdgeServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/edge/EdgeServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mEdgeServiceMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private lookupEdgeServiceLocked(Ljava/lang/String;)Lcom/android/server/edge/EdgeServiceRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mEdgeServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/edge/EdgeServiceRecord;

    return-object v0
.end method


# virtual methods
.method public connectEdgeService(Landroid/content/ComponentName;Lcom/samsung/android/edge/IEdgeManagerClient;)V
    .locals 6

    if-nez p1, :cond_0

    const-string v2, "EdgeServiceRecordContainer"

    const-string v3, "connectEdgeService : name is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EdgeServiceRecordContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectEdgeService : name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mEdgeServiceMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/edge/EdgeServiceRecordContainer;->lookupEdgeServiceLocked(Ljava/lang/String;)Lcom/android/server/edge/EdgeServiceRecord;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "EdgeServiceRecordContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectEdgeService : The EdgeServiceRecord("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not existed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/server/edge/EdgeServiceRecord;->setEdgeManagerClient(Lcom/samsung/android/edge/IEdgeManagerClient;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getEdgeConfiguration(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 7

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v3, "EdgeServiceRecordContainer"

    const-string/jumbo v4, "getEdgeConfiguration : name is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mEdgeServiceMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/edge/EdgeServiceRecordContainer;->lookupEdgeServiceLocked(Ljava/lang/String;)Lcom/android/server/edge/EdgeServiceRecord;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "EdgeServiceRecordContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getEdgeConfiguration : The EdgeServiceRecord("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is not existed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/edge/EdgeServiceRecord;->getEdgeConfiguration()Landroid/os/Bundle;

    move-result-object v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getEdgeService(Landroid/content/ComponentName;)Lcom/android/server/edge/EdgeServiceRecord;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "EdgeServiceRecordContainer"

    const-string/jumbo v1, "getEdgeService : name is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mEdgeServiceMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/edge/EdgeServiceRecordContainer;->lookupEdgeServiceLocked(Ljava/lang/String;)Lcom/android/server/edge/EdgeServiceRecord;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeEdgeServiceList()V
    .locals 0

    return-void
.end method

.method public notifySwipeFromEdge(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mEdgeServiceMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mEdgeServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/edge/EdgeServiceRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/edge/EdgeServiceRecord;->notifySwipeFromEdge(I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public resetActivatedService()V
    .locals 0

    return-void
.end method

.method public startEdgeService(Landroid/content/ComponentName;I)Z
    .locals 7

    if-nez p1, :cond_0

    const-string v3, "EdgeServiceRecordContainer"

    const-string/jumbo v4, "startEdgeService : name is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EdgeServiceRecordContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startEdgeService : name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mEdgeServiceMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/edge/EdgeServiceRecordContainer;->lookupEdgeServiceLocked(Ljava/lang/String;)Lcom/android/server/edge/EdgeServiceRecord;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "EdgeServiceRecordContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startEdgeService : created new EdgeServiceRecord: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/edge/EdgeServiceRecord;

    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v3, p1, p2, v5}, Lcom/android/server/edge/EdgeServiceRecord;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/Looper;)V

    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mEdgeServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.EDGE_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_1
    monitor-exit v4

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/edge/EdgeServiceRecord;->getEdgePosition()I

    move-result v3

    if-eq v3, p2, :cond_1

    invoke-virtual {v2, p2}, Lcom/android/server/edge/EdgeServiceRecord;->setEdgePosition(I)V

    invoke-virtual {v2}, Lcom/android/server/edge/EdgeServiceRecord;->notifyEdgeConfigurationChanged()V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public stopEdgeService(Landroid/content/ComponentName;I)V
    .locals 6

    if-nez p1, :cond_0

    const-string v2, "EdgeServiceRecordContainer"

    const-string/jumbo v3, "stopEdgeService : name is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EdgeServiceRecordContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopEdgeService : name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mEdgeServiceMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/edge/EdgeServiceRecordContainer;->lookupEdgeServiceLocked(Ljava/lang/String;)Lcom/android/server/edge/EdgeServiceRecord;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "EdgeServiceRecordContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopEdgeService : The EdgeServiceRecord("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not existed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/edge/EdgeServiceRecord;->isClientRegistered()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/edge/EdgeServiceRecord;->notifyDisconnect()V

    :cond_2
    iget-object v2, p0, Lcom/android/server/edge/EdgeServiceRecordContainer;->mEdgeServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

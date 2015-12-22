.class public Lcom/android/server/edge/EdgeManagerServiceImpl;
.super Lcom/samsung/android/edge/IEdgeManager$Stub;
.source "EdgeManagerServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeManagerServiceImpl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

.field private mEdgeServiceSettingManager:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

.field private mSafeMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/edge/EdgeServiceRecordContainer;

    invoke-direct {v0, p1}, Lcom/android/server/edge/EdgeServiceRecordContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    new-instance v0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    iget-object v1, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    invoke-direct {v0, p1, v1}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;-><init>(Landroid/content/Context;Lcom/android/server/edge/EdgeServiceRecordContainer;)V

    iput-object v0, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceSettingManager:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    return-void
.end method


# virtual methods
.method public connect(Landroid/content/ComponentName;Lcom/samsung/android/edge/IEdgeManagerClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EdgeManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/edge/EdgeServiceRecordContainer;->connectEdgeService(Landroid/content/ComponentName;Lcom/samsung/android/edge/IEdgeManagerClient;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEdgeComponents()[Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEdgeConfiguration(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/edge/EdgeServiceRecordContainer;->getEdgeConfiguration(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifySwipeFromEdge(I)V
    .locals 3

    const-string v0, "EdgeManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySwipeFromEdge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/edge/EdgeServiceRecordContainer;->notifySwipeFromEdge(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetActivatedService()V
    .locals 2

    const-string v0, "EdgeManagerServiceImpl"

    const-string/jumbo v1, "resetActivatedService"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    invoke-virtual {v0}, Lcom/android/server/edge/EdgeServiceRecordContainer;->resetActivatedService()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 8

    const-string v4, "EdgeManagerServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setExtra:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "extra_component_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string v4, "EdgeManagerServiceImpl"

    const-string/jumbo v5, "setExtra TestTest"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mEdgeServiceRecordContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    invoke-virtual {v4, v0}, Lcom/android/server/edge/EdgeServiceRecordContainer;->getEdgeService(Landroid/content/ComponentName;)Lcom/android/server/edge/EdgeServiceRecord;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :try_start_1
    const-string v4, "EdgeManagerServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setExtra:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/edge/EdgeServiceRecord;->notifyExtra(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_1
    :try_start_3
    const-string v4, "EdgeManagerServiceImpl"

    const-string/jumbo v6, "setExtra record is null"

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setSafeMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/edge/EdgeManagerServiceImpl;->mSafeMode:Z

    return-void
.end method

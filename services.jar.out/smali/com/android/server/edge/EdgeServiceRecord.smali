.class public Lcom/android/server/edge/EdgeServiceRecord;
.super Ljava/lang/Object;
.source "EdgeServiceRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/edge/EdgeServiceRecord$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeServiceRecord"


# instance fields
.field private mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

.field private mContext:Landroid/content/Context;

.field private mEdgePosition:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/edge/EdgeServiceRecord;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/edge/EdgeServiceRecord$MyHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/server/edge/EdgeServiceRecord$MyHandler;-><init>(Lcom/android/server/edge/EdgeServiceRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/edge/EdgeServiceRecord;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/edge/EdgeServiceRecord;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/edge/EdgeServiceRecord;->mName:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/edge/EdgeServiceRecord;->mEdgePosition:I

    return-void
.end method

.method private unlinkToDeathLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

    invoke-interface {v0}, Lcom/samsung/android/edge/IEdgeManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "EdgeServiceRecord"

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/edge/EdgeServiceRecord;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/edge/EdgeServiceRecord;->unlinkToDeathLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/edge/EdgeServiceRecord;->mName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getEdgeConfiguration()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_edge_position"

    iget v2, p0, Lcom/android/server/edge/EdgeServiceRecord;->mEdgePosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getEdgeManagerClient()Lcom/samsung/android/edge/IEdgeManagerClient;
    .locals 1

    iget-object v0, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

    return-object v0
.end method

.method public getEdgePosition()I
    .locals 1

    iget v0, p0, Lcom/android/server/edge/EdgeServiceRecord;->mEdgePosition:I

    return v0
.end method

.method public isClientRegistered()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDisconnect()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/edge/EdgeServiceRecord;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

    if-nez v1, :cond_0

    const-string v1, "EdgeServiceRecord"

    const-string/jumbo v3, "notifyDisconnect: mClient is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    const-string v1, "EdgeServiceRecord"

    const-string/jumbo v3, "notifyDisconnect"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

    invoke-interface {v1}, Lcom/samsung/android/edge/IEdgeManagerClient;->onDisconnected()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/edge/EdgeServiceRecord;->unlinkToDeathLocked()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "EdgeServiceRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyDisconnect : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public notifyEdgeConfigurationChanged()V
    .locals 7

    iget-object v4, p0, Lcom/android/server/edge/EdgeServiceRecord;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

    if-nez v3, :cond_0

    const-string v3, "EdgeServiceRecord"

    const-string/jumbo v5, "notifyEdgeConfigurationChanged: mClient is null"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/edge/EdgeServiceRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecord;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecord;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    const-string v3, "EdgeServiceRecord"

    const-string/jumbo v5, "notifyEdgeConfigurationChanged"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/edge/EdgeServiceRecord;->getEdgeConfiguration()Landroid/os/Bundle;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

    invoke-interface {v3, v0}, Lcom/samsung/android/edge/IEdgeManagerClient;->onEdgeConfigurationChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "EdgeServiceRecord"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyEdgeConfigurationChanged : e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public notifyExtra(Landroid/os/Bundle;)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/edge/EdgeServiceRecord;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

    if-nez v1, :cond_0

    const-string v1, "EdgeServiceRecord"

    const-string/jumbo v3, "notifyExtra: mClient is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    const-string v1, "EdgeServiceRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyExtra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "EdgeServiceRecord"

    const-string/jumbo v3, "notifyExtra: Call onExtraChanged"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

    invoke-interface {v1, p1}, Lcom/samsung/android/edge/IEdgeManagerClient;->onExtraChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "EdgeServiceRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyExtra : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public notifySwipeFromEdge(I)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/edge/EdgeServiceRecord;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

    if-nez v2, :cond_0

    const-string v2, "EdgeServiceRecord"

    const-string/jumbo v4, "notifySwipeFromEdge: mClient is null"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/edge/EdgeServiceRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/server/edge/EdgeServiceRecord;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/edge/EdgeServiceRecord;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/edge/EdgeServiceRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;

    invoke-interface {v2, p1}, Lcom/samsung/android/edge/IEdgeManagerClient;->onSwipeFromEdge(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EdgeServiceRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySwipeFromEdge : e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setEdgeManagerClient(Lcom/samsung/android/edge/IEdgeManagerClient;)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/edge/EdgeServiceRecord;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    const-string v1, "EdgeServiceRecord"

    const-string/jumbo v3, "setEdgeManagerClient: client is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/edge/EdgeServiceRecord;->mClient:Lcom/samsung/android/edge/IEdgeManagerClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/edge/IEdgeManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "EdgeServiceRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEdgeManagerClient : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setEdgePosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/edge/EdgeServiceRecord;->mEdgePosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/edge/EdgeServiceRecord;->mName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/edge/EdgeServiceRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

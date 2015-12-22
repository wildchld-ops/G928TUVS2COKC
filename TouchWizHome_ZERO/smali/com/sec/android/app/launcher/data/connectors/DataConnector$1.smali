.class Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;
.super Ljava/lang/Object;
.source "DataConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/connectors/DataConnector;->runLoadTask(Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

.field final synthetic val$task:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;->val$task:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;->val$task:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;

    invoke-interface {v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;->val$task:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;

    invoke-interface {v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;->onLoad()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v2, v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-boolean v1, v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCancelled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;->val$task:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;

    invoke-interface {v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v1, v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1$1;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

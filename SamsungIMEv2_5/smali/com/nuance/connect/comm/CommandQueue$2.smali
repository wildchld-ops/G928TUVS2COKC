.class Lcom/nuance/connect/comm/CommandQueue$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/comm/CommandQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "rejectedExecution"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$600(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$600(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v2}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string v3, "rejectedExecution found old command.  Resubmitting..."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->pendingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v2}, Lcom/nuance/connect/comm/CommandQueue;->access$700(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # invokes: Lcom/nuance/connect/comm/CommandQueue;->processQueue()V
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$400(Lcom/nuance/connect/comm/CommandQueue;)V

    :cond_1
    monitor-exit v1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

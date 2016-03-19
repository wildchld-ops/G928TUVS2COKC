.class Lcom/nuance/connect/comm/CommandQueue$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/ConnectorCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/comm/CommandQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultDelay()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->defaultDelaySeconds:I
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$2100(Lcom/nuance/connect/comm/CommandQueue;)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1200(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/MessageSendingBus;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/MessageSendingBus;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->requestKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$2000(Lcom/nuance/connect/comm/CommandQueue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1200(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/MessageSendingBus;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/MessageSendingBus;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAccountInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->connectionErrorHandler:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1500(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;->onAccountInvalidated()V

    return-void
.end method

.method public onCancel(Lcom/nuance/connect/comm/Command;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onCancel cmd="

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string v3, "/"

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1100(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onCancel(Lcom/nuance/connect/comm/Command;)V

    :cond_0
    return-void
.end method

.method public onDeviceInvalidated()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;
    invoke-static {v1}, Lcom/nuance/connect/comm/CommandQueue;->access$600(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;
    invoke-static {v2}, Lcom/nuance/connect/comm/CommandQueue;->access$600(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->pendingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v2}, Lcom/nuance/connect/comm/CommandQueue;->access$700(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/connect/comm/Transaction;->onTransactionRejected(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->connectionErrorHandler:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1500(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;->onDeviceInvalidated()V

    return-void
.end method

.method public onDownloadStatus(Lcom/nuance/connect/comm/Command;II)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1100(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/comm/ResponseCallback;->onDownloadStatusResponse(Lcom/nuance/connect/comm/Command;II)V

    :cond_0
    return-void
.end method

.method public onFailure(Lcom/nuance/connect/comm/Command;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onFailure cmd="

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string v3, "/"

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1100(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onFailure(Lcom/nuance/connect/comm/Command;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;
    invoke-static {v1}, Lcom/nuance/connect/comm/CommandQueue;->access$1200(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/MessageSendingBus;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONNECTION_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/comm/MessageSendingBus;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    return-void
.end method

.method public onIOException(Lcom/nuance/connect/comm/Command;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onIOException cmd="

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string v3, "/"

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1100(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 6

    const/16 v5, 0x2e

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onResponse cmd="

    iget-object v2, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v2, v2, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string v3, "/"

    iget-object v4, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v4, v4, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1100(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/nuance/connect/comm/Response;->fileLocation:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/nuance/connect/comm/Response;->fileLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lcom/nuance/connect/comm/Response;->file:Ljava/io/File;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onFileResponse(Lcom/nuance/connect/comm/Response;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    iget-object v0, v0, Lcom/nuance/connect/comm/CommandQueue;->responseListener:Lcom/nuance/connect/comm/ResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    iget-object v0, v0, Lcom/nuance/connect/comm/CommandQueue;->responseListener:Lcom/nuance/connect/comm/ResponseListener;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseListener;->onResponse(Lcom/nuance/connect/comm/Response;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onResponse(Lcom/nuance/connect/comm/Response;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->broadcastResponseEnabled:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1900(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.nuance.connect.service.ConnectClient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v2, v2, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v2, v2, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1200(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/MessageSendingBus;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/nuance/connect/comm/MessageSendingBus;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v2, "Broadcast: "

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1100(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_2

    if-lez p2, :cond_0

    move v0, p2

    :goto_0
    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v2, p1, v0, p3, p4}, Lcom/nuance/connect/comm/ResponseCallback;->onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z

    move-result v0

    move v7, v0

    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1400(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/CommandQueue$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "delay"

    if-gez p2, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "status"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "message"

    invoke-virtual {v2, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1400(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/CommandQueue$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onRetry cmd="

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string v3, "/"

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    const-string v5, " reprocess="

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->connectionErrorHandler:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1500(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;->onQueuePaused(IILjava/lang/String;)V

    return v7

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # invokes: Lcom/nuance/connect/comm/CommandQueue;->getBackdownDelay()I
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_2

    :cond_2
    move v7, v1

    goto :goto_1
.end method

.method public onSessionInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->connectionErrorHandler:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1500(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;->onSessionInvalidated()V

    return-void
.end method

.method public onSuccess(Lcom/nuance/connect/comm/Command;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onSuccess cmd="

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string v3, "/"

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$500(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->resume()V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->goodConnection:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1600(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;
    invoke-static {v1}, Lcom/nuance/connect/comm/CommandQueue;->access$1200(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/MessageSendingBus;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONNECTION_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/comm/MessageSendingBus;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # setter for: Lcom/nuance/connect/comm/CommandQueue;->goodConnection:Z
    invoke-static {v0, v6}, Lcom/nuance/connect/comm/CommandQueue;->access$1602(Lcom/nuance/connect/comm/CommandQueue;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->backdownCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1700(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # setter for: Lcom/nuance/connect/comm/CommandQueue;->backdownDelay:I
    invoke-static {v0, v5}, Lcom/nuance/connect/comm/CommandQueue;->access$1802(Lcom/nuance/connect/comm/CommandQueue;I)I

    return-void
.end method

.method public onUnlicensed(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->connectionErrorHandler:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1500(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;->onUnlicensed(I)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->pendingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$700(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public onValidateDeviceProperties(Lcom/nuance/connect/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1100(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1000(Lcom/nuance/connect/comm/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_VALIDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nuance/connect/comm/CommandQueue;->access$1000(Lcom/nuance/connect/comm/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

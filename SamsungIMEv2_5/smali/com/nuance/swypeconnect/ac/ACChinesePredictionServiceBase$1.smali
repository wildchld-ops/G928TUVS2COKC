.class Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPredictionCancel(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$000(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ChinesePredictionCallback.onPredictionCancel() predictionId="

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->trace:Lcom/nuance/connect/util/Logger$Trace;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "predictionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Logger$Trace;->exitMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Ljava/util/Set;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Ljava/util/Set;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;->onPredictionCancel(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public onPredictionFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$000(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ChinesePredictionCallback.onPredictionFailure() predictionId="

    const-string v3, " code="

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " description="

    move-object v2, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->trace:Lcom/nuance/connect/util/Logger$Trace;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "predictionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Logger$Trace;->exitMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Ljava/util/Set;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Ljava/util/Set;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;->onPredictionFailure(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public onPredictionResult(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$000(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ChinesePredictionCallback.onPredictionResult()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->trace:Lcom/nuance/connect/util/Logger$Trace;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "predictionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;->getPredictionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Logger$Trace;->exitMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;

    invoke-direct {v1, p1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$ACChinesePredictionResultImpl;-><init>(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Ljava/util/Set;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Ljava/util/Set;
    invoke-static {v3}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;->onPredictionResult(Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public onPredictionStatus(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$000(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ChinesePredictionCallback.onPredictionStatus() code="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " description="

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Ljava/util/Set;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->listCallbacks:Ljava/util/Set;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionCallback;->onPredictionStatus(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.class public abstract Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/comm/AbstractTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AbstractResponseCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/comm/AbstractTransaction;


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/comm/AbstractTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/nuance/connect/comm/Command;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    # getter for: Lcom/nuance/connect/comm/AbstractTransaction;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->access$000(Lcom/nuance/connect/comm/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancel transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/comm/AbstractTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    iget-object v0, v0, Lcom/nuance/connect/comm/AbstractTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    iget-object v0, v0, Lcom/nuance/connect/comm/AbstractTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->rollback()V

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/connect/comm/AbstractTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method

.method public onDownloadStatusResponse(Lcom/nuance/connect/comm/Command;II)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    # getter for: Lcom/nuance/connect/comm/AbstractTransaction;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->access$000(Lcom/nuance/connect/comm/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onDownloadStatusResponse "

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/connect/comm/AbstractTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    invoke-virtual {p0}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->rollback()V

    return-void
.end method

.method public onFileResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    # getter for: Lcom/nuance/connect/comm/AbstractTransaction;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->access$000(Lcom/nuance/connect/comm/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onFileResponse"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onFileResponse not overloaded (If called, this needs to be overridden)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/connect/comm/AbstractTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    invoke-virtual {p0}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->rollback()V

    return-void
.end method

.method public onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    # getter for: Lcom/nuance/connect/comm/AbstractTransaction;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->access$000(Lcom/nuance/connect/comm/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRetry transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/comm/AbstractTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " statusMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public rollback()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->rollback()V

    return-void
.end method

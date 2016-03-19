.class Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onFailure(Lcom/nuance/connect/comm/Command;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->sendFailMessage()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->access$900(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;)V

    return-void
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->sendFailMessage()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->access$900(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->subscribeResponse(Lcom/nuance/connect/comm/Response;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->access$800(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

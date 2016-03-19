.class Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/MessageSendingBus;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectivity()Lcom/nuance/connect/system/Connectivity;
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "getConnectivity()"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivity:Lcom/nuance/connect/system/Connectivity;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "getContext()"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "getDeviceId()"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "getHandler()"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->msgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$500(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getNextLicenseCheckin()Ljava/lang/Long;
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "getSessionId()"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidAccount()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "invalidAccount()"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public isLicensed()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->isLicensed()Z

    move-result v0

    return v0
.end method

.method public postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "postMessage(message)"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "postMessage(message, bundle)"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public resetDevice()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "resetDevice()"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public resetSession(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "resetSession("

    const-string v3, ")"

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "sendBroadcast()"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public sendMessageToHost(ILandroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "sendMessageToHost("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", bundle)"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[ChinesePredictionServiceInternal]"

    const-string v2, "sendMessageToHost("

    const-string v3, ", bundle)"

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

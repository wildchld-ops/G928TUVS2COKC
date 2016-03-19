.class Lcom/nuance/connect/service/ConnectClient$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "register"

    return-object v0
.end method

.method public getDeviceFamily()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "create"

    return-object v0
.end method

.method public getSessionFamily()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    return-object v0
.end method

.method public onAccountInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->invalidAccount()V

    return-void
.end method

.method public onDeviceInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iget-object v0, v0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->deregister()V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->startNextManager()V

    return-void
.end method

.method public onDeviceNotAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iget-object v0, v0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    :cond_0
    return-void
.end method

.method public onQueuePaused(IILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "delay"

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONNECTION_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSessionInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->resetSession(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iget-object v0, v0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v1, Lcom/nuance/connect/service/manager/SessionManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/SessionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/SessionManager;->createSession()V

    :cond_0
    return-void
.end method

.method public onSessionNotAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_CREATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iget-object v0, v0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v1, Lcom/nuance/connect/service/manager/SessionManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/SessionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/SessionManager;->createSession()V

    :cond_0
    return-void
.end method

.method public onUnlicensed(I)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$000(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onUnlicensed("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LICENSED_BUILD:Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LICENSED_BUILD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_SERVER_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LAST_CHECKIN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # invokes: Lcom/nuance/connect/service/ConnectClient;->calculateNextCheckin()V
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$900(Lcom/nuance/connect/service/ConnectClient;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iget-object v0, v0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v1, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/SessionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/SessionManager;->onUnlicensed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LICENSED_BUILD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_SERVER_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LAST_CHECKIN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$12;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LICENSED_BUILD:Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onValidateDeviceProperties()V
    .locals 0

    return-void
.end method

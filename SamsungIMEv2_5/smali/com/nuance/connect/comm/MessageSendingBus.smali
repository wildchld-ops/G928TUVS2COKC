.class public interface abstract Lcom/nuance/connect/comm/MessageSendingBus;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getConnectivity()Lcom/nuance/connect/system/Connectivity;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getNextLicenseCheckin()Ljava/lang/Long;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract invalidAccount()V
.end method

.method public abstract isLicensed()Z
.end method

.method public abstract postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V
.end method

.method public abstract postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V
.end method

.method public abstract resetDevice()V
.end method

.method public abstract resetSession(Ljava/lang/String;)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract sendMessageToHost(ILandroid/os/Bundle;)V
.end method

.method public abstract sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V
.end method

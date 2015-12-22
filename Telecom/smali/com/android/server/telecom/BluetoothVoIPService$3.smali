.class Lcom/android/server/telecom/BluetoothVoIPService$3;
.super Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;
.source "BluetoothVoIPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothVoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/BluetoothVoIPService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothVoIPService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-direct {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public answerCall()Z
    .locals 3

    const-string v0, "BluetoothVoIPService"

    const-string v1, "BT - answering call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->sendSynchronousRequest(I)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public cdmaSetSecondCallState(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BluetoothVoIPService"

    const-string v1, "cdma 1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BluetoothVoIPService"

    const-string v1, "cdma 2"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    const-string v0, "BluetoothVoIPService"

    const-string v1, "getDeviceId()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothPhoneService:Lcom/android/server/telecom/BluetoothPhoneService;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$400(Lcom/android/server/telecom/BluetoothVoIPService;)Lcom/android/server/telecom/BluetoothPhoneService;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 3

    const-string v0, "BluetoothVoIPService"

    const-string v1, "getNetworkOperator"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x5

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->sendSynchronousRequest(I)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    const-string v0, "BluetoothVoIPService"

    const-string v1, "getSubscriberId()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothPhoneService:Lcom/android/server/telecom/BluetoothPhoneService;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$400(Lcom/android/server/telecom/BluetoothVoIPService;)Lcom/android/server/telecom/BluetoothPhoneService;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberNumber()Ljava/lang/String;
    .locals 3

    const-string v0, "BluetoothVoIPService"

    const-string v1, "getSubscriberNumber"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/16 v1, 0x8

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->sendSynchronousRequest(I)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public handleVoipCallStateChange()V
    .locals 3

    const-string v0, "BluetoothVoIPService"

    const-string v1, "queryPhoneState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x7

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->sendSynchronousRequest(I)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;

    return-void
.end method

.method public hangupCall()Z
    .locals 3

    const-string v0, "BluetoothVoIPService"

    const-string v1, "BT - hanging up call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->sendSynchronousRequest(I)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isExistVoipCall()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Lcom/android/server/telecom/BluetoothVoIPService;->foregroundVoIPCall:I

    if-eqz v2, :cond_0

    sget v2, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    if-eq v2, v1, :cond_0

    sget v2, Lcom/android/server/telecom/BluetoothVoIPService;->ringingVoIPCall:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v2, "BluetoothVoIPService"

    const-string v3, "VoIP Call exist"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v1, "BluetoothVoIPService"

    const-string v2, "VoIP Call doesn\'t exist"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isVoipHolding()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    if-ne v2, v0, :cond_0

    const-string v2, "BluetoothVoIPService"

    const-string v3, "Voip Call is ON_HOLD"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const-string v0, "BluetoothVoIPService"

    const-string v2, "Voip Call is not ON_HOLD"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method public listCurrentCalls()Z
    .locals 3

    const-string v0, "BluetoothVoIPService"

    const-string v1, "listcurrentCalls"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x6

    const/4 v2, 0x1

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->sendSynchronousRequest(II)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1400(Lcom/android/server/telecom/BluetoothVoIPService;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public processChld(I)Z
    .locals 5

    const-string v0, "BluetoothVoIPService"

    const-string v1, "processChld %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->sendSynchronousRequest(II)Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1400(Lcom/android/server/telecom/BluetoothVoIPService;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public queryPhoneState()Z
    .locals 3

    const-string v0, "BluetoothVoIPService"

    const-string v1, "queryPhoneState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x7

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->sendSynchronousRequest(I)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public sendDtmf(I)Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "BluetoothVoIPService"

    const-string v1, "sendDtmf : VoIP does not support DTMF"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    return v3
.end method

.method public updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BluetoothVoIPService"

    const-string v1, "RAT change"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

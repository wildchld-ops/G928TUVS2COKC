.class Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field interfaceUpRecvd:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    const/4 v6, 0x0

    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "SM in ConnectedState state : Entered ConnectedState "

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM start periodic DPD timer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v2, 0xf

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isUseAlarm()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->setAlarm(J)V
    invoke-static {v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4400(Lcom/sec/epdg/IPSecDataConnSM;J)V

    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v2, 0xb

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    iput-boolean v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1, v6}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in ConnectedState state : Exiting ConnectedState "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$4500(Lcom/sec/epdg/IPSecDataConnSM;I)V

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xf

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$4600(Lcom/sec/epdg/IPSecDataConnSM;I)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isUseAlarm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->cancelAlarm()V
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$4700(Lcom/sec/epdg/IPSecDataConnSM;)V

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13

    const/16 v12, 0xb

    const/16 v11, 0xf

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$4800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v4

    :pswitch_1
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "[IPSECDATACONNSM]"

    const-string v6, "Ignoring the time out  message as this is a handover request. Mobile Interface is already up."

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    if-ne v9, v5, :cond_2

    const-string v5, "[IPSECDATACONNSM]"

    const-string v6, "Initial attach scenario. Mobile Interface is already up. Ignoring the timeout message. NO action needed"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$4900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "RIL ISSUE -- Interface up event not recevied for Initial attach to ePDG. Attempting to tear down control path."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending IWLAN Disconnect Request to Epdgservice for cid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$5000(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    const/16 v5, 0x29

    iput v5, v3, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v5

    iput v5, v3, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/os/AsyncResult;

    new-instance v6, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-direct {v5, v10, v6, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_2
    const-string v5, "[IPSECDATACONNSM]"

    const-string/jumbo v6, "send DPD message"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->checkConnection()V
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$5100(Lcom/sec/epdg/IPSecDataConnSM;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isUseAlarm()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v5, v11}, Lcom/sec/epdg/IPSecDataConnSM;->access$5200(Lcom/sec/epdg/IPSecDataConnSM;I)V

    :cond_3
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    if-lez v0, :cond_0

    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM start periodic DPD timer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    mul-int/lit16 v6, v0, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, v11, v6, v7}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isUseAlarm()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v6, v0, 0x1

    int-to-long v6, v6

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->setAlarm(J)V
    invoke-static {v5, v6, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$4400(Lcom/sec/epdg/IPSecDataConnSM;J)V

    goto/16 :goto_0

    :pswitch_3
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Disconnection Happened, this is critical failure."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataPathFromAppEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v6, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v5, v8, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    :cond_4
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$5400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Duplicate L2W handover request is received. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Notifying registrants accordingly."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v5, v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v5, v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    goto/16 :goto_0

    :pswitch_6
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Disconnection Request Received"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v5, v12}, Lcom/sec/epdg/IPSecDataConnSM;->access$5700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v5, v11}, Lcom/sec/epdg/IPSecDataConnSM;->access$5800(Lcom/sec/epdg/IPSecDataConnSM;I)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isUseAlarm()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->cancelAlarm()V
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$4700(Lcom/sec/epdg/IPSecDataConnSM;)V

    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataPathFromAppEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v6, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v5, v8, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    :cond_6
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_0

    :pswitch_7
    iput-boolean v9, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v5, v12}, Lcom/sec/epdg/IPSecDataConnSM;->access$5900(Lcom/sec/epdg/IPSecDataConnSM;I)V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v6, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v5, v9, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    move-result v1

    if-ne v9, v1, :cond_0

    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending IWLAN Disconnect Request to Epdgservice for cid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "as Data path route addition failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$5000(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    const/16 v5, 0x29

    iput v5, v2, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v2, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/os/AsyncResult;

    new-instance v6, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v6, v7}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-direct {v5, v10, v6, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v6, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v5, v8, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    goto/16 :goto_0

    :pswitch_8
    const-string v5, "[IPSECDATACONNSM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SM Current State"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$6000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Unexpected event"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

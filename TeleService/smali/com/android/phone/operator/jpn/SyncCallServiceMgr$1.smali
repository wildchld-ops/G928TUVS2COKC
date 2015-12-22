.class Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;
.super Landroid/os/Handler;
.source "SyncCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$500(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->onPhoneStateChanged()V
    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$000(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$100(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # setter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v1, "com.kddi.agent.action.PLUS_CALL_CONDITION"

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$300(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v1, "ACTION_PLUS_CALL_CONDITION true"

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$400(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # setter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # setter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v1, "com.kddi.agent.action.PLUS_CALL_CONDITION"

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$300(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v1, "ACTION_PLUS_CALL_CONDITION false"

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$400(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # setter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # setter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v1, "com.kddi.agent.action.STATUS_BAR_CONDITION"

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$300(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # setter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # setter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v1, "com.kddi.agent.action.STATUS_BAR_CONDITION"

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$300(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # setter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # setter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v1, "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$300(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # setter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # setter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v1, "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$300(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # setter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;
    invoke-static {v0, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

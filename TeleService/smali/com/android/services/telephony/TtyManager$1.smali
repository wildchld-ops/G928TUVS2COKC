.class Lcom/android/services/telephony/TtyManager$1;
.super Landroid/os/Handler;
.source "TtyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TtyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TtyManager;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TtyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1    # Landroid/os/Message;

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlemessage() msg.what : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v5, "got setTtyMode response"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v5, "setTTYMode exception: %s"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    aput-object v7, v6, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/services/telephony/TtyManager;->access$100(Lcom/android/services/telephony/TtyManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {p0, v10}, Lcom/android/services/telephony/TtyManager$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v5, "got queryTTYMode response"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v5, "queryTTYMode exception: %s"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v4, v4, v9

    # invokes: Lcom/android/services/telephony/TtyManager;->phoneModeToTelecomMode(I)I
    invoke-static {v4}, Lcom/android/services/telephony/TtyManager;->access$200(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mTtyMode:I
    invoke-static {v4}, Lcom/android/services/telephony/TtyManager;->access$300(Lcom/android/services/telephony/TtyManager;)I

    move-result v4

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v5, "setting TTY mode failed, attempted %d, got: %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mTtyMode:I
    invoke-static {v7}, Lcom/android/services/telephony/TtyManager;->access$300(Lcom/android/services/telephony/TtyManager;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v5, "setting TTY mode to %d succeeded"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v5, "Service state is changed"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/services/telephony/TtyManager;->access$100(Lcom/android/services/telephony/TtyManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlemessage : MSG_SERVICE_STATE_CHANGED , currentState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPrevStateMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mPrevStateMode:I
    invoke-static {v6}, Lcom/android/services/telephony/TtyManager;->access$400(Lcom/android/services/telephony/TtyManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mPrevStateMode:I
    invoke-static {v4}, Lcom/android/services/telephony/TtyManager;->access$400(Lcom/android/services/telephony/TtyManager;)I

    move-result v4

    if-ne v4, v11, :cond_4

    if-eq v1, v11, :cond_4

    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v5, "update ttymode for modem state"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/services/telephony/TtyManager;->access$500(Lcom/android/services/telephony/TtyManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v3

    :cond_3
    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/services/telephony/TtyManager;->access$100(Lcom/android/services/telephony/TtyManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/services/telephony/TtyManager;->access$600(Lcom/android/services/telephony/TtyManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # invokes: Lcom/android/services/telephony/TtyManager;->updateTtyMode(I)V
    invoke-static {v4, v3}, Lcom/android/services/telephony/TtyManager;->access$700(Lcom/android/services/telephony/TtyManager;I)V

    :cond_4
    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    iget-object v5, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/services/telephony/TtyManager;->access$100(Lcom/android/services/telephony/TtyManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    # setter for: Lcom/android/services/telephony/TtyManager;->mPrevStateMode:I
    invoke-static {v4, v5}, Lcom/android/services/telephony/TtyManager;->access$402(Lcom/android/services/telephony/TtyManager;I)I

    goto/16 :goto_0

    :pswitch_3
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/services/telephony/TtyManager;->access$500(Lcom/android/services/telephony/TtyManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v3

    :cond_5
    iget-object v4, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # invokes: Lcom/android/services/telephony/TtyManager;->updateTtyMode(I)V
    invoke-static {v4, v3}, Lcom/android/services/telephony/TtyManager;->access$700(Lcom/android/services/telephony/TtyManager;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/android/server/telecom/secutils/ErrorDialog$1;
.super Landroid/os/Handler;
.source "ErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/ErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/ErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # invokes: Lcom/android/server/telecom/secutils/ErrorDialog;->startCallAgain()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$000(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "ErrorDialog"

    const-string v1, "IMS_REGISTRATION_TIMER_VT "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    const-string v0, "ErrorDialog"

    const-string v1, "IMS_REGISTRATION_TIMER_VOLTE "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_3
    const-string v0, "ErrorDialog"

    const-string v1, "SIM_STATE_READY_TIMER"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # invokes: Lcom/android/server/telecom/secutils/ErrorDialog;->isSimReady()Z
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$200(Lcom/android/server/telecom/secutils/ErrorDialog;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ErrorDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM is not ready.. send again : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$300(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$1;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # invokes: Lcom/android/server/telecom/secutils/ErrorDialog;->startCallAgain()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$000(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

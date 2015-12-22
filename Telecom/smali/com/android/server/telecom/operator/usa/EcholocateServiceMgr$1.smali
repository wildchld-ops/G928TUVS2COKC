.class Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$1;
.super Landroid/os/Handler;
.source "EcholocateServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$1;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

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

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$000(Ljava/lang/String;)V

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

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$000(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$1;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    const-string v1, "diagandroid.phone.detailedCallState"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$1;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getBundle(Landroid/os/Message;)Landroid/os/Bundle;
    invoke-static {v2, p1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$100(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Landroid/os/Message;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$200(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$1;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    const-string v1, "diagandroid.phone.UICallState"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$1;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getBundle(Landroid/os/Message;)Landroid/os/Bundle;
    invoke-static {v2, p1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$100(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Landroid/os/Message;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$200(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$1;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    const-string v1, "diagandroid.CallSetting"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$1;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getBundle(Landroid/os/Message;)Landroid/os/Bundle;
    invoke-static {v2, p1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$100(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Landroid/os/Message;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$200(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

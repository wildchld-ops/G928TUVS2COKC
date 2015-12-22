.class Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "ExtensionBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHandler : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;

    # invokes: Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->getIntent(Landroid/os/Message;)Landroid/content/Intent;
    invoke-static {v1, p1}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->access$000(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->handleHdvoiceCall(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->access$100(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;

    # invokes: Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->getIntent(Landroid/os/Message;)Landroid/content/Intent;
    invoke-static {v1, p1}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->access$000(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->handleHdvoiceCall(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->access$100(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x1233 -> :sswitch_0
    .end sparse-switch
.end method

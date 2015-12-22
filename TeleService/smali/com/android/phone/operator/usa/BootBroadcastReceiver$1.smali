.class Lcom/android/phone/operator/usa/BootBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "BootBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/BootBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/BootBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/BootBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver$1;->this$0:Lcom/android/phone/operator/usa/BootBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    const-string v0, "BootBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver$1;->this$0:Lcom/android/phone/operator/usa/BootBroadcastReceiver;

    # invokes: Lcom/android/phone/operator/usa/BootBroadcastReceiver;->handleBootCompleted()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->access$000(Lcom/android/phone/operator/usa/BootBroadcastReceiver;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver$1;->this$0:Lcom/android/phone/operator/usa/BootBroadcastReceiver;

    # invokes: Lcom/android/phone/operator/usa/BootBroadcastReceiver;->handleSimStateChanged()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->access$100(Lcom/android/phone/operator/usa/BootBroadcastReceiver;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "BootBroadcastReceiver"

    const-string v1, "set_preferred_network_type"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

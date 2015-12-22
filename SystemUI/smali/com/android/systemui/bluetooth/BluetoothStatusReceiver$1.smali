.class Lcom/android/systemui/bluetooth/BluetoothStatusReceiver$1;
.super Landroid/os/Handler;
.source "BluetoothStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "BluetoothStatusReceiver"

    const-string v1, "sendBroadcast :: LAUNCH_SCAN_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;

    # getter for: Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;->access$000(Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BLUETOOTH_SCAN_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

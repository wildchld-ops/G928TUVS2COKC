.class Lcom/android/server/telecom/BluetoothManager$3;
.super Landroid/os/Handler;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothManager$3;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothManager Handler : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$3;->this$0:Lcom/android/server/telecom/BluetoothManager;

    # getter for: Lcom/android/server/telecom/BluetoothManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothManager;->access$600(Lcom/android/server/telecom/BluetoothManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x6

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$3;->this$0:Lcom/android/server/telecom/BluetoothManager;

    # getter for: Lcom/android/server/telecom/BluetoothManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothManager;->access$600(Lcom/android/server/telecom/BluetoothManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->wakeUpScreen(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/server/telecom/wearable/BluetoothVendorCommand;->sendBTHeadsetInfo()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

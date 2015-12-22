.class Lcom/android/server/telecom/BluetoothManager$2;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "mReceiver: HEADSET_STATE_CHANGED_ACTION"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "==> new state: %s "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->updateBluetoothState()V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    # invokes: Lcom/android/server/telecom/BluetoothManager;->sendHeadsetInformationMessage()V
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothManager;->access$300(Lcom/android/server/telecom/BluetoothManager;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.DEVICE_TYPE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "mReceiver: HEADSET_AUDIO_STATE_CHANGED_ACTION"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "==> new state: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0xc

    if-ne v0, v2, :cond_5

    if-eq v1, v6, :cond_2

    if-ne v1, v7, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v1, p1, v5}, Lcom/android/server/telecom/BluetoothManager;->updateScreenStateForGearSound(Landroid/content/Context;Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    # setter for: Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnectionPending:Z
    invoke-static {v1, v5}, Lcom/android/server/telecom/BluetoothManager;->access$402(Lcom/android/server/telecom/BluetoothManager;Z)Z

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    # invokes: Lcom/android/server/telecom/BluetoothManager;->getCallsManager()Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothManager;->access$500(Lcom/android/server/telecom/BluetoothManager;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_8

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->updateBluetoothState()V

    goto :goto_0

    :cond_5
    if-ne v0, v8, :cond_4

    if-eq v1, v6, :cond_6

    if-ne v1, v7, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v1, p1, v6}, Lcom/android/server/telecom/BluetoothManager;->updateScreenStateForGearSound(Landroid/content/Context;Z)V

    :cond_7
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    # setter for: Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnectionPending:Z
    invoke-static {v1, v5}, Lcom/android/server/telecom/BluetoothManager;->access$402(Lcom/android/server/telecom/BluetoothManager;Z)Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->updateBluetoothState()V

    goto :goto_0
.end method

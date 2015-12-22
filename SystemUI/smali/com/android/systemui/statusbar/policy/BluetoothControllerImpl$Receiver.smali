.class final Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v10, 0x0

    const/high16 v12, -0x80000000

    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    const-string v11, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setAdapterState(I)V
    invoke-static {v8, v11}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;I)V

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "BluetoothController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_STATE_CHANGED "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z
    invoke-static {v12}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    :cond_1
    :goto_0
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v8, :cond_2

    const-string v8, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "com.samsung.bluetooth.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "android.broadcom.sap.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "android.bluetooth.action.GEAR_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    const-string v8, "android.bluetooth.aoble.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    const-string v8, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_c

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$BTConnectionDevice;

    iget-object v8, v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$BTConnectionDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v8, "BluetoothController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BT device removed. action="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$BTConnectionDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mConnectedDevList.size()="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", oldState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v9, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateBondedBluetoothDevices()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1100(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    return-void

    :cond_6
    const-string v8, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    invoke-static {v8, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v4

    const-string v8, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v12, :cond_7

    iput v6, v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionState:I

    :cond_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$702(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "BluetoothController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_CONNECTION_STATE_CHANGED "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    iget v8, v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionState:I

    if-ne v8, v9, :cond_9

    move v8, v9

    :goto_2
    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setConnecting(Z)V
    invoke-static {v11, v8}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Z)V

    goto/16 :goto_0

    :cond_9
    move v8, v10

    goto :goto_2

    :cond_a
    const-string v8, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    invoke-static {v8, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$702(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    :cond_b
    const-string v8, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "BluetoothController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_BOND_STATE_CHANGED "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    const-string v8, "BluetoothController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BT device added. action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mConnectedDevList.size()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$BTConnectionDevice;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$BTConnectionDevice;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;)V

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$BTConnectionDevice;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public register()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_0

    const-string v1, "com.samsung.bluetooth.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.broadcom.sap.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.action.GEAR_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

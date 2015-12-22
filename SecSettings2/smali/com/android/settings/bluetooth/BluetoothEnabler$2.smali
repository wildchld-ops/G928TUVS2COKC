.class Lcom/android/settings/bluetooth/BluetoothEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "BluetoothEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive:: action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z
    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$202(Lcom/android/settings/bluetooth/BluetoothEnabler;Z)Z

    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    const/4 v3, 0x1

    # setter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z
    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$202(Lcom/android/settings/bluetooth/BluetoothEnabler;Z)Z

    goto :goto_0
.end method

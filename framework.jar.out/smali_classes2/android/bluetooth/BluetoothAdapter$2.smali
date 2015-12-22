.class Landroid/bluetooth/BluetoothAdapter$2;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 3

    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    const-string v0, "BluetoothAdapter"

    const-string v1, "Bluetooth is turned off, stop adv and scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Landroid/bluetooth/BluetoothAdapter;->sShouldAllowUseOfLeApi:Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$600()Z

    move-result v0

    if-nez v0, :cond_4

    # getter for: Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$400()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$400()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAllAdvertising()V

    :cond_0
    # getter for: Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$500()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_1

    # getter for: Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$500()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopAllScan()V

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # getter for: Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$300(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # getter for: Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$300(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    # getter for: Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$400()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    if-eqz v0, :cond_3

    # getter for: Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$400()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->cleanup()V

    :cond_3
    # getter for: Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$500()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_4

    # getter for: Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$500()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->cleanup()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string v0, "BluetoothAdapter"

    const-string v1, "onBluetoothStateChange: Bluetooth is on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

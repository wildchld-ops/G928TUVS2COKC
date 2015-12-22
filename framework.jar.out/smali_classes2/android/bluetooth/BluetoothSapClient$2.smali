.class Landroid/bluetooth/BluetoothSapClient$2;
.super Ljava/lang/Object;
.source "BluetoothSapClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothSapClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSapClient;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothSapClient$2;->this$0:Landroid/bluetooth/BluetoothSapClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "BluetoothSapClient"

    const-string v1, "BluetoothSAPClient Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothSapClient$2;->this$0:Landroid/bluetooth/BluetoothSapClient;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothSapClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSapClient;

    move-result-object v1

    # setter for: Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothSapClient;->access$102(Landroid/bluetooth/BluetoothSapClient;Landroid/bluetooth/IBluetoothSapClient;)Landroid/bluetooth/IBluetoothSapClient;

    iget-object v0, p0, Landroid/bluetooth/BluetoothSapClient$2;->this$0:Landroid/bluetooth/BluetoothSapClient;

    # getter for: Landroid/bluetooth/BluetoothSapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothSapClient;->access$300(Landroid/bluetooth/BluetoothSapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothSapClient$2;->this$0:Landroid/bluetooth/BluetoothSapClient;

    # getter for: Landroid/bluetooth/BluetoothSapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothSapClient;->access$300(Landroid/bluetooth/BluetoothSapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x13

    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient$2;->this$0:Landroid/bluetooth/BluetoothSapClient;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "BluetoothSapClient"

    const-string v1, "BluetoothSAPClient Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothSapClient$2;->this$0:Landroid/bluetooth/BluetoothSapClient;

    const/4 v1, 0x0

    # setter for: Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothSapClient;->access$102(Landroid/bluetooth/BluetoothSapClient;Landroid/bluetooth/IBluetoothSapClient;)Landroid/bluetooth/IBluetoothSapClient;

    iget-object v0, p0, Landroid/bluetooth/BluetoothSapClient$2;->this$0:Landroid/bluetooth/BluetoothSapClient;

    # getter for: Landroid/bluetooth/BluetoothSapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothSapClient;->access$300(Landroid/bluetooth/BluetoothSapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothSapClient$2;->this$0:Landroid/bluetooth/BluetoothSapClient;

    # getter for: Landroid/bluetooth/BluetoothSapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothSapClient;->access$300(Landroid/bluetooth/BluetoothSapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_0
    return-void
.end method

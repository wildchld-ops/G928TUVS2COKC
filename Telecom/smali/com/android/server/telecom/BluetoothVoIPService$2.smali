.class Lcom/android/server/telecom/BluetoothVoIPService$2;
.super Ljava/lang/Object;
.source "BluetoothVoIPService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothVoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/BluetoothVoIPService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothVoIPService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothVoIPService$2;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$2;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/server/telecom/BluetoothVoIPService;->access$802(Lcom/android/server/telecom/BluetoothVoIPService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$2;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$802(Lcom/android/server/telecom/BluetoothVoIPService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method

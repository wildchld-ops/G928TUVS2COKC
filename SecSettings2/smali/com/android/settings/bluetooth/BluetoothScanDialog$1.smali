.class Lcom/android/settings/bluetooth/BluetoothScanDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothScanDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothScanDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    :cond_0
    return-void
.end method

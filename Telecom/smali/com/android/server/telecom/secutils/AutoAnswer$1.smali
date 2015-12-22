.class Lcom/android/server/telecom/secutils/AutoAnswer$1;
.super Ljava/lang/Object;
.source "AutoAnswer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/AutoAnswer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/AutoAnswer;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/AutoAnswer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/AutoAnswer$1;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer$1;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$002(Lcom/android/server/telecom/secutils/AutoAnswer;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    const-string v0, "AutoAnswer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Got BluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/AutoAnswer$1;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    # getter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$000(Lcom/android/server/telecom/secutils/AutoAnswer;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer$1;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    # getter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$000(Lcom/android/server/telecom/secutils/AutoAnswer;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer$1;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    # getter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$000(Lcom/android/server/telecom/secutils/AutoAnswer;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "answeringmode_auto_time"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/AutoAnswer$1;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    # invokes: Lcom/android/server/telecom/secutils/AutoAnswer;->startAutoAnswer(J)V
    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$100(Lcom/android/server/telecom/secutils/AutoAnswer;J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer$1;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    # getter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$000(Lcom/android/server/telecom/secutils/AutoAnswer;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer$1;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    # getter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$200(Lcom/android/server/telecom/secutils/AutoAnswer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/AutoAnswer$1;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    # getter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$000(Lcom/android/server/telecom/secutils/AutoAnswer;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer$1;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$002(Lcom/android/server/telecom/secutils/AutoAnswer;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer$1;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$002(Lcom/android/server/telecom/secutils/AutoAnswer;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method

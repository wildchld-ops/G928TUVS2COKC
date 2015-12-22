.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;
.super Landroid/os/CountDownTimer;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const/4 v2, 0x1

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIdleStartCnt:I
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3400()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->noDeviceLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addNoDeviceLayout()V
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIdleTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->hideProgressBar(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->triggerFullScan(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->triggerFullScan(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

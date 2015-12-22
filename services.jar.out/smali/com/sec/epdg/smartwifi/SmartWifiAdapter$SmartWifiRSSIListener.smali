.class final Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;
.super Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartWifiRSSIListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 4

    const-string/jumbo v1, "newRssi"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi RSSI intent received -- newRssi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 6

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z
    invoke-static {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isCaptivePortalAuthenticated(Z)Z
    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "[SMARTWIFI]"

    const-string v4, "Captive portal is now authenticated"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;
    invoke-static {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->clearReadings()V

    :cond_1
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;
    invoke-static {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x5

    invoke-static {v2, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->addReading(Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_2
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unauthenticated captive portal -- drop RSSI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isFunnyRssi(I)Z
    invoke-static {v3, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wifi RSSI dropped (out of range) -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

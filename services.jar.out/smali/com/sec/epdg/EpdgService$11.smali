.class Lcom/sec/epdg/EpdgService$11;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 11

    move-object v1, p1

    check-cast v1, Landroid/content/Intent;

    const-string/jumbo v7, "wifi_call_enable"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v7, "wifi_call_preferred"

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WiFiCallEnable value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    :cond_0
    const-string v7, "[EPDGService]"

    const-string v8, "WifiCall is disabled"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "ro.csc.sales_code"

    const-string/jumbo v8, "none"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "EVR"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->access$2200(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v7, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$2400(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v7, v8}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    const/4 v7, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$300(Z)V

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$1600(Lcom/sec/epdg/EpdgService;)Z

    move-result v7

    if-eqz v7, :cond_1

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;
    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->access$2500(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v7, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v8, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiCallingState:I
    invoke-static {v7, v8}, Lcom/sec/epdg/EpdgService;->access$2602(Lcom/sec/epdg/EpdgService;I)I

    :goto_1
    return-void

    :cond_2
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->access$2300(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const-string v7, "[EPDGService]"

    const-string v8, "WifiCall is enabled"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Landroid/net/ConnectivityManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v8, 0x1

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v7, v8}, Lcom/sec/epdg/EpdgService;->access$2802(Lcom/sec/epdg/EpdgService;I)I

    :cond_4
    iget-object v7, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v8, 0x1

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiCallingState:I
    invoke-static {v7, v8}, Lcom/sec/epdg/EpdgService;->access$2602(Lcom/sec/epdg/EpdgService;I)I

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$1500(Lcom/sec/epdg/EpdgService;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiConnected()V
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$2900(Lcom/sec/epdg/EpdgService;)V

    :cond_5
    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->CSPREPERRED_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    :goto_2
    if-eqz v2, :cond_6

    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "ims"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "mms"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "xcap"

    aput-object v8, v0, v7

    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "prefered Order for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v7

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v0, v2}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    :cond_6
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;
    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->access$2500(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-result-object v8

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$11;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;
    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->access$2500(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-result-object v8

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_7
    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLANONLY:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto :goto_2

    :cond_8
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLANPREFERRED_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto :goto_2
.end method

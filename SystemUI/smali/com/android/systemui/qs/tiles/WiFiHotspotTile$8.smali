.class Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;
.super Ljava/lang/Object;
.source "WiFiHotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showWarningDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    const/4 v3, 0x3

    # invokes: Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;->val$state:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    # invokes: Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->setMode(I)V
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$1300(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSetDefaultSSID:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$1400(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ""

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->generateDefaultSSID(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v2, v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$1500(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

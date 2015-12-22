.class Lcom/android/settings/wifi/mobileap/WifiApWarning$30;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiIBSSState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V
    invoke-static {v2, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

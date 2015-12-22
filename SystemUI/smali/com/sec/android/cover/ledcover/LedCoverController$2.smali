.class Lcom/sec/android/cover/ledcover/LedCoverController$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledcover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/ledcover/LedCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/ledcover/LedCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$2;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerConnectionUpdate(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$2;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/sec/android/cover/ledcover/LedCoverController;->isBatteryCharging:Z
    invoke-static {v1, v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$402(Lcom/sec/android/cover/ledcover/LedCoverController;Z)Z

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController$2;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendBatteryChargingInformation(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController$2;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/LedCoverController;->updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    invoke-static {v0, p1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$300(Lcom/sec/android/cover/ledcover/LedCoverController;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

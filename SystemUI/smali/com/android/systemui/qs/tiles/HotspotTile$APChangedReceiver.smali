.class public Lcom/android/systemui/qs/tiles/HotspotTile$APChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APChangedReceiver"
.end annotation


# instance fields
.field private mUsageTracker:Lcom/android/systemui/qs/UsageTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$APChangedReceiver;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    if-nez v0, :cond_0

    # invokes: Lcom/android/systemui/qs/tiles/HotspotTile;->newUsageTracker(Landroid/content/Context;)Lcom/android/systemui/qs/UsageTracker;
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$300(Landroid/content/Context;)Lcom/android/systemui/qs/UsageTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$APChangedReceiver;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$APChangedReceiver;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0}, Lcom/android/systemui/qs/UsageTracker;->trackUsage()V

    return-void
.end method

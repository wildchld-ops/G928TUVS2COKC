.class public Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
.super Ljava/lang/Object;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryStatus"
.end annotation


# instance fields
.field public final batteryOnline:I

.field public final health:I

.field public final level:I

.field public final plugged:I

.field public final status:I

.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    iput v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    iput v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    iput v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    iput v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->health:I

    iput v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->batteryOnline:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "status"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    const-string v0, "plugged"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    const-string v0, "level"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    const-string v0, "health"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->health:I

    const-string v0, "online"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->batteryOnline:I

    goto :goto_0
.end method


# virtual methods
.method public isBatteryLow()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCharged()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastCharging()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->batteryOnline:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPluggedIn()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWirelssCharged()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWirelssFastCharged()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->batteryOnline:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "status=%d / plugged=%d / level=%d / health=%d / batteryOnline=%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->health:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->batteryOnline:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

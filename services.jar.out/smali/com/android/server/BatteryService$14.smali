.class Lcom/android/server/BatteryService$14;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->InitBatteryInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfo:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v2, "!@[BatteryInfo] InitBatteryInfo()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/BatteryService;->readBatteryInfo(I)J
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;I)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mBatteryMaxTemp:J
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->access$2302(Lcom/android/server/BatteryService;J)J

    iget-object v0, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/BatteryService;->readBatteryInfo(I)J
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;I)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->access$2502(Lcom/android/server/BatteryService;J)J

    iget-object v0, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    const/4 v3, 0x4

    # invokes: Lcom/android/server/BatteryService;->readBatteryInfo(I)J
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;I)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mBatteryAsocNow:J
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->access$2602(Lcom/android/server/BatteryService;J)J

    iget-object v0, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryAsocNow:J
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2600(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x3

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(I)V
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(I)V
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;I)V

    iget-object v0, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(I)V
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class Lcom/android/server/power/PowerManagerService$BinderService$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$BinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$BinderService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # -= operator for: Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$10720(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$10800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$10700(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$10802(Lcom/android/server/power/PowerManagerService;Z)Z

    :goto_0
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] setClearViewBrightnessMode(Runnable) : enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v4, v4, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$10800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$10800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v3, 0x20

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$1976(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;)V

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$10802(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

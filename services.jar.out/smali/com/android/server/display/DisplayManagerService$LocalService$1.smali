.class Lcom/android/server/display/DisplayManagerService$LocalService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayManagerService$LocalService;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mRequestDisplayStateRunnable:Ljava/lang/Runnable;

.field final synthetic this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

.field final synthetic val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/DisplayManagerService$LocalService$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$LocalService$1$1;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->mRequestDisplayStateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/display/DisplayManagerService$LocalService$1;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$LocalService$1;->requestDesiredDisplayState(II)V

    return-void
.end method

.method private getDesiredDisplayIdBitAndRequestingState(II)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDesiredDisplayIdBitAndRequestingState : ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "| IdBit= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method private requestDesiredDisplayState(II)V
    .locals 2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onSetInteractiveNeeded(II)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(I)V
    invoke-static {v0, p2}, Lcom/android/server/display/DisplayManagerService;->access$4300(Lcom/android/server/display/DisplayManagerService;I)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4400(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->setActualDisplayState(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(II)V

    if-eq p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(I)V
    invoke-static {v0, p2}, Lcom/android/server/display/DisplayManagerService;->access$4300(Lcom/android/server/display/DisplayManagerService;I)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4400(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->setActualDisplayState(II)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onSetInteractiveNeeded(II)V

    :cond_1
    return-void
.end method

.method private requestDisplayStateLocked(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mLockDisplayBlanker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$3800(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingState:I
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$3900(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingID:I
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4000(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingID:I
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4000(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/display/DisplayManagerService$LocalService$1;->getDesiredDisplayIdBitAndRequestingState(II)I

    move-result v2

    # setter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mDisplayIdBit:I
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4102(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # setter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingState:I
    invoke-static {v0, p2}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$3902(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4200(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$LocalService$1;->sendRequestDisplayStateLocked()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # setter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingID:I
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4002(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private sendRequestDisplayStateLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mPendingrequestDisplayState:Z
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4500(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/DisplayManagerService;->mPendingrequestDisplayState:Z
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayManagerService;->access$4502(Lcom/android/server/display/DisplayManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4600(Lcom/android/server/display/DisplayManagerService$LocalService;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4700(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->mRequestDisplayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public requestDisplayState(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService$1;->requestDisplayState(II)V

    return-void
.end method

.method public requestDisplayState(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$LocalService$1;->requestDisplayStateLocked(II)V

    return-void
.end method

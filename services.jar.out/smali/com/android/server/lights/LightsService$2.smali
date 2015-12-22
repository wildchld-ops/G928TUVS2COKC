.class Lcom/android/server/lights/LightsService$2;
.super Landroid/os/HandlerThread;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    new-instance v3, Lcom/android/server/lights/LightsService$SvcLEDHandler;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v5, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v5}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/lights/LightsService$SvcLEDHandler;-><init>(Lcom/android/server/lights/LightsService;Landroid/os/Looper;)V

    # setter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->access$802(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDHandler;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z
    invoke-static {v3, v4}, Lcom/android/server/lights/LightsService;->access$1502(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v3, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    iget-object v3, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$1600(Lcom/android/server/lights/LightsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    const v4, 0x11200bd

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    # setter for: Lcom/android/server/lights/LightsService;->mUsePatternLED:Z
    invoke-static {v3, v4}, Lcom/android/server/lights/LightsService;->access$002(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v3, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    const v4, 0x1120023

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    # setter for: Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v3, v4}, Lcom/android/server/lights/LightsService;->access$1702(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v3, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$1700(Lcom/android/server/lights/LightsService;)Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/server/lights/LightsService;->NOVEL_PROJECT:Z
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$1800()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z
    invoke-static {v3, v4}, Lcom/android/server/lights/LightsService;->access$1902(Lcom/android/server/lights/LightsService;Z)Z

    :cond_0
    # getter for: Lcom/android/server/lights/LightsService;->model:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$2000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SPH-D710"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    # getter for: Lcom/android/server/lights/LightsService;->model:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$2000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SCH-R760"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    # getter for: Lcom/android/server/lights/LightsService;->model:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$2000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SPH-M830"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    # getter for: Lcom/android/server/lights/LightsService;->model:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$2000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SPH-M950"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z
    invoke-static {v3, v4}, Lcom/android/server/lights/LightsService;->access$1902(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v3, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/lights/LightsService;->mUsePatternLED:Z
    invoke-static {v3, v4}, Lcom/android/server/lights/LightsService;->access$002(Lcom/android/server/lights/LightsService;Z)Z

    :cond_2
    iget-object v3, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z
    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$1900(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v1, 0x2bc

    :cond_3
    # setter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v3, v1}, Lcom/android/server/lights/LightsService;->access$902(Lcom/android/server/lights/LightsService;I)I

    const-string v1, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SvcLED] SUPPORT_LED_INDICATOR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mUseSoftwareAutoBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$1700(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mUseLEDAutoBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z
    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$1900(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mDelayForcedSvcLEDTask : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mUsePatternLED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUsePatternLED:Z
    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

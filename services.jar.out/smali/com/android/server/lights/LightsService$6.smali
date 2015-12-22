.class Lcom/android/server/lights/LightsService$6;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v0, v1

    const-string v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED]  onSensorChanged::light value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;Z)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V
    invoke-static {v1, v0}, Lcom/android/server/lights/LightsService;->access$2800(Lcom/android/server/lights/LightsService;I)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$3000(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$2900(Lcom/android/server/lights/LightsService;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLedState:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$1200()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$3000(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$3100(Lcom/android/server/lights/LightsService;)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$2900(Lcom/android/server/lights/LightsService;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

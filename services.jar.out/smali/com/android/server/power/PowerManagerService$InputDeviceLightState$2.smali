.class Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # getter for: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLightSensorEnabled:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2500(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v6

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # getter for: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxCount:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$13000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mSamplingStartTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$13102(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;J)J

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # += operator for: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxAverage:F
    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$13216(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;F)F

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # operator++ for: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxCount:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$13008(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # getter for: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mSamplingStartTime:J
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$13100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # getter for: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxAverage:F
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$13200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # getter for: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxCount:I
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$13000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    # setter for: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxAverage:F
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$13202(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;F)F

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # getter for: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxAverage:F
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$13200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    const-string v1, "PowerManagerService"

    const-string v2, "[input device light] Average lux is higher than 100lux, turn off keyboard light"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mAutoKeyboardLightDisabled:Z
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$2802(Lcom/android/server/power/PowerManagerService;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # setter for: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxCount:I
    invoke-static {v1, v6}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$13002(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxAverage:F
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$13202(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;F)F

    :cond_1
    return-void

    :cond_2
    const-string v1, "PowerManagerService"

    const-string v2, "[input device light] Average lux is lower than 100lux, turn on keyboard light"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mAutoKeyboardLightDisabled:Z
    invoke-static {v1, v6}, Lcom/android/server/power/PowerManagerService;->access$2802(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_0
.end method

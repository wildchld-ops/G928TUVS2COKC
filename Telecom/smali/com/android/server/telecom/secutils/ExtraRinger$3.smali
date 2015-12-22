.class Lcom/android/server/telecom/secutils/ExtraRinger$3;
.super Ljava/lang/Object;
.source "ExtraRinger.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/ExtraRinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/ExtraRinger;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/ExtraRinger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/ExtraRinger$3;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

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

    const/4 v6, 0x2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger$3;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAccelerometerSensorListener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$100(Lcom/android/server/telecom/secutils/ExtraRinger;Ljava/lang/String;)V

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger$3;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    # |= operator for: Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I
    invoke-static {v0, v6}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$476(Lcom/android/server/telecom/secutils/ExtraRinger;I)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger$3;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    # invokes: Lcom/android/server/telecom/secutils/ExtraRinger;->updateSensorState()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$500(Lcom/android/server/telecom/secutils/ExtraRinger;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger$3;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    const/4 v1, 0x4

    # setter for: Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$402(Lcom/android/server/telecom/secutils/ExtraRinger;I)I

    goto :goto_0
.end method

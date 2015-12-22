.class Lcom/android/server/telecom/secutils/ExtraRinger$2;
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

    iput-object p1, p0, Lcom/android/server/telecom/secutils/ExtraRinger$2;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger$2;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLightSensorListener : lux = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$100(Lcom/android/server/telecom/secutils/ExtraRinger;Ljava/lang/String;)V

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger$2;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    const/4 v1, 0x1

    # |= operator for: Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$476(Lcom/android/server/telecom/secutils/ExtraRinger;I)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger$2;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    # invokes: Lcom/android/server/telecom/secutils/ExtraRinger;->updateSensorState()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$500(Lcom/android/server/telecom/secutils/ExtraRinger;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger$2;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    const/4 v1, 0x4

    # setter for: Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$402(Lcom/android/server/telecom/secutils/ExtraRinger;I)I

    goto :goto_0
.end method

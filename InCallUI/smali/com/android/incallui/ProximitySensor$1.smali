.class Lcom/android/incallui/ProximitySensor$1;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ProximitySensor;


# direct methods
.method constructor <init>(Lcom/android/incallui/ProximitySensor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ProximitySensor$1;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v6, v4

    float-to-double v6, v2

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-float v6, v2, v6

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/ProximitySensor$1;->this$0:Lcom/android/incallui/ProximitySensor;

    # getter for: Lcom/android/incallui/ProximitySensor;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v6}, Lcom/android/incallui/ProximitySensor;->access$000(Lcom/android/incallui/ProximitySensor;)Landroid/hardware/Sensor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_0

    move v4, v5

    :cond_0
    sput-boolean v4, Lcom/android/incallui/ProximitySensor;->mIsProximityCloseDistance:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSensorChanged : active = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v6, Lcom/android/incallui/ProximitySensor;->mIsProximityCloseDistance:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/incallui/ProximitySensor$1;->this$0:Lcom/android/incallui/ProximitySensor;

    # getter for: Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;
    invoke-static {v4}, Lcom/android/incallui/ProximitySensor;->access$100(Lcom/android/incallui/ProximitySensor;)Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    const-string v4, "turn_on_speaker_by_proxisensor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    if-eq v0, v5, :cond_2

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isBluetoothAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isWiredHeadsetOn()Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/incallui/ProximitySensor;->mIsProximityCloseDistance:Z

    if-nez v4, :cond_4

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending new Audio Mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    :cond_3
    return-void

    :cond_4
    move v3, v5

    goto :goto_0
.end method

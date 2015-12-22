.class final Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceLightState"
.end annotation


# static fields
.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x1f4

.field private static final LIGHT_SENSOR_SAMPLING_MILLIS:I = 0x5dc

.field public static final LIGHT_STATE_OFF:I = 0x0

.field public static final LIGHT_STATE_ON:I = 0x1

.field public static final LIGHT_STATE_UNKNOWN:I = 0x2

.field private static final LUX_FOR_AUTO_KEYBOARD_LIGHT:F = 100.0f

.field public static final MSG_LIGHT_OFF:I = 0x0

.field public static final MSG_LIGHT_ON:I = 0x1


# instance fields
.field private mHandlerInputDeviceLight:Landroid/os/Handler;

.field private mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

.field private final mInputDeviceLight:Lcom/android/server/lights/Light;

.field private mInputDeviceLightState:I

.field private mInputDeviceLightTimeout:I

.field private mIsKeepLight:Z

.field private mIsMsgPending:Z

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLuxAverage:F

.field private mLuxCount:I

.field private mSamplingStartTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;I)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$2;-><init>(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$12500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/LightsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLight:Lcom/android/server/lights/Light;

    iput v3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightState:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    new-instance v0, Landroid/hardware/SystemSensorManager;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxAverage:F

    iput v3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxCount:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InputDeviceLight"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;-><init>(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Landroid/os/Looper;Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->handleInputDeviceLightOn()V

    return-void
.end method

.method static synthetic access$12700(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->handleInputDeviceLightOff()V

    return-void
.end method

.method static synthetic access$13000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxCount:I

    return v0
.end method

.method static synthetic access$13002(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxCount:I

    return p1
.end method

.method static synthetic access$13008(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I
    .locals 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxCount:I

    return v0
.end method

.method static synthetic access$13100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mSamplingStartTime:J

    return-wide v0
.end method

.method static synthetic access$13102(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mSamplingStartTime:J

    return-wide p1
.end method

.method static synthetic access$13200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)F
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxAverage:F

    return v0
.end method

.method static synthetic access$13202(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxAverage:F

    return p1
.end method

.method static synthetic access$13216(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;F)F
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxAverage:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLuxAverage:F

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightKeep()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setLightSensorEnabled(Z)Z

    move-result v0

    return v0
.end method

.method private getInputDeviceLightKeep()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    return v0
.end method

.method private getInputDeviceLightState()I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightState:I

    return v0
.end method

.method private getInputDeviceLightTimeout()I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    return v0
.end method

.method private handleInputDeviceLightOff()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    return-void
.end method

.method private handleInputDeviceLightOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLight:Lcom/android/server/lights/Light;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    return-void
.end method

.method private setInputDeviceLightKeep(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    return-void
.end method

.method private setInputDeviceLightTimeout(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    :cond_0
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLightSensorEnabled:Z

    if-nez v1, :cond_0

    const-string v1, "PowerManagerService"

    const-string v2, "[input device light] Register light sensor"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLightSensorEnabled:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLightSensor:Landroid/hardware/Sensor;

    const v4, 0x7a120

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLightSensorEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "PowerManagerService"

    const-string v2, "[input device light] Unregister light sensor"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLightSensorEnabled:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setInputDeviceLightOn(I)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    :cond_0
    if-ne p1, v4, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$9400(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mInputDeviceEnabled:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$12800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$9000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$12900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightState:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

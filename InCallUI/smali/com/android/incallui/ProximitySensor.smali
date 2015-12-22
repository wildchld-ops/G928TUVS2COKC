.class public Lcom/android/incallui/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/incallui/AccelerometerListener$OrientationListener;
.implements Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mFromRcsShare:Z

.field public static mIsProximityCloseDistance:Z


# instance fields
.field private final mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

.field private final mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private mDialpadVisible:Z

.field private mIsHardKeyboardOpen:Z

.field private mIsPhoneOffhook:Z

.field private mOrientation:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private final mSamsungAudioManager:Landroid/media/SamsungAudioManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUiShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/ProximitySensor;->mFromRcsShare:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    new-instance v0, Lcom/android/incallui/ProximitySensor$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/ProximitySensor$1;-><init>(Lcom/android/incallui/ProximitySensor;)V

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityListener:Landroid/hardware/SensorEventListener;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximitySensor:Landroid/hardware/Sensor;

    new-instance v0, Landroid/media/SamsungAudioManager;

    invoke-direct {v0, p1}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    new-instance v0, Lcom/android/incallui/AccelerometerListener;

    invoke-direct {v0, p1, p0}, Lcom/android/incallui/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/incallui/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    iput-object p2, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AccessoryEventHandler;->addListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/ProximitySensor;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/ProximitySensor;)Lcom/android/incallui/AudioModeProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    return-object v0
.end method

.method private declared-synchronized updateProximitySensorMode()V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    monitor-enter p0

    :try_start_0
    const-string v7, "support_mobilecarrier"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v7}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    const/4 v7, 0x4

    if-eq v7, v0, :cond_d

    if-eq v11, v0, :cond_d

    if-eq v10, v0, :cond_d

    const-string v7, "support_folder_hardkey"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_2
    move v6, v9

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    const-string v7, "turn_on_speaker_by_proxisensor"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-eqz v3, :cond_e

    if-eq v10, v0, :cond_e

    move v5, v8

    :goto_2
    iget v7, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    if-ne v7, v10, :cond_f

    move v1, v8

    :goto_3
    if-eqz v5, :cond_3

    const-string v7, "Ignore Screen Orientation for Accessibility"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_3
    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-nez v7, :cond_10

    if-eqz v1, :cond_10

    move v7, v8

    :goto_4
    or-int/2addr v6, v7

    const-string v7, "turn_on_speaker_by_proxisensor"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-ne v11, v0, :cond_4

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFolerClosed()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v6, 0x0

    :cond_4
    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/SecCallPopupService;

    move-result-object v7

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    if-nez v7, :cond_5

    const-string v7, "popup is displayed and can not check orientation, so keep screen on"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    :cond_5
    if-nez v6, :cond_6

    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v7, :cond_11

    if-eqz v1, :cond_11

    move v7, v8

    :goto_5
    or-int/2addr v6, v7

    :cond_6
    if-nez v6, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasAliveVideoCall()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isModifyProgressing()Z

    move-result v7

    if-nez v7, :cond_12

    move v7, v8

    :goto_6
    or-int/2addr v6, v7

    :cond_7
    if-nez v6, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v7

    or-int/2addr v6, v7

    :cond_8
    if-nez v6, :cond_9

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/AccessoryEventHandler;->isWIFIDisplayOn()Z

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isWIFIDisplayOn: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_9

    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v7}, Landroid/media/SamsungAudioManager;->isRemoteSubmixOn()Z

    move-result v7

    or-int/2addr v6, v7

    :cond_9
    if-nez v6, :cond_a

    sget-boolean v7, Lcom/android/incallui/ProximitySensor;->mFromRcsShare:Z

    or-int/2addr v6, v7

    :cond_a
    const-string v7, "support_swis"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-nez v6, :cond_b

    invoke-static {}, Lcom/android/incallui/SwisHelper;->needToShow()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-static {}, Lcom/android/incallui/SwisHelper;->isForegroundActivity()Z

    move-result v7

    if-eqz v7, :cond_13

    move v7, v8

    :goto_7
    or-int/2addr v6, v7

    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "screenonImmediately: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mFromRcsShare: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v10, Lcom/android/incallui/ProximitySensor;->mFromRcsShare:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-static {p0, v7, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v10

    const-string v11, "keybrd"

    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v7, :cond_14

    move v7, v8

    :goto_8
    invoke-virtual {v10, v11, v7}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v10

    const-string v11, "dpad"

    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v7, :cond_15

    move v7, v8

    :goto_9
    invoke-virtual {v10, v11, v7}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v10

    const-string v11, "offhook"

    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v7, :cond_16

    move v7, v8

    :goto_a
    invoke-virtual {v10, v11, v7}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v10

    const-string v11, "hor"

    if-eqz v1, :cond_17

    move v7, v8

    :goto_b
    invoke-virtual {v10, v11, v7}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v7

    const-string v10, "ui"

    iget-boolean v11, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-eqz v11, :cond_18

    :goto_c
    invoke-virtual {v7, v10, v8}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v7

    const-string v8, "aud"

    invoke-static {v0}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v2

    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v7, :cond_19

    if-eqz v2, :cond_19

    const-string v7, "turning off proximity sensor by cover: "

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->turnOffProximitySensor(Z)V

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/android/incallui/ProximitySensor;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_c
    :try_start_2
    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v7, :cond_2

    :cond_d
    move v6, v8

    goto/16 :goto_1

    :cond_e
    move v5, v9

    goto/16 :goto_2

    :cond_f
    move v1, v9

    goto/16 :goto_3

    :cond_10
    move v7, v9

    goto/16 :goto_4

    :cond_11
    move v7, v9

    goto/16 :goto_5

    :cond_12
    move v7, v9

    goto/16 :goto_6

    :cond_13
    move v7, v9

    goto/16 :goto_7

    :cond_14
    move v7, v9

    goto/16 :goto_8

    :cond_15
    move v7, v9

    goto :goto_9

    :cond_16
    move v7, v9

    goto :goto_a

    :cond_17
    move v7, v9

    goto :goto_b

    :cond_18
    move v8, v9

    goto :goto_c

    :cond_19
    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v7, :cond_1a

    if-nez v6, :cond_1a

    const-string v7, "Turning on proximity sensor"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/TelecomAdapter;->turnOnProximitySensor()V

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/android/incallui/ProximitySensor;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v9, p0, Lcom/android/incallui/ProximitySensor;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v10, 0x3

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/16 :goto_0

    :cond_1a
    const-string v7, "Turning off proximity sensor"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/incallui/TelecomAdapter;->turnOffProximitySensor(Z)V

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/android/incallui/ProximitySensor;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public forceUpdateProximitySensorMode()V
    .locals 2

    const-string v0, "forceUpdateProximitySensorMode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public isScreenReallyOff()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioMode(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCoverStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDialpadVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onInCallShowing(Z)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 0

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, p2, :cond_2

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    :goto_0
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v4, p2, :cond_0

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v4, p2, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    :goto_1
    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eq v1, v2, :cond_1

    iput-boolean v1, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    iput v3, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    iget-object v2, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    invoke-virtual {v2, v3}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    :cond_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method public onSupportedAudioMode(I)V
    .locals 0

    return-void
.end method

.method public orientationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public tearDown()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "tearDown"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AccessoryEventHandler;->removeListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/TelecomAdapter;->turnOffProximitySensor(Z)V

    return-void
.end method

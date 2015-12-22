.class public Lcom/android/server/telecom/secutils/ExtraRinger;
.super Ljava/lang/Object;
.source "ExtraRinger.java"


# instance fields
.field private final EXTRA_RINGER_ACCELEROMETER_OK:I

.field private final EXTRA_RINGER_ALL_SENSOR_OK:I

.field private final EXTRA_RINGER_INIT:I

.field private final EXTRA_RINGER_LIGHT_OK:I

.field private final EXTRA_RINGER_SENSOR_NOT_OK:I

.field private final EXTRA_RINGTONE_ESCALATING_THRESHOLD_TIME:I

.field private final LUX_IN_POCKET:I

.field private final SET_EXTRA_RINGTONE_VOLUME:I

.field private final VERTICAL_ANGLE:I

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentExtraRingerVolume:I

.field private mExtraRingerUpdateDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mOriginRingtoneVolume:I

.field private mSensorChecked:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSystemOriginRingtoneVolume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    iput v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSystemOriginRingtoneVolume:I

    iput v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    iput v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mExtraRingerUpdateDelay:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->SET_EXTRA_RINGTONE_VOLUME:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->EXTRA_RINGTONE_ESCALATING_THRESHOLD_TIME:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->LUX_IN_POCKET:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->VERTICAL_ANGLE:I

    iput v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->EXTRA_RINGER_INIT:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->EXTRA_RINGER_LIGHT_OK:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->EXTRA_RINGER_ACCELEROMETER_OK:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->EXTRA_RINGER_ALL_SENSOR_OK:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->EXTRA_RINGER_SENSOR_NOT_OK:I

    iput v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    new-instance v0, Lcom/android/server/telecom/secutils/ExtraRinger$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/ExtraRinger$1;-><init>(Lcom/android/server/telecom/secutils/ExtraRinger;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/telecom/secutils/ExtraRinger$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/ExtraRinger$2;-><init>(Lcom/android/server/telecom/secutils/ExtraRinger;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/server/telecom/secutils/ExtraRinger$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/ExtraRinger$3;-><init>(Lcom/android/server/telecom/secutils/ExtraRinger;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/ExtraRinger;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/server/telecom/secutils/ExtraRinger;)I
    .locals 2

    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/ExtraRinger;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/ExtraRinger;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/ExtraRinger;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mExtraRingerUpdateDelay:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/telecom/secutils/ExtraRinger;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    return p1
.end method

.method static synthetic access$476(Lcom/android/server/telecom/secutils/ExtraRinger;I)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/ExtraRinger;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ExtraRinger;->updateSensorState()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ExtraRinger"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private makeExtraRingtone()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/16 v5, 0x64

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSystemOriginRingtoneVolume:I

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    const-string v0, "ExtraRinger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExtraRingtone: mCurrentExtraRingerVolume - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    iget v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    :cond_2
    const-string v0, "ExtraRinger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExtraRingtone: getStreamVolume - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x7d0

    iget v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    sub-int/2addr v0, v2

    div-int v0, v1, v0

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mExtraRingerUpdateDelay:I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mExtraRingerUpdateDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateSensorState()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSensorState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ExtraRinger;->makeExtraRingtone()V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public setSystemOriginRingtoneVolume(I)V
    .locals 5

    const/4 v4, 0x1

    iput p1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSystemOriginRingtoneVolume:I

    const-string v0, "ExtraRinger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemOriginRingtoneVolume volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startExtraRinger()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "startExtraRinger.."

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "extra_ringer"

    const-string v0, "extra_ringer_default_on"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Extra ringer off."

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    if-ne v0, v3, :cond_3

    const-string v0, "startExtraRinger : Already max volume"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method public stopExtraRinger()V
    .locals 5

    const/16 v1, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "stopExtraRinger"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, "ExtraRinger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopExtraRinger() setStreamVolume - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    iput v4, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    return-void
.end method

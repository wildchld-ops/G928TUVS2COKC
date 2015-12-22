.class public Lcom/android/server/telecom/secutils/AutoAnswer;
.super Ljava/lang/Object;
.source "AutoAnswer.java"


# static fields
.field private static sInstance:Lcom/android/server/telecom/secutils/AutoAnswer;


# instance fields
.field public final AUTOMATIC_ANSWERING_DEFAULT:Z

.field public final AUTOMATIC_ANSWERING_ENABLE_SHAREDPREF:Ljava/lang/String;

.field public final AUTOMATIC_ANSWERING_TIMER_DEFAULT:I

.field public final AUTO_TIME:Ljava/lang/String;

.field public final LOG_TAG:Ljava/lang/String;

.field private final START_AUTO_ANSWER:I

.field private mHandler:Landroid/os/Handler;

.field private sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public sAutoAnswering:Z

.field private sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private sBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AutoAnswer"

    iput-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->LOG_TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAutoAnswering:Z

    iput-object v2, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iput-object v2, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v0, "automatic_answering_enable_sharedpref"

    iput-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->AUTOMATIC_ANSWERING_ENABLE_SHAREDPREF:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->AUTOMATIC_ANSWERING_DEFAULT:Z

    const-string v0, "answeringmode_auto_time"

    iput-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->AUTO_TIME:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->AUTOMATIC_ANSWERING_TIMER_DEFAULT:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->START_AUTO_ANSWER:I

    new-instance v0, Lcom/android/server/telecom/secutils/AutoAnswer$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/AutoAnswer$1;-><init>(Lcom/android/server/telecom/secutils/AutoAnswer;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/server/telecom/secutils/AutoAnswer$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/secutils/AutoAnswer$2;-><init>(Lcom/android/server/telecom/secutils/AutoAnswer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/AutoAnswer;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/telecom/secutils/AutoAnswer;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/AutoAnswer;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/secutils/AutoAnswer;->startAutoAnswer(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/AutoAnswer;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/telecom/secutils/AutoAnswer;
    .locals 2

    const-class v1, Lcom/android/server/telecom/secutils/AutoAnswer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/secutils/AutoAnswer;->sInstance:Lcom/android/server/telecom/secutils/AutoAnswer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/secutils/AutoAnswer;

    invoke-direct {v0}, Lcom/android/server/telecom/secutils/AutoAnswer;-><init>()V

    sput-object v0, Lcom/android/server/telecom/secutils/AutoAnswer;->sInstance:Lcom/android/server/telecom/secutils/AutoAnswer;

    :cond_0
    sget-object v0, Lcom/android/server/telecom/secutils/AutoAnswer;->sInstance:Lcom/android/server/telecom/secutils/AutoAnswer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isConnectedVR()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "sys.hmt.connected"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "AutoAnswer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isConnectedVR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private startAutoAnswer(J)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x3e8

    const/4 v4, 0x1

    const-string v0, "AutoAnswer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAutoAnswer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "AutoAnswer"

    const-string v1, "Do not startAutoAnswer when carrier-phone RelaxMode."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x2bc

    add-long/2addr v0, p1

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAutoAnswering:Z

    iget-object v2, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p1

    goto :goto_1
.end method


# virtual methods
.method public checkAutoAnsweringMode(Landroid/content/Context;)V
    .locals 8

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "AutoAnswer"

    const-string v4, "checkAutoAnsweringMode"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAutoAnswering:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "autoanswering_without_device"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "automatic_answering_enable_sharedpref"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "AutoAnswer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAutoAnsweringMode isOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "answeringmode_auto_time"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/AutoAnswer;->isConnectedVR()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "AutoAnswer"

    const-string v3, "Not autoAnswerCall because GearVR is connected"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v4}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_2
    const-string v0, "disable_autoanswer_in_silent_and_earjackmode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "AutoAnswer"

    const-string v2, "skipping ring because volume is zero or ringtone is silent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    int-to-long v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/secutils/AutoAnswer;->startAutoAnswer(J)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method public isAutoAnswering()Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "AutoAnswer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAutoAnswering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAutoAnswering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAutoAnswering:Z

    return v0
.end method

.method public stopAutoAnswer()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAutoAnswering:Z

    if-eqz v0, :cond_1

    const-string v0, "AutoAnswer"

    const-string v1, "stopAutoAnswer..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAutoAnswering:Z

    :cond_1
    return-void
.end method

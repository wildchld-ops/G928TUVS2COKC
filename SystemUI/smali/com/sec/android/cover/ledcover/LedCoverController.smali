.class public Lcom/sec/android/cover/ledcover/LedCoverController;
.super Lcom/sec/android/cover/BaseCoverController;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;,
        Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    }
.end annotation


# static fields
.field public static final LED_COMMAND_ALARM:I = 0xd

.field public static final LED_COMMAND_BATTERY_CHARGING:I = 0xa

.field public static final LED_COMMAND_BATTERY_CHARGING_END:I = 0xb

.field public static final LED_COMMAND_BRIGHTNESS:I = 0x11

.field public static final LED_COMMAND_CALL_END:I = 0xc

.field public static final LED_COMMAND_CLOCK:I = 0x1

.field public static final LED_COMMAND_INCOMING_CALL:I = 0x4

.field public static final LED_COMMAND_LED_OFF:I = 0xf

.field public static final LED_COMMAND_LED_ON:I = 0xe

.field public static final LED_COMMAND_LOW_BATTERY_ALERT:I = 0x7

.field public static final LED_COMMAND_MISSED_CALL_MSG:I = 0x2

.field public static final LED_COMMAND_MUSIC:I = 0x5

.field public static final LED_COMMAND_PEDOMETER:I = 0x8

.field public static final LED_COMMAND_POWER_ON_OFF:I = 0x6

.field public static final LED_COMMAND_REQ_LED_STATUS:I = 0x9

.field public static final LED_COMMAND_VOLUME:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ALARM_EXPIRED:I

.field private final ALARM_EXPIRE_TIME_DURATION:J

.field private final INTENT_ACTION_ALARM_ALERT:Ljava/lang/String;

.field private final INTENT_ACTION_ALARM_START_ALERT:Ljava/lang/String;

.field private final INTENT_ACTION_ALARM_STOP_ALERT:Ljava/lang/String;

.field private final INTENT_ACTION_CALL_ENDED:Ljava/lang/String;

.field private final INTENT_ACTION_PHONESTATE:Ljava/lang/String;

.field private final INTENT_ACTION_SPLANNER:Ljava/lang/String;

.field private final INTENT_ACTION_TIMER:Ljava/lang/String;

.field private final INTENT_ACTION_VOLUME_CHANGED:Ljava/lang/String;

.field private isBatteryCharging:Z

.field private isIncomingCallStatus:Z

.field private isScreenOn:Z

.field private mAlarmStartTime:J

.field private mAlarmTimerHandler:Landroid/os/Handler;

.field private mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private final nullContent:[B

.field private prevCallSatus:I

.field private strIntentAction:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/BaseCoverController;-><init>(Landroid/content/Context;)V

    new-array v0, v2, [B

    aput-byte v3, v0, v3

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iput v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->ALARM_EXPIRED:I

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->ALARM_EXPIRE_TIME_DURATION:J

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_VOLUME_CHANGED:Ljava/lang/String;

    const-string v0, "android.intent.action.PHONE_STATE"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_PHONESTATE:Ljava/lang/String;

    const-string v0, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_ALARM_ALERT:Ljava/lang/String;

    const-string v0, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_ALARM_START_ALERT:Ljava/lang/String;

    const-string v0, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_ALARM_STOP_ALERT:Ljava/lang/String;

    const-string v0, "com.sec.android.app.clockpackage.timer.REMOTE_TIMER_FINISH"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_TIMER:Ljava/lang/String;

    const-string v0, "com.sec.android.phone.action.ACTION_CALL_ENDED"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_CALL_ENDED:Ljava/lang/String;

    const-string v0, "com.android.calendar.SEND_ALERTINFO_ACTION"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_SPLANNER:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/cover/ledcover/LedCoverController$1;-><init>(Lcom/sec/android/cover/ledcover/LedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.TIME_TICK"

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.TIME_SET"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.intent.action.BATTERY_LOW"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.intent.action.PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sec.android.app.clockpackage.timer.REMOTE_TIMER_FINISH"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.phone.action.ACTION_CALL_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.calendar.SEND_ALERTINFO_ACTION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->strIntentAction:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isScreenOn:Z

    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isBatteryCharging:Z

    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J

    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->STOPPED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/ledcover/LedCoverController$2;-><init>(Lcom/sec/android/cover/ledcover/LedCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/ledcover/LedCoverController$3;-><init>(Lcom/sec/android/cover/ledcover/LedCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/ledcover/LedCoverController;->updateMissedEvent(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/ledcover/LedCoverController;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/ledcover/LedCoverController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/ledcover/LedCoverController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/ledcover/LedCoverController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/LedCoverController;->processCallEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/ledcover/LedCoverController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/ledcover/LedCoverController;)Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/ledcover/LedCoverController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendEndCallInformation(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/ledcover/LedCoverController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/ledcover/LedCoverController;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/LedCoverController;->updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/cover/ledcover/LedCoverController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isBatteryCharging:Z

    return p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/ledcover/LedCoverController;)Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/cover/ledcover/LedCoverController;Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;)Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/cover/ledcover/LedCoverController;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/sec/android/cover/ledcover/LedCoverController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isScreenOn:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/cover/ledcover/LedCoverController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isScreenOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/cover/ledcover/LedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendCommandByPriority()V

    return-void
.end method

.method private getLastBatteryInformation()I
    .locals 4

    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    instance-of v3, v3, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    iget-object v0, v1, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    iget v3, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    goto :goto_0
.end method

.method private getLedCommandStr(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "CLOCK"

    goto :goto_0

    :pswitch_2
    const-string v0, "MISSED_CALL_MSG"

    goto :goto_0

    :pswitch_3
    const-string v0, "VOLUME"

    goto :goto_0

    :pswitch_4
    const-string v0, "INCOMING_CALL"

    goto :goto_0

    :pswitch_5
    const-string v0, "MUSIC"

    goto :goto_0

    :pswitch_6
    const-string v0, "POWER_ON_OFF"

    goto :goto_0

    :pswitch_7
    const-string v0, "LOW_BATTERY_ALERT"

    goto :goto_0

    :pswitch_8
    const-string v0, "PEDOMETER"

    goto :goto_0

    :pswitch_9
    const-string v0, "REQ_LED_STATUS"

    goto :goto_0

    :pswitch_a
    const-string v0, "BATTERY_CHARGING"

    goto :goto_0

    :pswitch_b
    const-string v0, "BATTERY_CHARGING_END"

    goto :goto_0

    :pswitch_c
    const-string v0, "CALL_END"

    goto :goto_0

    :pswitch_d
    const-string v0, "ALARM"

    goto :goto_0

    :pswitch_e
    const-string v0, "LED_ON"

    goto :goto_0

    :pswitch_f
    const-string v0, "LED_OFF"

    goto :goto_0

    :pswitch_10
    const-string v0, "LED_BRIGHTNESS"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public static intTo2ByteArray(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private processCallEvent(Landroid/content/Intent;)V
    .locals 6

    const/16 v5, 0xf

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendCallInformation(Landroid/content/Intent;)V

    iput v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    iget v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    if-ne v1, v4, :cond_2

    :goto_1
    iput v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    invoke-direct {p0, v5, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    invoke-direct {p0, v5, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    iput v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    goto :goto_0
.end method

.method private requestRemoteViews()V
    .locals 3

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendCommandByPriority()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendCallInformation(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendAlarmInformation()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendMissedEventInformation()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendMusicPlayerInformation()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isBatteryCharging:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendBatteryChargingInformation(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendClockInformation()V

    goto :goto_0
.end method

.method private sendEndCallInformation(Landroid/content/Intent;)V
    .locals 5

    const-string v2, "calldurationmillis"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strCallTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {p0, v2, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v3, "call duration info is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendLedData(I[B)V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLedData : command = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/LedCoverController;->getLedCommandStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/4 v1, 0x1

    new-array p2, v1, [B

    aput-byte v4, p2, v4

    :cond_0
    const/16 v1, 0xf

    if-ne p1, v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/cover/ScoverManager;->sendDataToCover(I[B)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/cover/ScoverManager;->sendDataToCover(I[B)V

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->sendDataToCover(I[B)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMusicPlayerInformation()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [B

    aput-byte v3, v0, v3

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    if-ne v1, v2, :cond_2

    aput-byte v4, v0, v3

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PAUSED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aput-byte v1, v0, v3

    goto :goto_0
.end method

.method private updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 11

    const/4 v10, 0x1

    iget-object v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRemoteViewUpdated : Type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v6, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-eq v5, v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    iget-wide v6, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0xea60

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    :cond_0
    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    iput-object v5, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v6, "Reset alarm type to NONE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v5, "new_message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "missed_call"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    invoke-virtual {p0, v10}, Lcom/sec/android/cover/ledcover/LedCoverController;->updateMissedEvent(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v5, "music_controller"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIntent:Landroid/content/Intent;

    const-string v6, "playstate"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIntent:Landroid/content/Intent;

    const-string v6, "playstatechanged"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v1, :cond_5

    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    iput-object v5, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendMusicPlayerInformation()V

    goto :goto_0

    :cond_5
    if-ne v1, v10, :cond_6

    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PAUSED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    iput-object v5, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendMusicPlayerInformation()V

    goto :goto_0

    :cond_6
    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->STOPPED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    iput-object v5, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    goto :goto_0
.end method


# virtual methods
.method public cancelAlarmTimer()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "cancelAlarmTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->requestRemoteViews()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->strIntentAction:[Ljava/lang/String;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->strIntentAction:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendClockInformation()V

    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->resetAlarmType()V

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUpWithReason()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendCurrentBrightnessGrade()V

    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendCommandByPriority()V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->goToSleep()V

    goto :goto_0
.end method

.method public resetAlarmTimer()V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "resetAlarmTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->acquireWakeLock()V

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected resetAlarmType()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J

    return-void
.end method

.method protected sendAlarmInformation()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [B

    aput-byte v3, v0, v3

    iget-boolean v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->ALARM:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v2, :cond_2

    aput-byte v4, v0, v3

    :goto_1
    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->TIMER:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x2

    aput-byte v1, v0, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->SPLANNER:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    aput-byte v1, v0, v3

    goto :goto_1

    :cond_4
    aput-byte v4, v0, v3

    goto :goto_1
.end method

.method protected sendBatteryChargingInformation()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    return-void
.end method

.method protected sendBatteryChargingInformation(Landroid/content/Intent;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v1, v2, [B

    aput-byte v3, v1, v3

    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->getLastBatteryInformation()I

    move-result v0

    int-to-byte v2, v0

    aput-byte v2, v1, v3

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa

    invoke-direct {p0, v2, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    return-void
.end method

.method protected sendCallEndInformation(Landroid/content/Intent;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x5

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    const/4 v1, 0x2

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected sendCallInformation(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->resetAlarmType()V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    return-void
.end method

.method protected sendChargingEndInformation(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x6

    new-array v2, v7, [B

    fill-array-data v2, :array_0

    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->getLastBatteryInformation()I

    move-result v1

    const-string v7, "kk:mm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    int-to-byte v7, v1

    aput-byte v7, v2, v10

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    array-length v9, v6

    invoke-static {v6, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const/16 v7, 0xb

    invoke-direct {p0, v7, v2}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArrayStoreException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected sendClockInformation()V
    .locals 14

    const/4 v10, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->isCoverOpen()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eqz v0, :cond_0

    const-string v9, "%02d:%02d"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    sget-object v9, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendClockInformation : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {p0, v12, v8}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    :goto_1
    return-void

    :cond_0
    rem-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_1

    const/16 v5, 0xc

    :cond_1
    const-string v9, "%2d:%02d"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    sget-object v9, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v10, "sendClockInformation : Cover is opend"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendCurrentBrightnessGrade()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v0, v3, [B

    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getCurrentBrightness()F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    aput-byte v3, v0, v5

    :goto_0
    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LED currentBrighness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | brightnessGrade = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x11

    invoke-direct {p0, v2, v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    :cond_0
    return-void

    :cond_1
    const/high16 v2, 0x434d0000    # 205.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    const/4 v2, 0x2

    aput-byte v2, v0, v5

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    aput-byte v2, v0, v5

    goto :goto_0
.end method

.method protected sendLowBatteryInformation(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    return-void
.end method

.method protected sendMissedEventInformation()Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x6

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    iget-boolean v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-eq v4, v5, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v4

    if-lez v4, :cond_2

    aput-byte v6, v1, v7

    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/cover/ledcover/LedCoverController;->intTo2ByteArray(I)[B

    move-result-object v0

    aget-byte v4, v0, v7

    aput-byte v4, v1, v8

    const/4 v4, 0x3

    aget-byte v5, v0, v6

    aput-byte v5, v1, v4

    const/4 v2, 0x1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v4

    if-lez v4, :cond_3

    aput-byte v6, v1, v6

    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/cover/ledcover/LedCoverController;->intTo2ByteArray(I)[B

    move-result-object v0

    const/4 v4, 0x4

    aget-byte v5, v0, v7

    aput-byte v5, v1, v4

    const/4 v4, 0x5

    aget-byte v5, v0, v6

    aput-byte v5, v1, v4

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0, v8, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    :cond_4
    move v3, v2

    goto :goto_0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected sendVolumeInformation(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v4, -0x3e7

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    new-array v0, v3, [B

    aput-byte v6, v0, v6

    sget-object v3, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendVolumeInformation : volume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    mul-int/lit8 v2, v2, 0x3

    if-gtz v2, :cond_2

    const/4 v2, 0x1

    :cond_1
    :goto_1
    int-to-byte v3, v2

    aput-byte v3, v0, v6

    const/4 v3, 0x3

    invoke-direct {p0, v3, v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    goto :goto_0

    :cond_2
    const/16 v3, 0xf

    if-le v2, v3, :cond_1

    const/16 v2, 0xf

    goto :goto_1
.end method

.method protected setAlarmType(Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J

    return-void
.end method

.method public startAlarmTimer()V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "startAlarmTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->acquireWakeLock()V

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public updateMissedEvent(Z)V
    .locals 12

    const/4 v3, 0x1

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "updateMissedEvent()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v10

    const-string v2, "new_message"

    invoke-virtual {v10, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v11

    const-string v2, "missed_call"

    invoke-virtual {v10, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->clearMissedEvent()V

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    if-lez v2, :cond_0

    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v8, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v9, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    :cond_0
    if-eqz v11, :cond_1

    iget v2, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    if-lez v2, :cond_1

    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v8, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v9, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendMissedEventInformation()Z

    :cond_2
    return-void
.end method

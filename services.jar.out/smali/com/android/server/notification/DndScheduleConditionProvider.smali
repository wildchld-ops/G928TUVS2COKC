.class public Lcom/android/server/notification/DndScheduleConditionProvider;
.super Landroid/service/notification/ConditionProviderService;
.source "DndScheduleConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;
    }
.end annotation


# static fields
.field private static final ACTION_DND_CHANGED:Ljava/lang/String; = "android.intent.action.DND_CHANGED"

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final DND_CHECK_BY_ALARM:I = 0x5

.field private static final DND_CHECK_BY_INIT:I = 0x6

.field private static final DND_CHECK_BY_NONE:I = 0x0

.field private static final DND_CHECK_BY_SCHEDULE_SWITCH:I = 0x1

.field private static final DND_CHECK_BY_SCHEDULE_TIME:I = 0x2

.field private static final DND_CHECK_BY_TIME_SET:I = 0x3

.field private static final DND_CHECK_BY_TIME_ZONE:I = 0x4

.field private static final ENTER_ACTION:Ljava/lang/String; = "DndScheduleCondition.enter"

.field private static final ENTER_CODE:I = 0x64

.field private static final EXIT_ACTION:Ljava/lang/String; = "DndScheduleCondition.exit"

.field private static final EXIT_CODE:I = 0x65

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final HOURS:J = 0x36ee80L

.field private static final MINUTES:J = 0xea60L

.field private static final REASON_DND_CHANGED:Ljava/lang/String; = "reason"

.field private static final SECONDS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "DndScheduleCondition"


# instance fields
.field private final mCalendar:Lcom/android/server/notification/DowntimeCalendar;

.field private mConditionClearing:Z

.field private final mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mDowntimed:Z

.field private final mFiredAlarms:Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;

.field private mLookaheadThreshold:J

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequesting:Z

.field private final mSubscriptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mTracker:Lcom/android/server/notification/NextAlarmTracker;

.field private final mTrackerCallback:Lcom/android/server/notification/NextAlarmTracker$Callback;

.field private final mZenCallback:Lcom/android/server/notification/ZenModeHelper$Callback;

.field private final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "DndScheduleCondition"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/DndScheduleConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/DndScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/NextAlarmTracker;Lcom/android/server/notification/ZenModeHelper;)V
    .locals 2

    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    iput-object p0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/notification/DowntimeCalendar;

    invoke-direct {v0}, Lcom/android/server/notification/DowntimeCalendar;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    new-instance v0, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;-><init>(Lcom/android/server/notification/DndScheduleConditionProvider;Lcom/android/server/notification/DndScheduleConditionProvider$1;)V

    iput-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/notification/DndScheduleConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DndScheduleConditionProvider$1;-><init>(Lcom/android/server/notification/DndScheduleConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/notification/DndScheduleConditionProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DndScheduleConditionProvider$2;-><init>(Lcom/android/server/notification/DndScheduleConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTrackerCallback:Lcom/android/server/notification/NextAlarmTracker$Callback;

    new-instance v0, Lcom/android/server/notification/DndScheduleConditionProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DndScheduleConditionProvider$3;-><init>(Lcom/android/server/notification/DndScheduleConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mZenCallback:Lcom/android/server/notification/ZenModeHelper$Callback;

    sget-boolean v0, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DndScheduleCondition"

    const-string/jumbo v1, "new DndScheduleConditionProvider()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iput-object p2, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    iput-object p3, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(J)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/android/server/notification/DndScheduleConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/DndScheduleConditionProvider;)Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/DndScheduleConditionProvider;)Lcom/android/server/notification/DowntimeCalendar;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/notification/DndScheduleConditionProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/DndScheduleConditionProvider;->updateAlarms()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/notification/DndScheduleConditionProvider;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/DndScheduleConditionProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/notification/DndScheduleConditionProvider;->evaluateAutotrigger(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/notification/DndScheduleConditionProvider;Landroid/app/AlarmManager$AlarmClockInfo;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/DndScheduleConditionProvider;->onEvaluateNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/notification/DndScheduleConditionProvider;)Lcom/android/server/notification/NextAlarmTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    return-object v0
.end method

.method private createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;
    .locals 20

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/service/notification/ZenModeConfig;->toDowntimeConditionId(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/DndScheduleConditionProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v19, "Hm"

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    move-object/from16 v0, p1

    iget v8, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v7, v8}, Lcom/android/server/notification/DowntimeCalendar;->getNextTime(JII)J

    move-result-wide v10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/DndScheduleConditionProvider;->isZenNone()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v2}, Lcom/android/server/notification/NextAlarmTracker;->getNextAlarm()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v13

    :goto_2
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v14

    :goto_3
    cmp-long v2, v14, v16

    if-lez v2, :cond_1

    cmp-long v2, v14, v10

    if-gez v2, :cond_1

    move-wide v10, v14

    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v18

    invoke-direct {v2, v0, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/DndScheduleConditionProvider;->mContext:Landroid/content/Context;

    const v7, 0x10406ad

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/DndScheduleConditionProvider;->mContext:Landroid/content/Context;

    const v7, 0x10406ae

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Landroid/service/notification/Condition;

    const/4 v7, 0x0

    const/4 v9, 0x1

    move/from16 v8, p2

    invoke-direct/range {v2 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v19, "hma"

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    const-wide/16 v14, 0x0

    goto :goto_3
.end method

.method private evaluateAutotrigger(I)V
    .locals 9

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v6, :cond_1

    const-string v6, "Autotrigger skipped: no config"

    invoke-static {v6}, Lcom/android/server/notification/ZenLog;->traceDowntimeAutotrigger(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/server/notification/DndScheduleConditionProvider;->isInDowntime(J)Z

    move-result v3

    iget-boolean v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mDowntimed:Z

    if-ne v6, v3, :cond_3

    const/4 v6, 0x3

    if-eq p1, v6, :cond_2

    const/4 v6, 0x4

    if-eq p1, v6, :cond_2

    const/4 v6, 0x5

    if-ne p1, v6, :cond_3

    :cond_2
    sget-boolean v6, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "DndScheduleCondition"

    const-string v7, "evaluateAutotrigger : skip update of DnD"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mDowntimed:Z

    const/4 v4, -0x1

    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v1

    iget-boolean v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mDowntimed:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dnd_allowexception"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    const/4 v4, 0x1

    :goto_1
    if-eq v4, v1, :cond_0

    if-eqz p1, :cond_0

    const-string v6, "Autotrigger fired"

    invoke-static {v6}, Lcom/android/server/notification/ZenLog;->traceDowntimeAutotrigger(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    if-nez v4, :cond_6

    const-string v6, "downtimeExit"

    :goto_2
    invoke-virtual {v7, v4, v6}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.intent.action.DND_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "reason"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v6, "DndScheduleCondition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Broadcast ACTION_DND_CHANGED sent : reason = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const-string v6, "downtimeEnter"

    goto :goto_2
.end method

.method private evaluateSubscriptions()V
    .locals 7

    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mRequesting:Z

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/server/notification/DndScheduleConditionProvider;->shouldShowCondition()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v6

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->toDowntimeConditionId(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/notification/DndScheduleConditionProvider;->notifyCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private init()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/notification/DowntimeCalendar;->setDowntimeInfo(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)V

    invoke-direct {p0}, Lcom/android/server/notification/DndScheduleConditionProvider;->updateAlarms()V

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/DndScheduleConditionProvider;->isInDowntime(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mDowntimed:Z

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/notification/DndScheduleConditionProvider;->evaluateAutotrigger(I)V

    goto :goto_1
.end method

.method private isInDowntime(J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/DowntimeCalendar;->isInDowntime(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenNone()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenOff()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/DndScheduleConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DndScheduleConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/android/server/notification/DndScheduleConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DndScheduleConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/DndScheduleConditionProvider;->shouldShowCondition()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/android/server/notification/DndScheduleConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DndScheduleConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/notification/DndScheduleConditionProvider;->isZenNone()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->findBefore(J)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/android/server/notification/DndScheduleConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DndScheduleConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/DndScheduleConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DndScheduleConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_0
.end method

.method private onEvaluateNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V
    .locals 4

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "DndScheduleCondition"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvaluateNextAlarm "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_3

    sget-boolean v0, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v1, "DndScheduleCondition"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm fired: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->add(J)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/notification/DndScheduleConditionProvider;->evaluateSubscriptions()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "none"

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "none"

    goto :goto_2
.end method

.method private shouldShowCondition()Z
    .locals 12

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v5, "DndScheduleCondition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shouldShowCondition now="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    invoke-virtual {v6, v0, v1}, Lcom/android/server/notification/DowntimeCalendar;->isInDowntime(J)Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " lookahead="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/DowntimeCalendar;->nextDowntimeStart(J)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mLookaheadThreshold:J

    add-long/2addr v10, v0

    cmp-long v2, v8, v10

    if-gtz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/DowntimeCalendar;->isInDowntime(J)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/DowntimeCalendar;->nextDowntimeStart(J)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mLookaheadThreshold:J

    add-long/2addr v8, v0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method private static ts(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAlarm(Ljava/lang/String;III)V
    .locals 14

    iget-object v8, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v8, v4, v5, v0, v1}, Lcom/android/server/notification/DowntimeCalendar;->getNextTime(JII)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "time"

    invoke-virtual {v9, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x8000000

    move/from16 v0, p2

    invoke-static {v8, v0, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v8, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v8, v8, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-nez v8, :cond_1

    sget-boolean v8, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "DndScheduleCondition"

    const-string v9, "Cancel alarm because scheduler is turned off"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "DndScheduleCondition"

    const-string v9, "Scheduling %s for %s, in %s, now=%s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Lcom/android/server/notification/DndScheduleConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sub-long v12, v6, v4

    invoke-static {v12, v13}, Lcom/android/server/notification/NextAlarmTracker;->formatDuration(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v4, v5}, Lcom/android/server/notification/DndScheduleConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private updateAlarms()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "DndScheduleCondition.enter"

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v3, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/DndScheduleConditionProvider;->updateAlarm(Ljava/lang/String;III)V

    const-string v0, "DndScheduleCondition.exit"

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v3, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/DndScheduleConditionProvider;->updateAlarm(Ljava/lang/String;III)V

    goto :goto_0
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DndScheduleConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/DndScheduleConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 2

    const-string v0, "    DndScheduleConditionProvider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "      mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "      mLookaheadThreshold="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mLookaheadThreshold:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mLookaheadThreshold:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      mCalendar="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "      mFiredAlarms="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "      mDowntimed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mDowntimed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "      mConditionClearing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConditionClearing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "      mRequesting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mRequesting:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public onConnected()V
    .locals 8

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DndScheduleCondition"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConnected:Z

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mContext:Landroid/content/Context;

    const-string v1, "downtime.condition.lookahead"

    const v2, 0x10e0091

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/PropConfig;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mLookaheadThreshold:J

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "DndScheduleCondition.enter"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "DndScheduleCondition.exit"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTrackerCallback:Lcom/android/server/notification/NextAlarmTracker$Callback;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NextAlarmTracker;->addCallback(Lcom/android/server/notification/NextAlarmTracker$Callback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mZenCallback:Lcom/android/server/notification/ZenModeHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    invoke-direct {p0}, Lcom/android/server/notification/DndScheduleConditionProvider;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-boolean v0, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DndScheduleCondition"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mTrackerCallback:Lcom/android/server/notification/NextAlarmTracker$Callback;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NextAlarmTracker;->removeCallback(Lcom/android/server/notification/NextAlarmTracker$Callback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mZenCallback:Lcom/android/server/notification/ZenModeHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConnected:Z

    return-void
.end method

.method public onManualConditionClearing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConditionClearing:Z

    return-void
.end method

.method public onRequestConditions(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DndScheduleCondition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequestConditions relevance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConnected:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mRequesting:Z

    invoke-direct {p0}, Lcom/android/server/notification/DndScheduleConditionProvider;->evaluateSubscriptions()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 4

    sget-boolean v1, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DndScheduleCondition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSubscribe conditionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;

    invoke-virtual {v1}, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->clear()V

    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/server/notification/DndScheduleConditionProvider;->notifyCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)V

    goto :goto_0
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DndScheduleCondition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUnsubscribe conditionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;

    invoke-virtual {v1}, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->clear()V

    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    move v0, v4

    :goto_1
    iget-object v5, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    iget-object v5, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v5, v5, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    iget-boolean v6, p1, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-eq v5, v6, :cond_5

    :cond_3
    move v2, v4

    :goto_2
    iput-object p1, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    :goto_3
    iget-boolean v3, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConnected:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    iget-object v3, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Lcom/android/server/notification/DowntimeCalendar;->setDowntimeInfo(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)V

    invoke-direct {p0}, Lcom/android/server/notification/DndScheduleConditionProvider;->updateAlarms()V

    invoke-direct {p0, v1}, Lcom/android/server/notification/DndScheduleConditionProvider;->evaluateAutotrigger(I)V

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    const/4 v1, 0x2

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    goto :goto_4
.end method

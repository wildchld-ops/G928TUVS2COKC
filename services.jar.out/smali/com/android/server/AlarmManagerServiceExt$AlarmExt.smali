.class public Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
.super Lcom/android/server/AlarmManagerService$Alarm;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmExt"
.end annotation


# instance fields
.field public isExact:Z

.field public isIntervalChanged:Z

.field public isPassedAlarm:Z

.field public isWhitelist:Z

.field public keyId:I

.field public lastTriggerWhen:J

.field public repeatIntervalOriginal:J

.field public repeatIntervalWindow:J


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 19

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->userId:I

    move/from16 v17, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v17}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->pid:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->pid:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->count:I

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    :goto_0
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhen:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.class Lcom/android/server/notification/DndScheduleConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "DndScheduleConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/DndScheduleConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/DndScheduleConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/DndScheduleConditionProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/DndScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v6, "DndScheduleCondition.enter"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "DndScheduleCondition.exit"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const-string/jumbo v6, "time"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    # getter for: Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$100()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "DndScheduleCondition"

    const-string v7, "%s scheduled for %s, fired at %s, delta=%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    # invokes: Lcom/android/server/notification/DndScheduleConditionProvider;->ts(J)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$200(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    # invokes: Lcom/android/server/notification/DndScheduleConditionProvider;->ts(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$200(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sub-long v10, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    # getter for: Lcom/android/server/notification/DndScheduleConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;
    invoke-static {v6}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$300(Lcom/android/server/notification/DndScheduleConditionProvider;)Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->clear()V

    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    # invokes: Lcom/android/server/notification/DndScheduleConditionProvider;->updateAlarms()V
    invoke-static {v6}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$500(Lcom/android/server/notification/DndScheduleConditionProvider;)V

    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    # getter for: Lcom/android/server/notification/DndScheduleConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v6}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$600(Lcom/android/server/notification/DndScheduleConditionProvider;)Landroid/service/notification/ZenModeConfig;

    move-result-object v6

    iget-boolean v6, v6, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-nez v6, :cond_8

    const-string v6, "DndScheduleCondition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored because schedule turned off."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_3
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    # getter for: Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$100()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "DndScheduleCondition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timezone changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    # getter for: Lcom/android/server/notification/DndScheduleConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;
    invoke-static {v6}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$400(Lcom/android/server/notification/DndScheduleConditionProvider;)Lcom/android/server/notification/DowntimeCalendar;

    move-result-object v6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/notification/DowntimeCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    # getter for: Lcom/android/server/notification/DndScheduleConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;
    invoke-static {v6}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$300(Lcom/android/server/notification/DndScheduleConditionProvider;)Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->clear()V

    goto :goto_0

    :cond_5
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    # getter for: Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$100()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "DndScheduleCondition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "time changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    # getter for: Lcom/android/server/notification/DndScheduleConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;
    invoke-static {v6}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$300(Lcom/android/server/notification/DndScheduleConditionProvider;)Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->clear()V

    goto/16 :goto_0

    :cond_7
    # getter for: Lcom/android/server/notification/DndScheduleConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$100()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "DndScheduleCondition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fired at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    const-string v6, "DndScheduleCondition.enter"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "DndScheduleCondition.exit"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_9
    const/4 v1, 0x5

    :cond_a
    :goto_2
    iget-object v6, p0, Lcom/android/server/notification/DndScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    # invokes: Lcom/android/server/notification/DndScheduleConditionProvider;->evaluateAutotrigger(I)V
    invoke-static {v6, v1}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$700(Lcom/android/server/notification/DndScheduleConditionProvider;I)V

    goto/16 :goto_1

    :cond_b
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v1, 0x4

    goto :goto_2

    :cond_c
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v1, 0x3

    goto :goto_2
.end method

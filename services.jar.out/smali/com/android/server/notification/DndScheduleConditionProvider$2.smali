.class Lcom/android/server/notification/DndScheduleConditionProvider$2;
.super Ljava/lang/Object;
.source "DndScheduleConditionProvider.java"

# interfaces
.implements Lcom/android/server/notification/NextAlarmTracker$Callback;


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

    iput-object p1, p0, Lcom/android/server/notification/DndScheduleConditionProvider$2;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvaluate(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider$2;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    # invokes: Lcom/android/server/notification/DndScheduleConditionProvider;->onEvaluateNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$800(Lcom/android/server/notification/DndScheduleConditionProvider;Landroid/app/AlarmManager$AlarmClockInfo;JZ)V

    return-void
.end method

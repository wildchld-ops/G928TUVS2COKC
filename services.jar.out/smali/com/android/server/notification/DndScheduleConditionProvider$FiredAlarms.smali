.class Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;
.super Ljava/lang/Object;
.source "DndScheduleConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/DndScheduleConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FiredAlarms"
.end annotation


# instance fields
.field private final mFiredAlarms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/notification/DndScheduleConditionProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/DndScheduleConditionProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/DndScheduleConditionProvider;Lcom/android/server/notification/DndScheduleConditionProvider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;-><init>(Lcom/android/server/notification/DndScheduleConditionProvider;)V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public findBefore(J)Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-lez v0, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    # getter for: Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;
    invoke-static {v2}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$900(Lcom/android/server/notification/DndScheduleConditionProvider;)Lcom/android/server/notification/NextAlarmTracker;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    # getter for: Lcom/android/server/notification/DndScheduleConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;
    invoke-static {v2}, Lcom/android/server/notification/DndScheduleConditionProvider;->access$900(Lcom/android/server/notification/DndScheduleConditionProvider;)Lcom/android/server/notification/NextAlarmTracker;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/notification/DndScheduleConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

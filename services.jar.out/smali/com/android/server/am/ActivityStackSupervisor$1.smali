.class Lcom/android/server/am/ActivityStackSupervisor$1;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/app/ActivityManager$RunningTaskInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 12

    iget-wide v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveElapsedTime:J

    iget-wide v6, p2, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveElapsedTime:J

    sub-long v8, v2, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    const/4 v8, -0x1

    :goto_0
    return v8

    :cond_0
    sub-long v8, v2, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    iget-wide v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    sub-long v8, v0, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    const/4 v8, -0x1

    goto :goto_0

    :cond_2
    sub-long v8, v0, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$1;->compare(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    return v0
.end method

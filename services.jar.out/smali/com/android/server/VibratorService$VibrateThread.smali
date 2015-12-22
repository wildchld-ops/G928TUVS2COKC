.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$Vibration;->getPackageName()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/server/VibratorService;->mLastStartWakeLock:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/VibratorService;->access$1502(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private delay(J)V
    .locals 7

    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, p1, v2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long p1, v0, v2

    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v1, -0x8

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v10

    array-length v9, v10

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    move v8, v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v1, :cond_9

    if-ge v8, v9, :cond_0

    add-int/lit8 v0, v8, 0x1

    aget-wide v6, v10, v8

    add-long/2addr v2, v6

    move v8, v0

    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    iget-boolean v1, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v1, :cond_3

    move v0, v8

    :goto_1
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v6, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v6}, Lcom/android/server/VibratorService$Vibration;->getPackageName()Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/server/VibratorService;->mLastEndWakeLock:Ljava/lang/String;
    invoke-static {v1, v6}, Lcom/android/server/VibratorService;->access$2102(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, v1, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v1, v7}, Lcom/android/server/VibratorService;->access$2200(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_3
    if-ge v8, v9, :cond_6

    add-int/lit8 v0, v8, 0x1

    :try_start_2
    aget-wide v2, v10, v8

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_8

    # getter for: Lcom/android/server/VibratorService;->USE_VIBETONZ:Z
    invoke-static {}, Lcom/android/server/VibratorService;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v6, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z
    invoke-static {v7}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {v7}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    :goto_2
    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JIILjava/lang/String;I)V
    invoke-static/range {v1 .. v7}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;JIILjava/lang/String;I)V

    move v8, v0

    goto/16 :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mDefaultMagnitude:I
    invoke-static {v7}, Lcom/android/server/VibratorService;->access$1800(Lcom/android/server/VibratorService;)I

    move-result v7

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JII)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;JII)V

    move v8, v0

    goto/16 :goto_0

    :cond_6
    if-gez v11, :cond_7

    move v0, v8

    goto/16 :goto_1

    :cond_7
    move v0, v11

    const-wide/16 v2, 0x0

    move v8, v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_8
    move v8, v0

    goto/16 :goto_0

    :cond_9
    move v0, v8

    goto/16 :goto_1
.end method

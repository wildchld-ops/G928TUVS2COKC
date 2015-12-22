.class Lcom/android/server/am/ActivityManagerService$13;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->SPCMRegistReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "com.android.server.am.BROADCAST_SERVICEMANAGER_SHIRINKSERVICE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v7, "servicemanager_servicelimit"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "servicemanager_memoryfree"

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mLastSPCMWorkingTime:J
    invoke-static {v7}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/16 v10, 0x7530

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Lcom/android/server/am/ActivityManagerService;->mLastSPCMWorkingTime:J
    invoke-static {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->access$1902(Lcom/android/server/am/ActivityManagerService;J)J

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mWallpaperServiceLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v7, Lcom/android/server/am/ActivityManagerService;->mAppWidgetServiceLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mCachedServiceList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerService;->access$2000(Lcom/android/server/am/ActivityManagerService;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mServiceList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerService;->access$2100(Lcom/android/server/am/ActivityManagerService;)Ljava/util/ArrayList;

    move-result-object v12

    # invokes: Lcom/android/server/am/ActivityManagerService;->getLowestScorePackageAndKillLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v7, v11, v12}, Lcom/android/server/am/ActivityManagerService;->access$2200(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7

    :catchall_1
    move-exception v7

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v7

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v7

    :cond_2
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mGcmFreezingEnable:Z
    invoke-static {v7}, Lcom/android/server/am/ActivityManagerService;->access$2300(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->SPCM_GCM_KILL_ENABLE:Z
    invoke-static {v7}, Lcom/android/server/am/ActivityManagerService;->access$2400(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isConnectedInChina()Z

    move-result v7

    if-nez v7, :cond_3

    sget-boolean v7, Lcom/android/server/LpnetManagerService;->mGCMAppFreezerEnabled:Z

    if-nez v7, :cond_4

    :cond_3
    const-string v7, "ActivityManager_GCMKill"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mAppLockEnabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/LpnetManagerService;->mGCMAppFreezerEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mGCMKillProcLists:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mGCMPushPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_4
    const-string v7, "ActivityManager_GCMKill"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "got SCREEN_OFF, OldListSize : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mGCMKillPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v8, Lcom/android/server/am/ActivityManagerService$13$1;

    invoke-direct {v8, p0}, Lcom/android/server/am/ActivityManagerService$13$1;-><init>(Lcom/android/server/am/ActivityManagerService$13;)V

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mDefaultFreezingInterval:J
    invoke-static {v9}, Lcom/android/server/am/ActivityManagerService;->access$2700(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "GCM_LOCKER_ALARM"

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mDefaultAlramInterval:J
    invoke-static {v9}, Lcom/android/server/am/ActivityManagerService;->access$2800(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v10

    # invokes: Lcom/android/server/am/ActivityManagerService;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v7, v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_5
    const-string v7, "GCM_LOCKER_ALARM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "ActivityManager_GCMKill"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "got intent GCM_LOCKER_ALARM, mScreenOn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mScreenOn:Z
    invoke-static {v9}, Lcom/android/server/am/ActivityManagerService;->access$2500(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mScreenOn:Z
    invoke-static {v7}, Lcom/android/server/am/ActivityManagerService;->access$2500(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mWallpaperServiceLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_8
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v7, Lcom/android/server/am/ActivityManagerService;->mAppWidgetServiceLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->killGCMPkgs()V
    invoke-static {v7}, Lcom/android/server/am/ActivityManagerService;->access$2600(Lcom/android/server/am/ActivityManagerService;)V

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "GCM_LOCKER_ALARM"

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mDefaultAlramInterval:J
    invoke-static {v9}, Lcom/android/server/am/ActivityManagerService;->access$2800(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v10

    # invokes: Lcom/android/server/am/ActivityManagerService;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v7, v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;J)V

    goto/16 :goto_0

    :catchall_3
    move-exception v7

    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v7

    :catchall_4
    move-exception v7

    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v7

    :catchall_5
    move-exception v7

    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v7
.end method

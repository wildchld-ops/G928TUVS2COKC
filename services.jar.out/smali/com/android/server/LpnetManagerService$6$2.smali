.class Lcom/android/server/LpnetManagerService$6$2;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$6;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LpnetManagerService$6$2;->this$1:Lcom/android/server/LpnetManagerService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/LpnetManagerService$6$2;->this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$3500(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LpnetManagerService$6$2;->this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService$6$2;->this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v1, v1, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$3600(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    # invokes: Lcom/android/server/LpnetManagerService;->screenOffAction(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/LpnetManagerService;->access$2300(Lcom/android/server/LpnetManagerService;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$6$2;->this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    iget-boolean v0, v0, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/LpnetManagerService$6$2;->this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mIdleTrafficMapLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$3700(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$6$2;->this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$3500(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$6$2;->this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1200(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/server/LpnetManagerService$6$2;->this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$3800(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$6$2;->this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v1, "ACTION_TRIGGER_IDLE"

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x0

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->access$3100(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    goto :goto_0
.end method

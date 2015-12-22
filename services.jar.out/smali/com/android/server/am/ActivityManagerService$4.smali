.class Lcom/android/server/am/ActivityManagerService$4;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->RunUpdateActiveInActivePackagesThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->isFirst:Z

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x1d4c0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->SPCM_PRELOAD_ENABLE:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCSCPackagesList()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->updateActiveInActivePackagesLocked()V
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$1500(Lcom/android/server/am/ActivityManagerService;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "ActivityManager"

    const-string/jumbo v3, "mUpdateActiveInActivePackagesThread-1"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->SPCM_DB_ENABLE:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->RunSPCMDB()V
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$1600(Lcom/android/server/am/ActivityManagerService;)V

    :goto_1
    const-string v2, "ActivityManager"

    const-string/jumbo v3, "mUpdateActiveInActivePackagesThread-2"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0x36ee80

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2}, Lcom/android/server/am/ActiveServices;->getServiceTotalTransactions()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->updateActiveInActivePackagesLocked()V
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$1500(Lcom/android/server/am/ActivityManagerService;)V

    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

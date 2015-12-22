.class Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;
.super Landroid/os/Handler;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# static fields
.field private static final APP_FORCE_STOP:I = 0x0

.field private static final DISABLE_SOLN:I = 0x3

.field private static final ENABLE_SOLN:I = 0x2

.field private static final UNFREEZE:I = 0x1


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;


# direct methods
.method private constructor <init>(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Lcom/android/server/LpnetManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;-><init>(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15

    const/4 v14, 0x1

    :try_start_0
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "LpnetManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MSG REVD ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    if-nez v11, :cond_5

    new-instance v1, Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    invoke-direct {v1, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    invoke-virtual {v11, v7}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    const-string v11, "LpnetManagerService"

    const-string v12, "Exception in WorkerHandler.handleMessage:"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_5
    :try_start_4
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    if-ne v11, v14, :cond_7

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    move-object v0, v11

    check-cast v0, [Ljava/lang/String;

    move-object v10, v0

    if-eqz v10, :cond_2

    move-object v2, v10

    array-length v6, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_2

    aget-object v8, v2, v4

    if-eqz v8, :cond_6

    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->unFreeze(Ljava/lang/String;)V
    invoke-static {v11, v8}, Lcom/android/server/LpnetManagerService;->access$6100(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    const/4 v12, 0x1

    # invokes: Lcom/android/server/LpnetManagerService;->enableDisableSoln(Z)V
    invoke-static {v11, v12}, Lcom/android/server/LpnetManagerService;->access$6200(Lcom/android/server/LpnetManagerService;Z)V

    goto :goto_2

    :cond_8
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    const/4 v12, 0x0

    # invokes: Lcom/android/server/LpnetManagerService;->enableDisableSoln(Z)V
    invoke-static {v11, v12}, Lcom/android/server/LpnetManagerService;->access$6200(Lcom/android/server/LpnetManagerService;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

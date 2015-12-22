.class Lcom/android/server/pm/PersonaManagerService$8;
.super Landroid/app/IStopUserCallback$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->handleRestart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$info:Landroid/content/pm/PersonaInfo;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$8;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$8;->val$info:Landroid/content/pm/PersonaInfo;

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 3

    const-string v0, "PersonaManagerService"

    const-string v1, " abort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$8;->val$info:Landroid/content/pm/PersonaInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$8;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$900(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$8;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$8;->val$info:Landroid/content/pm/PersonaInfo;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v0, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public userStopped(I)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "PersonaManagerService"

    const-string v2, " user stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$8;->val$info:Landroid/content/pm/PersonaInfo;

    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$8;->val$info:Landroid/content/pm/PersonaInfo;

    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$8;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$900(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$8;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$8;->val$info:Landroid/content/pm/PersonaInfo;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v1, v3}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$8;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v2, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile Exception in startUserInBackground "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

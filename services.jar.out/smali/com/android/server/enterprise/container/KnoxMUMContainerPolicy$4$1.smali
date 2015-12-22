.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

.field final synthetic val$newState:Landroid/content/pm/PersonaState;

.field final synthetic val$oldState:Landroid/content/pm/PersonaState;

.field final synthetic val$personaId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iput-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$newState:Landroid/content/pm/PersonaState;

    iput-object p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$oldState:Landroid/content/pm/PersonaState;

    iput p4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersonaObserver.onStateChange() inside handler state: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$newState:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " old state: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$oldState:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v15

    if-nez v15, :cond_1

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to get persona info for user "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-boolean v0, v15, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    move/from16 v18, v0

    iget-boolean v0, v15, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v1

    sget-object v3, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v17

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isUserManaged "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " and user-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " and isKioskEnabled-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " and isSuperLocked-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$newState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$oldState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    invoke-static {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    invoke-virtual/range {v21 .. v21}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v7

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    invoke-static {v1, v0, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;II)V

    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    const-string v7, "com.sec.knox.containeragent.klms.created.b2c"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$oldState:Landroid/content/pm/PersonaState;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(Landroid/content/pm/PersonaState;)I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2000(Landroid/content/pm/PersonaState;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$newState:Landroid/content/pm/PersonaState;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(Landroid/content/pm/PersonaState;)I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2000(Landroid/content/pm/PersonaState;)I

    move-result v6

    if-eq v6, v5, :cond_8

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_7

    move-object/from16 v13, v22

    array-length v0, v13

    move/from16 v19, v0

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v14, v0, :cond_8

    aget-object v2, v13, v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "onStateChange null params when switching from init to active. Removing container....."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    const/4 v7, 0x1

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;IZ)I

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    const-string v7, "com.sec.knox.containeragent.klms.created.b2b"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$newState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    const-string v7, "com.sec.knox.containeragent.klms.removed.b2c"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    const-string v7, "com.sec.knox.containeragent.klms.removed.b2b"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v7, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    move v10, v4

    move v11, v5

    move v12, v6

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$newState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$newState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_a

    move-object/from16 v13, v22

    array-length v0, v13

    move/from16 v19, v0

    const/4 v14, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v14, v0, :cond_0

    aget-object v2, v13, v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V
    invoke-static {v1, v3, v7, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    goto/16 :goto_0
.end method

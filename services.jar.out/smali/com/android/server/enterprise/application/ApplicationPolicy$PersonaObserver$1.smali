.class Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->onStateChange(Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

.field final synthetic val$newState:Landroid/content/pm/PersonaState;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;Landroid/content/pm/PersonaState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->val$newState:Landroid/content/pm/PersonaState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->val$newState:Landroid/content/pm/PersonaState;

    sget-object v7, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2000()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_2

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2000()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2000()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->containerId:I
    invoke-static {v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->access$2100(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;)I

    move-result v6

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->startCachedAppsForActiveUser(JI)V
    invoke-static {v6, v0, v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2200(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->val$newState:Landroid/content/pm/PersonaState;

    sget-object v7, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaObservers:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2400(Lcom/android/server/enterprise/application/ApplicationPolicy;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->containerId:I
    invoke-static {v7}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->access$2300(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->unregisterPersonaObserver()V

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaObservers:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2400(Lcom/android/server/enterprise/application/ApplicationPolicy;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->containerId:I
    invoke-static {v7}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->access$2500(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

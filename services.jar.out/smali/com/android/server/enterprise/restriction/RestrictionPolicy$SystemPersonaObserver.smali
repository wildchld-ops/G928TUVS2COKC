.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemPersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .locals 0

    return-void
.end method

.method public onPersonaActive(I)V
    .locals 3

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPersonaActive called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaMgr:Landroid/os/PersonaManager;
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$200(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/os/PersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->isKioskModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceStatusBarExpansion()V
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    :cond_0
    return-void
.end method

.method public onRemovePersona(I)V
    .locals 3

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemovePersona called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaMgr:Landroid/os/PersonaManager;
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$200(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/os/PersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->isKioskModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceStatusBarExpansion()V
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    :cond_0
    return-void
.end method

.method public onResetPersona(I)V
    .locals 3

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResetPersona called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaMgr:Landroid/os/PersonaManager;
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$200(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/os/PersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->isKioskModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceStatusBarExpansion()V
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    :cond_0
    return-void
.end method

.method public onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .locals 0

    return-void
.end method

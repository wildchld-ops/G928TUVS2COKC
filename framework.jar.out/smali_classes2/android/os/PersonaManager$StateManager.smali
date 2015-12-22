.class public Landroid/os/PersonaManager$StateManager;
.super Ljava/lang/Object;
.source "PersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateManager"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IPersonaManager;

.field private userId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iput-object p1, p0, Landroid/os/PersonaManager$StateManager;->mContext:Landroid/content/Context;

    iput p3, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;ILandroid/os/PersonaManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/os/PersonaManager$StateManager;-><init>(Landroid/content/Context;Landroid/os/IPersonaManager;I)V

    return-void
.end method


# virtual methods
.method public fireEvent(Landroid/content/pm/PersonaNewEvent;)Landroid/content/pm/PersonaState;
    .locals 3

    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.fireEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreviousState()Landroid/content/pm/PersonaState;
    .locals 3

    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.getState()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getPreviousState(I)Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPreviousState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()Landroid/content/pm/PersonaState;
    .locals 3

    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getState(I)Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public inState(Landroid/content/pm/PersonaState;)Z
    .locals 3

    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->inState(Landroid/content/pm/PersonaState;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAttribute(Landroid/content/pm/PersonaAttribute;)Z
    .locals 3

    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.isAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAttribute(Landroid/content/pm/PersonaAttribute;Z)Z
    .locals 3

    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.setAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IPersonaManager;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.class public Lcom/android/server/pm/state/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/state/StateMachine$1;,
        Lcom/android/server/pm/state/StateMachine$StateWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final GETSTATE_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StateMachine"


# instance fields
.field private attributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PersonaAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation
.end field

.field private personaId:I

.field private pms:Lcom/android/server/pm/PersonaManagerService;

.field private previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation
.end field

.field private states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TS;",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PersonaManagerService;",
            "ITS;TS;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/pm/state/StateMachine;->pms:Lcom/android/server/pm/PersonaManagerService;

    iput p2, p0, Lcom/android/server/pm/state/StateMachine;->personaId:I

    new-instance v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-direct {v0, p0, p3, v3}, Lcom/android/server/pm/state/StateMachine$StateWrapper;-><init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;Lcom/android/server/pm/state/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addState() added currentState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p3, p4, :cond_0

    new-instance v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-direct {v0, p0, p4, v3}, Lcom/android/server/pm/state/StateMachine$StateWrapper;-><init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;Lcom/android/server/pm/state/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addState() added previousState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    const-string v0, "StateMachine"

    const-string v1, "addState() previousState same as initialState"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$500(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/state/StateMachine;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    return-object v0
.end method

.method private getTriggerExceptions(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;)",
            "Ljava/util/Set",
            "<TA;>;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->triggerExceptionMaps:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$400(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->triggerExceptionMaps:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$400(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_0
.end method

.method private stateExists(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addState(Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;-><init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;Lcom/android/server/pm/state/StateMachine$1;)V

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addState() added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public configure(Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    return-object v0
.end method

.method public fireEvent(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)TS;"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->allowedTransitions:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$300(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fireEvent() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/server/pm/state/StateMachine;->getTriggerExceptions(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fireEvent() found triggerException for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in trigger "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->triggerExceptionMaps:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$400(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_1
    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->allowedTransitions:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$300(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fireEvent() setting state to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iput-object v5, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iput-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->pms:Lcom/android/server/pm/PersonaManagerService;

    iget v6, p0, Lcom/android/server/pm/state/StateMachine;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->persistPersonaInfo(I)V

    if-eqz p2, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->pms:Lcom/android/server/pm/PersonaManagerService;

    iget v6, p0, Lcom/android/server/pm/state/StateMachine;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->propagateNewStateChange(I)V

    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    :cond_4
    const-string v5, "StateMachine"

    const-string/jumbo v6, "fireEvent() no change in state"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fireEvent() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " no trigger for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPreviousState()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreviousState() returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v2}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inState(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inState() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/android/server/pm/state/StateMachine$StateWrapper;->isMyChild(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$200(Lcom/android/server/pm/state/StateMachine$StateWrapper;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public instanceOf(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)Z"
        }
    .end annotation

    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "instanceOf() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instanceOf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # invokes: Lcom/android/server/pm/state/StateMachine$StateWrapper;->isMyChild(Ljava/lang/Object;)Z
    invoke-static {v0, p1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$200(Lcom/android/server/pm/state/StateMachine$StateWrapper;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAttribute(Landroid/content/pm/PersonaAttribute;)Z
    .locals 3

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAttribute() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/PersonaAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listAttributes()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/pm/PersonaAttribute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAttribute(Landroid/content/pm/PersonaAttribute;Z)Z
    .locals 3

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAttribute() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/PersonaAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " states, current state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/state/StateMachine;->getState()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Landroid/content/pm/AbstractPersonaObserver;
.super Ljava/lang/Object;
.source "AbstractPersonaObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/AbstractPersonaObserver$1;,
        Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;
    }
.end annotation


# static fields
.field public static final FLAG_OBSERVER_ONATTRIBUTECHANGE:I = 0x8

.field public static final FLAG_OBSERVER_ONKEYGUARDSTATECHANGED:I = 0x4

.field public static final FLAG_OBSERVER_ONSESSIONEXPIRED:I = 0x2

.field public static final FLAG_OBSERVER_ONSTATECHANGE:I = 0x1


# instance fields
.field private checkOnAttributeChange:Z

.field private checkOnKeyguardStateChanged:Z

.field private checkOnSessionExpired:Z

.field private checkOnStateChange:Z

.field protected containerId:I

.field private context:Landroid/content/Context;

.field protected flags:I

.field private personaObserverReceiver:Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/AbstractPersonaObserver;->context:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/AbstractPersonaObserver;->containerId:I

    iput v1, p0, Landroid/content/pm/AbstractPersonaObserver;->flags:I

    iput-boolean v1, p0, Landroid/content/pm/AbstractPersonaObserver;->checkOnStateChange:Z

    iput-boolean v1, p0, Landroid/content/pm/AbstractPersonaObserver;->checkOnSessionExpired:Z

    iput-boolean v1, p0, Landroid/content/pm/AbstractPersonaObserver;->checkOnKeyguardStateChanged:Z

    iput-boolean v1, p0, Landroid/content/pm/AbstractPersonaObserver;->checkOnAttributeChange:Z

    iput-object p1, p0, Landroid/content/pm/AbstractPersonaObserver;->context:Landroid/content/Context;

    iput p2, p0, Landroid/content/pm/AbstractPersonaObserver;->containerId:I

    iput p3, p0, Landroid/content/pm/AbstractPersonaObserver;->flags:I

    invoke-direct {p0}, Landroid/content/pm/AbstractPersonaObserver;->initializeReceiver()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/pm/AbstractPersonaObserver;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/AbstractPersonaObserver;->checkOnStateChange:Z

    return v0
.end method

.method static synthetic access$200(Landroid/content/pm/AbstractPersonaObserver;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/AbstractPersonaObserver;->checkOnSessionExpired:Z

    return v0
.end method

.method static synthetic access$300(Landroid/content/pm/AbstractPersonaObserver;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/AbstractPersonaObserver;->checkOnKeyguardStateChanged:Z

    return v0
.end method

.method static synthetic access$400(Landroid/content/pm/AbstractPersonaObserver;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/AbstractPersonaObserver;->checkOnAttributeChange:Z

    return v0
.end method

.method private initializeReceiver()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v1, Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;

    invoke-direct {v1, p0, v5}, Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;-><init>(Landroid/content/pm/AbstractPersonaObserver;Landroid/content/pm/AbstractPersonaObserver$1;)V

    iput-object v1, p0, Landroid/content/pm/AbstractPersonaObserver;->personaObserverReceiver:Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;

    iget v1, p0, Landroid/content/pm/AbstractPersonaObserver;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.knox.container.action.observer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.knox.container.category.observer.containerid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/AbstractPersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sec.knox.container.category.observer.onstatechange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iput-boolean v4, p0, Landroid/content/pm/AbstractPersonaObserver;->checkOnStateChange:Z

    iget-object v1, p0, Landroid/content/pm/AbstractPersonaObserver;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/AbstractPersonaObserver;->context:Landroid/content/Context;

    iget-object v2, p0, Landroid/content/pm/AbstractPersonaObserver;->personaObserverReceiver:Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;

    const-string v3, "com.samsung.container.OBSERVER"

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    iget v1, p0, Landroid/content/pm/AbstractPersonaObserver;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.knox.container.action.observer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.knox.container.category.observer.containerid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/AbstractPersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sec.knox.container.category.observer.onsessionexpired"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iput-boolean v4, p0, Landroid/content/pm/AbstractPersonaObserver;->checkOnSessionExpired:Z

    iget-object v1, p0, Landroid/content/pm/AbstractPersonaObserver;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/AbstractPersonaObserver;->context:Landroid/content/Context;

    iget-object v2, p0, Landroid/content/pm/AbstractPersonaObserver;->personaObserverReceiver:Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;

    const-string v3, "com.samsung.container.OBSERVER"

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    iget v1, p0, Landroid/content/pm/AbstractPersonaObserver;->flags:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.knox.container.action.observer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.knox.container.category.observer.containerid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/AbstractPersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sec.knox.container.category.observer.onkeyguardstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iput-boolean v4, p0, Landroid/content/pm/AbstractPersonaObserver;->checkOnKeyguardStateChanged:Z

    iget-object v1, p0, Landroid/content/pm/AbstractPersonaObserver;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/AbstractPersonaObserver;->context:Landroid/content/Context;

    iget-object v2, p0, Landroid/content/pm/AbstractPersonaObserver;->personaObserverReceiver:Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;

    const-string v3, "com.samsung.container.OBSERVER"

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_2
    iget v1, p0, Landroid/content/pm/AbstractPersonaObserver;->flags:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.knox.container.action.observer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.knox.container.category.observer.containerid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/AbstractPersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sec.knox.container.category.observer.onattributechange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iput-boolean v4, p0, Landroid/content/pm/AbstractPersonaObserver;->checkOnAttributeChange:Z

    iget-object v1, p0, Landroid/content/pm/AbstractPersonaObserver;->context:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/pm/AbstractPersonaObserver;->context:Landroid/content/Context;

    iget-object v2, p0, Landroid/content/pm/AbstractPersonaObserver;->personaObserverReceiver:Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;

    const-string v3, "com.samsung.container.OBSERVER"

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_3
    return-void
.end method


# virtual methods
.method public onAttributeChange(Landroid/content/pm/PersonaAttribute;Z)V
    .locals 0

    return-void
.end method

.method public abstract onKeyGuardStateChanged(Z)V
.end method

.method public abstract onSessionExpired()V
.end method

.method public abstract onStateChange(Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
.end method

.method public unregisterPersonaObserver()V
    .locals 2

    iget-object v0, p0, Landroid/content/pm/AbstractPersonaObserver;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/AbstractPersonaObserver;->context:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/pm/AbstractPersonaObserver;->personaObserverReceiver:Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

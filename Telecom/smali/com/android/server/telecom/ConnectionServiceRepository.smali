.class final Lcom/android/server/telecom/ConnectionServiceRepository;
.super Ljava/lang/Object;
.source "ConnectionServiceRepository.java"

# interfaces
.implements Lcom/android/server/telecom/ServiceBinder$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/telecom/ServiceBinder$Listener",
        "<",
        "Lcom/android/server/telecom/ConnectionServiceWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

.field private final mServiceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ">;",
            "Lcom/android/server/telecom/ConnectionServiceWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/ConnectionServiceRepository;->mServiceCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/telecom/ConnectionServiceRepository;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    iput-object p2, p0, Lcom/android/server/telecom/ConnectionServiceRepository;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    const-string v0, "mServiceCache:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceRepository;->mServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method getService(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/server/telecom/ConnectionServiceWrapper;
    .locals 7

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceRepository;->mServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/ConnectionServiceWrapper;

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceRepository;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    iget-object v4, p0, Lcom/android/server/telecom/ConnectionServiceRepository;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/ConnectionServiceWrapper;-><init>(Landroid/content/ComponentName;Lcom/android/server/telecom/ConnectionServiceRepository;Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->addListener(Lcom/android/server/telecom/ServiceBinder$Listener;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceRepository;->mServiceCache:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public onUnbind(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceRepository;->mServiceCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onUnbind(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 0

    check-cast p1, Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/ConnectionServiceRepository;->onUnbind(Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    return-void
.end method

.class final Lcom/android/server/telecom/ConnectionServiceWrapper;
.super Lcom/android/server/telecom/ServiceBinder;
.source "ConnectionServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/ConnectionServiceWrapper$BlankResponse;,
        Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/telecom/ServiceBinder",
        "<",
        "Lcom/android/internal/telecom/IConnectionService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;

.field private mBinder:Lcom/android/server/telecom/ServiceBinder$Binder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/telecom/ServiceBinder",
            "<",
            "Lcom/android/internal/telecom/IConnectionService;",
            ">.Binder;"
        }
    .end annotation
.end field

.field private final mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mConnectionServiceRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingConferenceCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/telecom/CreateConnectionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

.field private final mSecConnectionServiceWrapper:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

.field private mServiceInterface:Lcom/android/internal/telecom/IConnectionService;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Lcom/android/server/telecom/ConnectionServiceRepository;Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 4

    const-string v0, "android.telecom.ConnectionService"

    invoke-direct {p0, v0, p1, p4, p5}, Lcom/android/server/telecom/ServiceBinder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Context;Landroid/os/UserHandle;)V

    new-instance v0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper$1;-><init>(Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;-><init>(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper$1;)V

    iput-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mAdapter:Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingConferenceCalls:Ljava/util/Set;

    new-instance v0, Lcom/android/server/telecom/CallIdMapper;

    const-string v1, "ConnectionService"

    invoke-direct {v0, v1}, Lcom/android/server/telecom/CallIdMapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingResponses:Ljava/util/Map;

    new-instance v0, Lcom/android/server/telecom/ServiceBinder$Binder;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/ServiceBinder$Binder;-><init>(Lcom/android/server/telecom/ServiceBinder;)V

    iput-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mBinder:Lcom/android/server/telecom/ServiceBinder$Binder;

    iput-object p2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mConnectionServiceRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

    new-instance v0, Lcom/android/server/telecom/ConnectionServiceWrapper$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper$2;-><init>(Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    invoke-virtual {p3, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->addListener(Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;)V

    iput-object p3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    new-instance v0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;-><init>(Lcom/android/server/telecom/CallIdMapper;)V

    iput-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mSecConnectionServiceWrapper:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->noRemoteServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->setRemoteServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logIncoming(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/ConnectionServiceWrapper;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingResponses:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/internal/telecom/IConnectionService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    return-object v0
.end method

.method private addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 3

    const-string v0, "addConnectionServiceAdapter"

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "addConnectionServiceAdapter %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionService;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleConnectionServiceDeath()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingResponses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingResponses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingResponses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/telecom/CreateConnectionResponse;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/telecom/CreateConnectionResponse;

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingResponses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    new-instance v3, Landroid/telecom/DisconnectCause;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-interface {v2, v3}, Lcom/android/server/telecom/CreateConnectionResponse;->handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallIdMapper;->clear()V

    return-void
.end method

.method private handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 2

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->removeCall(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingResponses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingResponses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CreateConnectionResponse;

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-interface {v0, v1, p3}, Lcom/android/server/telecom/CreateConnectionResponse;->handleCreateConnectionSuccess(Lcom/android/server/telecom/CallIdMapper;Landroid/telecom/ParcelableConnection;)V

    goto :goto_0
.end method

.method private varargs logIncoming(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionService -> Telecom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Telecom -> ConnectionService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private noRemoteServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 5

    :try_start_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telecom/RemoteServiceCallback;->onResult(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Contacting ConnectionService %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    const-string v1, "queryRemoteConnectionServices finds simCallManager = %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->noRemoteServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v2, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mConnectionServiceRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/telecom/ConnectionServiceRepository;->getService(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "queryRemoteConnectionServices, simServices = %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-eq v2, p0, :cond_5

    iget-object v8, v2, Lcom/android/server/telecom/ConnectionServiceWrapper;->mBinder:Lcom/android/server/telecom/ServiceBinder$Binder;

    new-instance v0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/telecom/ConnectionServiceWrapper$4;-><init>(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/util/List;Ljava/util/List;Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/util/Set;)V

    invoke-virtual {v8, v0}, Lcom/android/server/telecom/ServiceBinder$Binder;->bind(Lcom/android/server/telecom/ServiceBinder$BindCallback;)V

    goto :goto_1
.end method

.method private setRemoteServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telecom/RemoteServiceCallback;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2, p3}, Lcom/android/internal/telecom/RemoteServiceCallback;->onResult(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Contacting ConnectionService %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method abort(Lcom/android/server/telecom/Call;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "abort"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "abort %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionService;->abort(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->removeCall(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method addCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->addCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    return-void
.end method

.method answer(Lcom/android/server/telecom/Call;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "answer"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "answer %s %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionService;->answer(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0, p2}, Lcom/android/internal/telecom/IConnectionService;->answerVideo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method conference(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v1, p2}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "conference"

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "conference %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method createConnection(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/CreateConnectionResponse;)V
    .locals 4

    const-string v0, "createConnection(%s) via %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/telecom/ConnectionServiceWrapper$3;-><init>(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/Call;Lcom/android/server/telecom/CreateConnectionResponse;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mBinder:Lcom/android/server/telecom/ServiceBinder$Binder;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/ServiceBinder$Binder;->bind(Lcom/android/server/telecom/ServiceBinder$BindCallback;)V

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mSecConnectionServiceWrapper:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->bind()V

    return-void
.end method

.method disconnect(Lcom/android/server/telecom/Call;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "disconnect"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "disconnect %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mSecConnectionServiceWrapper:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    return-object v0
.end method

.method hold(Lcom/android/server/telecom/Call;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "hold"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "hold %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method mergeConference(Lcom/android/server/telecom/Call;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mergeConference"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "mergeConference %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionService;->mergeConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method onAudioStateChanged(Lcom/android/server/telecom/Call;Landroid/telecom/AudioState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "onAudioStateChanged"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "onAudioStateChanged %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0, p2}, Lcom/android/internal/telecom/IConnectionService;->onAudioStateChanged(Ljava/lang/String;Landroid/telecom/AudioState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method onPostDialContinue(Lcom/android/server/telecom/Call;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "onPostDialContinue"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "onPostDialContinue %s %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0, p2}, Lcom/android/internal/telecom/IConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method playDtmfTone(Lcom/android/server/telecom/Call;C)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "playDtmfTone"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "playDtmfTone %s %c"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0, p2}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method reject(Lcom/android/server/telecom/Call;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "reject"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "reject %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionService;->reject(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method removeCall(Lcom/android/server/telecom/Call;)V
    .locals 2

    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->removeCall(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V

    return-void
.end method

.method removeCall(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingResponses:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CreateConnectionResponse;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/android/server/telecom/CreateConnectionResponse;->handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->removeCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method removeCall(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingResponses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CreateConnectionResponse;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/android/server/telecom/CreateConnectionResponse;->handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->removeCall(Ljava/lang/String;)V

    return-void
.end method

.method protected setServiceInterface(Landroid/os/IBinder;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->handleConnectionServiceDeath()V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/CallsManager;->handleConnectionServiceDeath(Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/internal/telecom/IConnectionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mAdapter:Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    goto :goto_0
.end method

.method splitFromConference(Lcom/android/server/telecom/Call;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "splitFromConference"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "splitFromConference %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionService;->splitFromConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method stopDtmfTone(Lcom/android/server/telecom/Call;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "stopDtmfTone"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "stopDtmfTone %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method swapConference(Lcom/android/server/telecom/Call;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "swapConference"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "swapConference %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionService;->swapConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected unbind()V
    .locals 1

    invoke-super {p0}, Lcom/android/server/telecom/ServiceBinder;->unbind()V

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mSecConnectionServiceWrapper:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->unbind()V

    return-void
.end method

.method unhold(Lcom/android/server/telecom/Call;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "unhold"

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "unhold %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->logOutgoing(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

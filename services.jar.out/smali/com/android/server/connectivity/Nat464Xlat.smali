.class public Lcom/android/server/connectivity/Nat464Xlat;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Nat464Xlat.java"


# static fields
.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field static final LOG_LEVEL_PROP:Ljava/lang/String; = "ro.debug_level"

.field static final LOG_LEVEL_PROP_HIGH:Ljava/lang/String; = "0x4948"

.field static final LOG_LEVEL_PROP_LOW:Ljava/lang/String; = "0x4f4c"

.field static final LOG_LEVEL_PROP_MID:Ljava/lang/String; = "0x494d"

.field private static final TAG:Ljava/lang/String; = "Nat464Xlat"


# instance fields
.field private mBaseIface:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIface:Ljava/lang/String;

.field private mIsRunning:Z

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    iput-object p2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    iput-object p3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    return-void
.end method

.method private getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    :goto_1
    const-string v2, "Nat464Xlat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting link properties: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static isDebugLevelNotLow()Z
    .locals 3

    const-string/jumbo v1, "ro.debug_level"

    const-string v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4f4c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;
    .locals 5

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    new-instance v0, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/LinkAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    invoke-virtual {v1, p1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    return-object v1
.end method

.method private maybeSetIpv6NdOffload(Ljava/lang/String;Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v2, "Nat464Xlat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string v1, "En"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "abling ND offload on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing IPv6 ND offload on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "Dis"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v1

    :goto_0
    invoke-static {}, Lcom/android/server/connectivity/Nat464Xlat;->isDebugLevelNotLow()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Nat464Xlat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requiresClat: netType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", connected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hasIPv4Address="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method private updateConnectivityService(Landroid/net/LinkProperties;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mHandler:Landroid/os/Handler;

    const v2, 0x81003

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending message to ConnectivityService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public fixupLinkProperties(Landroid/net/LinkProperties;)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Nat464Xlat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clatd running, updating NAI for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    :cond_1
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Nat464Xlat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is up, mIsRunning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Nat464Xlat;->getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/Nat464Xlat;->maybeSetIpv6NdOffload(Ljava/lang/String;Z)V

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    const-string v2, "Nat464Xlat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding stacked link "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on top of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Nat464Xlat;->updateConnectivityService(Landroid/net/LinkProperties;)V

    goto :goto_0
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removed, mIsRunning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p0}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->stopClatd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/Nat464Xlat;->maybeSetIpv6NdOffload(Ljava/lang/String;Z)V

    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->removeStackedLink(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->clear()V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->updateConnectivityService(Landroid/net/LinkProperties;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Nat464Xlat"

    const-string/jumbo v2, "startClat: already started"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-nez v1, :cond_1

    const-string v1, "Nat464Xlat"

    const-string/jumbo v2, "startClat: Can\'t start clat with null LinkProperties"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "Nat464Xlat"

    const-string/jumbo v2, "startClat: Can\'t start clat on null interface"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startClat: Can\'t register interface observer for clat on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v4-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting clatd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->startClatd(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :goto_1
    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting clatd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public stop()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Nat464Xlat"

    const-string v2, "Stopping clatd"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->stopClatd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping clatd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Nat464Xlat"

    const-string v2, "clatd: already stopped"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

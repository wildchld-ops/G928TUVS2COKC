.class final Lcom/android/services/telephony/CdmaConferenceController;
.super Ljava/lang/Object;
.source "CdmaConferenceController.java"


# instance fields
.field private final mCdmaConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/CdmaConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConference:Lcom/android/services/telephony/CdmaConference;

.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/CdmaConferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/CdmaConferenceController$1;-><init>(Lcom/android/services/telephony/CdmaConferenceController;)V

    iput-object v0, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/CdmaConferenceController;->mCdmaConnections:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/CdmaConferenceController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/CdmaConferenceController;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/CdmaConferenceController;

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConferenceController;->recalculateConference()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/CdmaConferenceController;Lcom/android/services/telephony/CdmaConnection;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/CdmaConferenceController;
    .param p1    # Lcom/android/services/telephony/CdmaConnection;

    invoke-direct {p0, p1}, Lcom/android/services/telephony/CdmaConferenceController;->remove(Lcom/android/services/telephony/CdmaConnection;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/services/telephony/CdmaConferenceController;Lcom/android/services/telephony/CdmaConnection;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/CdmaConferenceController;
    .param p1    # Lcom/android/services/telephony/CdmaConnection;

    invoke-direct {p0, p1}, Lcom/android/services/telephony/CdmaConferenceController;->addInternal(Lcom/android/services/telephony/CdmaConnection;)V

    return-void
.end method

.method private addInternal(Lcom/android/services/telephony/CdmaConnection;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/CdmaConnection;

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConferenceController;->mCdmaConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/CdmaConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    invoke-virtual {p1, p0}, Lcom/android/services/telephony/CdmaConnection;->setCdmaConferenceController(Lcom/android/services/telephony/CdmaConferenceController;)V

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConferenceController;->recalculateConference()V

    return-void
.end method

.method private recalculateConference()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/services/telephony/CdmaConferenceController;->mCdmaConnections:Ljava/util/List;

    invoke-virtual {v7, v8}, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;->recalculateConferenceable(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mCdmaConnections:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mCdmaConnections:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {v1}, Lcom/android/services/telephony/CdmaConnection;->isCallWaiting()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/CdmaConnection;->getState()I

    move-result v7

    if-ne v7, v13, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v7, "recalculating conference calls %d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_8

    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isCurrentMergeState()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConference:Lcom/android/services/telephony/CdmaConference;

    if-nez v7, :cond_2

    const-string v7, "Creating new Cdma conference call"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mCdmaConnections:Ljava/util/List;

    iget-object v8, p0, Lcom/android/services/telephony/CdmaConferenceController;->mCdmaConnections:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {v5}, Lcom/android/services/telephony/CdmaConnection;->isOutgoing()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lcom/android/services/telephony/CdmaConference;

    invoke-direct {v7, v12}, Lcom/android/services/telephony/CdmaConference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    iput-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConference:Lcom/android/services/telephony/CdmaConference;

    iget-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConference:Lcom/android/services/telephony/CdmaConference;

    invoke-virtual {v7, v13}, Lcom/android/services/telephony/CdmaConference;->updateCapabilities(I)V

    :goto_1
    const/4 v4, 0x1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConference:Lcom/android/services/telephony/CdmaConference;

    invoke-virtual {v7}, Lcom/android/services/telephony/CdmaConference;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/CdmaConnection;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "Adding connection to conference call: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConference:Lcom/android/services/telephony/CdmaConference;

    invoke-virtual {v7, v1}, Lcom/android/services/telephony/CdmaConference;->addConnection(Landroid/telecom/Connection;)Z

    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v7, Lcom/android/services/telephony/CdmaConference;

    invoke-direct {v7, v12}, Lcom/android/services/telephony/CdmaConference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    iput-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConference:Lcom/android/services/telephony/CdmaConference;

    iget-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConference:Lcom/android/services/telephony/CdmaConference;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/services/telephony/CdmaConference;->updateCapabilities(I)V

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Connection;

    iget-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConference:Lcom/android/services/telephony/CdmaConference;

    invoke-virtual {v7, v6}, Lcom/android/services/telephony/CdmaConference;->removeConnection(Landroid/telecom/Connection;)V

    const-string v7, "Removing connection from conference call: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    const-string v7, "Adding the conference call"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    iget-object v8, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConference:Lcom/android/services/telephony/CdmaConference;

    invoke-virtual {v7, v8}, Lcom/android/services/telephony/TelephonyConnectionService;->addConference(Landroid/telecom/Conference;)V

    :cond_7
    :goto_4
    return-void

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConference:Lcom/android/services/telephony/CdmaConference;

    if-eqz v7, :cond_7

    const-string v7, "Destroying the CDMA conference connection."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConference:Lcom/android/services/telephony/CdmaConference;

    invoke-virtual {v7}, Lcom/android/services/telephony/CdmaConference;->destroy()V

    iput-object v12, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConference:Lcom/android/services/telephony/CdmaConference;

    goto :goto_4
.end method

.method private remove(Lcom/android/services/telephony/CdmaConnection;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/CdmaConnection;

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/CdmaConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/CdmaConnection;->setCdmaConferenceController(Lcom/android/services/telephony/CdmaConferenceController;)V

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConferenceController;->mCdmaConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConferenceController;->recalculateConference()V

    return-void
.end method


# virtual methods
.method add(Lcom/android/services/telephony/CdmaConnection;)V
    .locals 6
    .param p1    # Lcom/android/services/telephony/CdmaConnection;

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/services/telephony/CdmaConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnectionService;->getGsmConnectionSize()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    const-string v1, "CdmaConnection but GsmConnection already is"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/CdmaConferenceController;->mCdmaConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/services/telephony/CdmaConnection;->isOutgoing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v5}, Lcom/android/services/telephony/CdmaConnection;->forceAsDialing(Z)V

    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConferenceController;->mCdmaConnections:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;->setHoldingForConference(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/services/telephony/CdmaConferenceController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/services/telephony/CdmaConferenceController$2;

    invoke-direct {v2, p0, p1}, Lcom/android/services/telephony/CdmaConferenceController$2;-><init>(Lcom/android/services/telephony/CdmaConferenceController;Lcom/android/services/telephony/CdmaConnection;)V

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/services/telephony/CdmaConferenceController;->addInternal(Lcom/android/services/telephony/CdmaConnection;)V

    goto :goto_0
.end method

.method public recalculate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConferenceController;->recalculateConference()V

    return-void
.end method

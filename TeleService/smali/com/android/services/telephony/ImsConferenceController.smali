.class public Lcom/android/services/telephony/ImsConferenceController;
.super Ljava/lang/Object;
.source "ImsConferenceController.java"


# instance fields
.field private final mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

.field private final mImsConferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/services/telephony/ImsConference;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelephonyConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/services/telephony/TelephonyConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;)V
    .locals 2
    .param p1    # Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/ImsConferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/ImsConferenceController$1;-><init>(Lcom/android/services/telephony/ImsConferenceController;)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mConferenceListener:Landroid/telecom/Conference$Listener;

    new-instance v0, Lcom/android/services/telephony/ImsConferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/ImsConferenceController$2;-><init>(Lcom/android/services/telephony/ImsConferenceController;)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/ImsConferenceController;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/services/telephony/ImsConferenceController;

    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/services/telephony/ImsConferenceController;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/ImsConferenceController;

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/services/telephony/ImsConferenceController;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/ImsConferenceController;

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConference()V

    return-void
.end method

.method private recalculate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConferenceable()V

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConference()V

    return-void
.end method

.method private recalculateConference()V
    .locals 4

    const-string v2, "recalculateConference"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/ImsConferenceController;->startConference(Lcom/android/services/telephony/TelephonyConnection;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private recalculateConferenceable()V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v9, "recalculateConferenceable : %d"

    new-array v10, v13, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Connection;

    sget-boolean v9, Lcom/android/services/telephony/Log;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "recalc - %s %s"

    new-array v10, v14, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/telecom/Connection;->getState()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    aput-object v5, v10, v13

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v5}, Landroid/telecom/Connection;->getState()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Conference;

    sget-boolean v9, Lcom/android/services/telephony/Log;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "recalc - %s %s"

    new-array v10, v14, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/telecom/Conference;->getState()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    aput-object v3, v10, v13

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v3}, Landroid/telecom/Conference;->getState()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v9, "active: %d, holding: %d"

    new-array v10, v14, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/IConferenceable;

    instance-of v9, v4, Landroid/telecom/Connection;

    if-eqz v9, :cond_4

    move-object v5, v4

    check-cast v5, Landroid/telecom/Connection;

    invoke-virtual {v5, v1}, Landroid/telecom/Connection;->setConferenceables(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/IConferenceable;

    instance-of v9, v4, Landroid/telecom/Connection;

    if-eqz v9, :cond_6

    move-object v5, v4

    check-cast v5, Landroid/telecom/Connection;

    invoke-virtual {v5, v0}, Landroid/telecom/Connection;->setConferenceables(Ljava/util/List;)V

    goto :goto_3

    :cond_7
    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/ImsConference;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    invoke-virtual {v2}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v9

    if-nez v9, :cond_8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    sget-boolean v9, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v9, :cond_a

    const-string v9, "conference conferenceable: %s"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v8, v10, v12

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v3, v8}, Lcom/android/services/telephony/ImsConference;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_4

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startConference(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 5
    .param p1    # Lcom/android/services/telephony/TelephonyConnection;

    sget-boolean v2, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string v2, "Start new ImsConference - connection: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->cloneConnection()Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v1

    new-instance v0, Lcom/android/services/telephony/ImsConference;

    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {v0, v2, v1}, Lcom/android/services/telephony/ImsConference;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/ImsConference;->setState(I)V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/TelephonyConnectionService;->addConference(Landroid/telecom/Conference;)V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/ImsConference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v2}, Lcom/android/services/telephony/TelephonyConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->clearOriginalConnection()V

    new-instance v2, Landroid/telecom/DisconnectCause;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->destroy()V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method add(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 3
    .param p1    # Lcom/android/services/telephony/TelephonyConnection;

    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "add connection %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/TelephonyConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConference()V

    return-void
.end method

.method remove(Landroid/telecom/Connection;)V
    .locals 3
    .param p1    # Landroid/telecom/Connection;

    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "remove connection: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConferenceable()V

    return-void
.end method

.class final Lcom/android/services/telephony/TelephonyConferenceController;
.super Ljava/lang/Object;
.source "TelephonyConferenceController.java"


# instance fields
.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

.field private mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

.field private final mTelephonyConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/TelephonyConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/TelephonyConferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConferenceController$1;-><init>(Lcom/android/services/telephony/TelephonyConferenceController;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/TelephonyConferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V

    return-void
.end method

.method private isFullConference(Landroid/telecom/Conference;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x63

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private participatesInFullConference(Landroid/telecom/Connection;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConferenceController;->isFullConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalculate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculateConference()V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculateConferenceable()V

    return-void
.end method

.method private recalculateConference()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_1

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_0

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v9, "Recalculate conference calls"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x2

    if-ge v6, v9, :cond_4

    const-string v9, "not enough connections to be a conference!"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    if-eqz v9, :cond_3

    const-string v9, "with a conference to destroy!"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9}, Lcom/android/services/telephony/TelephonyConference;->destroy()V

    iput-object v12, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9}, Lcom/android/services/telephony/TelephonyConference;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    instance-of v9, v3, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v9, :cond_5

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9, v3}, Lcom/android/services/telephony/TelephonyConference;->removeConnection(Landroid/telecom/Connection;)V

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9, v3}, Lcom/android/services/telephony/TelephonyConference;->addConnection(Landroid/telecom/Connection;)Z

    goto :goto_3

    :cond_8
    new-instance v9, Lcom/android/services/telephony/TelephonyConference;

    invoke-direct {v9, v12}, Lcom/android/services/telephony/TelephonyConference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    iput-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    const-string v9, "Adding a connection to a conference call"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9, v3}, Lcom/android/services/telephony/TelephonyConference;->addConnection(Landroid/telecom/Connection;)Z

    goto :goto_4

    :cond_9
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9, v10}, Lcom/android/services/telephony/TelephonyConnectionService;->addConference(Landroid/telecom/Conference;)V

    :cond_a
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    iget-object v11, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    iget-object v12, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v12}, Lcom/android/services/telephony/TelephonyConference;->getConnectionCapabilities()I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/android/services/utils/SecPhoneCapabilities;->getTelephonyConferenceCapabilities(Landroid/telecom/Conference;Ljava/util/List;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/services/telephony/TelephonyConference;->setConnectionCapabilities(I)V

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9}, Lcom/android/services/telephony/TelephonyConference;->getPrimaryConnection()Landroid/telecom/Connection;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telecom/Connection;->getState()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9}, Lcom/android/services/telephony/TelephonyConference;->setActive()V

    goto/16 :goto_1

    :pswitch_1
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9}, Lcom/android/services/telephony/TelephonyConference;->setOnHold()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private recalculateConferenceable()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v7, "recalculateConferenceable : %d"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    const-string v7, "recalc - %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/telecom/Connection;->getState()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/android/services/telephony/TelephonyConferenceController;->participatesInFullConference(Landroid/telecom/Connection;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Landroid/telecom/Connection;->getState()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v7, "active: %d, holding: %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    invoke-virtual {v3}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, v1}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    invoke-virtual {v3}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v3, v0}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-direct {p0, v7}, Lcom/android/services/telephony/TelephonyConferenceController;->isFullConference(Landroid/telecom/Conference;)Z

    move-result v7

    if-nez v7, :cond_8

    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getConference()Landroid/telecom/Conference;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const-string v7, "conference conferenceable"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v7, v5}, Lcom/android/services/telephony/TelephonyConference;->setConferenceableConnections(Ljava/util/List;)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method add(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/TelephonyConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V

    return-void
.end method

.method remove(Landroid/telecom/Connection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V

    return-void
.end method

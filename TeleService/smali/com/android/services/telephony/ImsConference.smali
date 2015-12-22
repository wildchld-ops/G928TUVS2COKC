.class public Lcom/android/services/telephony/ImsConference;
.super Landroid/telecom/Conference;
.source "ImsConference.java"


# instance fields
.field private mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

.field private final mConferenceHostListener:Landroid/telecom/Connection$Listener;

.field private final mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/services/telephony/ConferenceParticipantConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticipantListener:Landroid/telecom/Connection$Listener;

.field private final mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

.field private mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;


# direct methods
.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Conference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    new-instance v0, Lcom/android/services/telephony/ImsConference$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/ImsConference$1;-><init>(Lcom/android/services/telephony/ImsConference;)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    new-instance v0, Lcom/android/services/telephony/ImsConference$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/ImsConference$2;-><init>(Lcom/android/services/telephony/ImsConference;)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    new-instance v0, Lcom/android/services/telephony/ImsConference$3;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/ImsConference$3;-><init>(Lcom/android/services/telephony/ImsConference;)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHostListener:Landroid/telecom/Connection$Listener;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/ImsConference;->setConnectTimeMillis(J)V

    iput-object p1, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {p0, p2}, Lcom/android/services/telephony/ImsConference;->setConferenceHost(Lcom/android/services/telephony/TelephonyConnection;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/ImsConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set phacc to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ImsConference;->setConnectionCapabilities(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/ImsConference;Lcom/android/services/telephony/ConferenceParticipantConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/ImsConference;->removeConferenceParticipant(Lcom/android/services/telephony/ConferenceParticipantConnection;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/ImsConference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->updateManageConference()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/services/telephony/ImsConference;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/services/telephony/ImsConference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->handleOriginalConnectionChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/services/telephony/ImsConference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->disconnectConferenceParticipants()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/services/telephony/ImsConference;Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/ImsConference;->handleConferenceParticipantsUpdate(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V

    return-void
.end method

.method private createConferenceParticipantConnection(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConferenceParticipant;)V
    .locals 5

    new-instance v0, Lcom/android/services/telephony/ConferenceParticipantConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lcom/android/services/telephony/ConferenceParticipantConnection;-><init>(Lcom/android/internal/telephony/Connection;Landroid/telecom/ConferenceParticipant;)V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/ConferenceParticipantConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    sget-boolean v2, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string v2, "createConferenceParticipantConnection: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Landroid/telecom/ConferenceParticipant;->getEndpoint()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-virtual {v2, v1, v0}, Lcom/android/services/telephony/TelephonyConnectionService;->addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ImsConference;->addConnection(Landroid/telecom/Connection;)Z

    return-void
.end method

.method private disconnectConferenceParticipants()V
    .locals 4

    const-string v2, "disconnectConferenceParticipants"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/ConferenceParticipantConnection;

    invoke-direct {p0, v0}, Lcom/android/services/telephony/ImsConference;->removeConferenceParticipant(Lcom/android/services/telephony/ConferenceParticipantConnection;)V

    new-instance v2, Landroid/telecom/DisconnectCause;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-virtual {v0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private handleConferenceParticipantsUpdate(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/TelephonyConnection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telecom/ConferenceParticipant;

    invoke-virtual {v9}, Landroid/telecom/ConferenceParticipant;->getEndpoint()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-direct {p0, p1, v9}, Lcom/android/services/telephony/ImsConference;->createConferenceParticipantConnection(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConferenceParticipant;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v11, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/ConferenceParticipantConnection;

    invoke-virtual {v9}, Landroid/telecom/ConferenceParticipant;->getState()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/ConferenceParticipantConnection;->updateState(I)V

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/ConferenceParticipant;

    iget-object v11, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Landroid/telecom/ConferenceParticipant;->getEndpoint()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/ConferenceParticipantConnection;

    invoke-virtual {v5}, Landroid/telecom/ConferenceParticipant;->getState()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/ConferenceParticipantConnection;->updateState(I)V

    goto :goto_1

    :cond_2
    iget-object v11, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/services/telephony/ConferenceParticipantConnection;

    iget-object v11, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v9, v11}, Lcom/android/services/telephony/ConferenceParticipantConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/ImsConference;->removeConnection(Landroid/telecom/Connection;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    if-nez v7, :cond_5

    if-eqz v8, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->updateManageConference()V

    :cond_6
    return-void
.end method

.method private handleOriginalConnectionChange()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v2, :cond_1

    const-string v2, "handleOriginalConnectionChange; conference host missing."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    instance-of v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v2, :cond_2

    const-string v2, "Original connection for conference host is no longer an IMS connection; new connection: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2, v1, v3}, Lcom/android/services/telephony/TelephonyConnectionService;->addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHostListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/TelephonyConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/TelephonyConnection;->removeTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    new-instance v2, Landroid/telecom/DisconnectCause;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/ImsConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->destroy()V

    goto :goto_0
.end method

.method private removeConferenceParticipant(Lcom/android/services/telephony/ConferenceParticipantConnection;)V
    .locals 3

    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "removeConferenceParticipant: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    invoke-virtual {p1}, Lcom/android/services/telephony/ConferenceParticipantConnection;->getEndpoint()Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/services/telephony/ConferenceParticipantConnection;->getEndpoint()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setConferenceHost(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 2

    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConferenceHost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHostListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->addTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;

    return-void
.end method

.method private updateManageConference()V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v8, 0x80

    invoke-virtual {p0, v8}, Lcom/android/services/telephony/ImsConference;->can(I)Z

    move-result v1

    iget-object v5, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    :goto_0
    const-string v6, "updateManageConference was:%s is:%s"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    const-string v5, "Y"

    :goto_1
    aput-object v5, v7, v4

    if-eqz v0, :cond_3

    const-string v4, "Y"

    :goto_2
    aput-object v4, v7, v3

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->getConnectionCapabilities()I

    move-result v2

    if-eqz v0, :cond_4

    invoke-virtual {p0, v8}, Lcom/android/services/telephony/ImsConference;->addCapability(I)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    const-string v5, "N"

    goto :goto_1

    :cond_3
    const-string v4, "N"

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/services/telephony/ImsConference;->removeCapability(I)V

    goto :goto_3
.end method


# virtual methods
.method public getPrimaryConnection()Landroid/telecom/Connection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public onDisconnect()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "onDisconnect: hanging up conference host."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception thrown trying to hangup conference"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onHold()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->performHold()V

    goto :goto_0
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .locals 4

    :try_start_0
    check-cast p1, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Exception thrown trying to merge call into a conference"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPlayDtmfTone(C)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->onPlayDtmfTone(C)V

    goto :goto_0
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 2

    const-string v0, "Cannot separate connections from an IMS conference."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStopDtmfTone()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->onStopDtmfTone()V

    goto :goto_0
.end method

.method public onUnhold()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->performUnhold()V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 5

    const-string v1, "setState %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v1, :cond_0

    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ImsConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->setActive()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->setOnHold()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsConference objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hostConnection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " participants:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;
.super Ljava/lang/Object;
.source "CdmaPhoneCallsManager.java"


# static fields
.field private static final sInstance:Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;


# instance fields
.field private final mConnectionsToReset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/CdmaConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;

    invoke-direct {v0}, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;-><init>()V

    sput-object v0, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;->sInstance:Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;->mConnectionsToReset:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;->sInstance:Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;

    return-object v0
.end method


# virtual methods
.method public recalculateConferenceable(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/CdmaConnection;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "recalculateConferenceable : %d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isCurrentMergeCapableState()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/CdmaConnection;

    const-string v6, "recalc - %s %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/services/telephony/CdmaConnection;->getState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v2, v7, v10

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/services/telephony/CdmaConnection;->getState()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/services/telephony/CdmaConnection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v6, "active: %d, holding: %d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/CdmaConnection;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/CdmaConnection;->getCallCapabilities()I

    move-result v6

    or-int/lit8 v6, v6, 0x4

    invoke-virtual {v2, v6}, Lcom/android/services/telephony/CdmaConnection;->setCallCapabilities(I)V

    invoke-virtual {v2, v1}, Lcom/android/services/telephony/CdmaConnection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isCurrentMergeState()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/CdmaConnection;

    iget-object v6, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;->mConnectionsToReset:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {v3}, Lcom/android/services/telephony/CdmaConnection;->resetStateForConference()Z

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;->mConnectionsToReset:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setHoldingForConference(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/CdmaConnection;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;->mConnectionsToReset:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/CdmaConnection;->setHoldingForConference()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallsManager;->mConnectionsToReset:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

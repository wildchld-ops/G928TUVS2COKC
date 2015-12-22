.class public Lcom/android/services/telephony/TelephonyConference;
.super Landroid/telecom/Conference;
.source "TelephonyConference.java"


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p1    # Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, p1}, Landroid/telecom/Conference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    const/16 v0, 0xc3

    invoke-static {p0, v0}, Lcom/android/services/utils/SecPhoneCapabilities;->getTelephonyConferenceInitialCapabilities(Landroid/telecom/Conference;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/TelephonyConference;->setConnectionCapabilities(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConference;->setActive()V

    return-void
.end method

.method private disconnectCall(Landroid/telecom/Connection;)Z
    .locals 5
    .param p1    # Landroid/telecom/Connection;

    const/4 v2, 0x0

    const-string v3, "onDisconnect"

    invoke-direct {p0, p1, v3}, Lcom/android/services/telephony/TelephonyConference;->getMultipartyCallForConnection(Landroid/telecom/Connection;Ljava/lang/String;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "Found multiparty call to hangup for conference."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v3, "Exception thrown trying to hangup conference"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3, v4}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getFirstConnection()Lcom/android/services/telephony/TelephonyConnection;
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConference;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/TelephonyConnection;

    goto :goto_0
.end method

.method private getMultipartyCallForConnection(Landroid/telecom/Connection;Ljava/lang/String;)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/TelephonyConference;->getOriginalConnection(Landroid/telecom/Connection;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getOriginalConnection(Landroid/telecom/Connection;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1    # Landroid/telecom/Connection;

    instance-of v0, p1, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrimaryConnection()Landroid/telecom/Connection;
    .locals 6

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConference;->getConnections()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConference;->getOriginalConnection(Landroid/telecom/Connection;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v0

    goto :goto_0
.end method

.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 1
    .param p1    # Landroid/telecom/Connection;

    instance-of v0, p1, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->wasImsConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConference;->removeCapability(I)V

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConference;->disconnectCall(Landroid/telecom/Connection;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-void
.end method

.method public onHold()V
    .locals 1

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConference;->getFirstConnection()Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->performHold()V

    :cond_0
    return-void
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .locals 4
    .param p1    # Landroid/telecom/Connection;

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
    .param p1    # C

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConference;->getFirstConnection()Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->onPlayDtmfTone(C)V

    :cond_0
    return-void
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 4
    .param p1    # Landroid/telecom/Connection;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/TelephonyConference;->getOriginalConnection(Landroid/telecom/Connection;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Exception thrown trying to separate a conference call"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStopDtmfTone()V
    .locals 1

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConference;->getFirstConnection()Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->onStopDtmfTone()V

    :cond_0
    return-void
.end method

.method public onUnhold()V
    .locals 1

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConference;->getFirstConnection()Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->performUnhold()V

    :cond_0
    return-void
.end method

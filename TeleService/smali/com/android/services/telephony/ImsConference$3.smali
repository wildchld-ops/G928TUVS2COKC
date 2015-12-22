.class Lcom/android/services/telephony/ImsConference$3;
.super Landroid/telecom/Connection$Listener;
.source "ImsConference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/ImsConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/ImsConference;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/ImsConference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 5
    .param p1    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "onConferenceParticipantsChanged: %d participants"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    # invokes: Lcom/android/services/telephony/ImsConference;->handleConferenceParticipantsUpdate(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V
    invoke-static {v1, v0, p2}, Lcom/android/services/telephony/ImsConference;->access$500(Lcom/android/services/telephony/ImsConference;Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 1
    .param p1    # Landroid/telecom/Connection;

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    # invokes: Lcom/android/services/telephony/ImsConference;->disconnectConferenceParticipants()V
    invoke-static {v0}, Lcom/android/services/telephony/ImsConference;->access$400(Lcom/android/services/telephony/ImsConference;)V

    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 1
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Landroid/telecom/DisconnectCause;

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v0, p2}, Lcom/android/services/telephony/ImsConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 1
    .param p1    # Landroid/telecom/Connection;
    .param p2    # I

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v0, p2}, Lcom/android/services/telephony/ImsConference;->setState(I)V

    return-void
.end method

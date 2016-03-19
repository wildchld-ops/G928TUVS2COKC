.class Lcom/android/services/telephony/ImsConference$1;
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

    iput-object p1, p0, Lcom/android/services/telephony/ImsConference$1;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/services/telephony/ConferenceParticipantConnection;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference$1;->this$0:Lcom/android/services/telephony/ImsConference;

    # invokes: Lcom/android/services/telephony/ImsConference;->removeConferenceParticipant(Lcom/android/services/telephony/ConferenceParticipantConnection;)V
    invoke-static {v1, v0}, Lcom/android/services/telephony/ImsConference;->access$000(Lcom/android/services/telephony/ImsConference;Lcom/android/services/telephony/ConferenceParticipantConnection;)V

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference$1;->this$0:Lcom/android/services/telephony/ImsConference;

    # invokes: Lcom/android/services/telephony/ImsConference;->updateManageConference()V
    invoke-static {v1}, Lcom/android/services/telephony/ImsConference;->access$100(Lcom/android/services/telephony/ImsConference;)V

    return-void
.end method

.class Lcom/android/services/telephony/ImsConferenceController$2;
.super Landroid/telecom/Connection$Listener;
.source "ImsConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/ImsConferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/ImsConferenceController;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/ImsConferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/ImsConferenceController$2;->this$0:Lcom/android/services/telephony/ImsConferenceController;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConferenceStarted()V
    .locals 2

    const-string v0, "onConferenceStarted"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController$2;->this$0:Lcom/android/services/telephony/ImsConferenceController;

    # invokes: Lcom/android/services/telephony/ImsConferenceController;->recalculateConference()V
    invoke-static {v0}, Lcom/android/services/telephony/ImsConferenceController;->access$200(Lcom/android/services/telephony/ImsConferenceController;)V

    return-void
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 1
    .param p1    # Landroid/telecom/Connection;

    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController$2;->this$0:Lcom/android/services/telephony/ImsConferenceController;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/ImsConferenceController;->remove(Landroid/telecom/Connection;)V

    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Landroid/telecom/DisconnectCause;

    const-string v0, "onDisconnected: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController$2;->this$0:Lcom/android/services/telephony/ImsConferenceController;

    # invokes: Lcom/android/services/telephony/ImsConferenceController;->recalculate()V
    invoke-static {v0}, Lcom/android/services/telephony/ImsConferenceController;->access$100(Lcom/android/services/telephony/ImsConferenceController;)V

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 4
    .param p1    # Landroid/telecom/Connection;
    .param p2    # I

    const-string v0, "onStateChanged: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController$2;->this$0:Lcom/android/services/telephony/ImsConferenceController;

    # invokes: Lcom/android/services/telephony/ImsConferenceController;->recalculate()V
    invoke-static {v0}, Lcom/android/services/telephony/ImsConferenceController;->access$100(Lcom/android/services/telephony/ImsConferenceController;)V

    return-void
.end method

.class Lcom/android/services/telephony/TelephonyConnectionService$2;
.super Ljava/lang/Object;
.source "TelephonyConnectionService.java"

# interfaces
.implements Lcom/android/services/telephony/EmergencyCallHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/TelephonyConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnectionService;

.field final synthetic val$connection:Lcom/android/services/telephony/TelephonyConnection;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;

.field final synthetic val$request:Landroid/telecom/ConnectionRequest;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->this$0:Lcom/android/services/telephony/TelephonyConnectionService;

    iput-object p2, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    iput-object p3, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p4, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$request:Landroid/telecom/ConnectionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 7
    .param p1    # Z

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    const-string v2, "onCreateOutgoingConnection,isRadioReady true"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->setInitialized()V

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->setIMSPreRegState()V

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->this$0:Lcom/android/services/telephony/TelephonyConnectionService;

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$request:Landroid/telecom/ConnectionRequest;

    # invokes: Lcom/android/services/telephony/TelephonyConnectionService;->placeOutgoingConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/services/telephony/TelephonyConnectionService;->access$000(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    const-string v2, "emergency_call_state_update_after_dial"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$phone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateOutgoingConnection 2nd check isEmergencyNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->notifyEccCallStateChanged(Lcom/android/services/telephony/TelephonyConnection;)V

    goto :goto_0

    :cond_3
    const-string v2, "onCreateOutgoingConnection, failed to turn on radio"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    const/16 v3, 0x11

    const-string v4, "Failed to turn on radio."

    invoke-static {v3, v4}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService$2;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->destroy()V

    goto :goto_0
.end method

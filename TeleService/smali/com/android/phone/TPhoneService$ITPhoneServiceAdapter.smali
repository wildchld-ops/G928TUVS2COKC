.class Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;
.super Lcom/android/phone/ITPhoneService$Stub;
.source "TPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ITPhoneServiceAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Lcom/android/phone/ITPhoneService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    const-string v1, "acceptCall() : "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->acceptCall()V

    return-void
.end method

.method public acceptCallAndHangupBgCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    const-string v1, "acceptCallAndHangupBgCall() : "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->hangupBgCall()V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->acceptCall()V

    return-void
.end method

.method public acceptCallAndHangupFgCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    const-string v1, "acceptCallAndHangupFgCall() : "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->hangupFgCall()V

    return-void
.end method

.method public acceptVideoCall(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const-string v0, "[carrier-phone] TPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptVideoCall() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/utils/SecModifyCallHandler;->getInstance(Lcom/android/internal/telephony/Connection;)Lcom/android/services/utils/SecModifyCallHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/services/utils/SecModifyCallHandler;->respondModifyCall(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cancelPostDial()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    invoke-static {v2, v1}, Lcom/android/phone/TPhoneService;->access$500(Lcom/android/phone/TPhoneService;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[carrier-phone] TPhoneService"

    const-string v3, "cancelPostDial() : "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_0
.end method

.method public connectBluetoothAudio(Z)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectBluetoothAudio() : flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/utils/SecTelecomAdapter;->turnOnBluetooth(Z)V

    return-void
.end method

.method public dial(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v2, "[carrier-phone] TPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dial() : number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", forceCs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dialType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v2, "[carrier-phone] TPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callmessage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "callmessage"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    const-string v2, "cs_voice_call_outgoing"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "[carrier-phone] TPhoneService"

    const-string v3, "in the roaming area... "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRADDialingToKorea(I)V

    if-ne p4, v6, :cond_3

    const-string v2, "SKTRADDialOption"

    const-string v3, "korea"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v2, v1}, Lcom/android/phone/TPhoneService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_3
    const-string v2, "SKTRADDialOption"

    const-string v3, "abroad"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[carrier-phone] TPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public enableExpandedView(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "[carrier-phone] TPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableExpandedView() : enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/android/phone/TPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz p1, :cond_0

    invoke-virtual {v0, v5}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void

    :cond_0
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method public enableSystemNavigation(ZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "[carrier-phone] TPhoneService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableSystemNavigation() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Lcom/android/phone/TPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/high16 v4, 0x200000

    or-int/2addr v1, v4

    const/high16 v4, 0x1000000

    or-int/2addr v1, v4

    const/high16 v4, 0x400000

    or-int/2addr v1, v4

    const/high16 v4, 0x2000000

    or-int/2addr v1, v4

    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v4, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {v4, v2, p2}, Lcom/android/phone/TPhoneService;->updateSystemKeyEvent(ZI)V

    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public getApiVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    const-string v1, "getApiVersion() : 3"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    return v0
.end method

.method public getCallInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/skt/prod/phone/TCall;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const-string v1, "[carrier-phone] TPhoneService"

    const-string v2, "getCallInfo()"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1}, Lcom/android/phone/TPhoneService;->getRingingCall()Lcom/skt/prod/phone/TCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1}, Lcom/android/phone/TPhoneService;->getFgCall()Lcom/skt/prod/phone/TCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1}, Lcom/android/phone/TPhoneService;->getBgCall()Lcom/skt/prod/phone/TCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCoverState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;
    invoke-static {v2}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/CarrierManager;

    move-result-object v2

    iget v2, v2, Lcom/android/phone/CarrierManager;->mCoverState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;
    invoke-static {v0}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/CarrierManager;

    move-result-object v0

    iget v0, v0, Lcom/android/phone/CarrierManager;->mCoverState:I

    return v0
.end method

.method public getCoverType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCoverType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;
    invoke-static {v2}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/CarrierManager;

    move-result-object v2

    iget v2, v2, Lcom/android/phone/CarrierManager;->mCoverType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;
    invoke-static {v0}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/CarrierManager;

    move-result-object v0

    iget v0, v0, Lcom/android/phone/CarrierManager;->mCoverType:I

    return v0
.end method

.method public getMute()Z
    .locals 2

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelecomAdapter;->getMute()Z

    move-result v0

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    invoke-static {v3, v1}, Lcom/android/phone/TPhoneService;->access$500(Lcom/android/phone/TPhoneService;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "[carrier-phone] TPhoneService"

    const-string v3, "getRemainingPostDialString() : "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1, p1}, Lcom/android/phone/TPhoneService;->getKeyMappingTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[carrier-phone] TPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSettingValues() : key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public hangupBgCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    const-string v1, "hangupBgCall() : "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->hangupBgCall()V

    return-void
.end method

.method public hangupFgCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    const-string v1, "hangupFgCall() : "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->hangupFgCall()V

    return-void
.end method

.method public isRecording()Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$600(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRecord exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/TPhoneService;->access$300(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpeakerOn()Z
    .locals 2

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelecomAdapter;->isSpeakerOn()Z

    move-result v0

    return v0
.end method

.method public proceedAfterWaitChar()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    invoke-static {v2, v1}, Lcom/android/phone/TPhoneService;->access$500(Lcom/android/phone/TPhoneService;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[carrier-phone] TPhoneService"

    const-string v3, "proceedAfterWaitChar() : "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->proceedAfterWaitChar()V

    goto :goto_0
.end method

.method public registerCallBack(Lcom/android/phone/ITPhoneEventListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$700(Lcom/android/phone/TPhoneService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$800(Lcom/android/phone/TPhoneService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/TPhoneService;->access$300(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->initRegisterListener(Lcom/android/phone/ITPhoneEventListener;)V
    invoke-static {v1, p1}, Lcom/android/phone/TPhoneService;->access$900(Lcom/android/phone/TPhoneService;Lcom/android/phone/ITPhoneEventListener;)V

    :cond_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rejectCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    const-string v1, "rejectCall() : "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->rejectCall()V

    return-void
.end method

.method public screenOnImmediately(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/android/phone/TPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "[carrier-phone] TPhoneService"

    const-string v3, "screenOnImmediately() : wakeUpScreen"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[carrier-phone] TPhoneService"

    const-string v3, "screenOnImmediately() : goToSleep"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v6, v6}, Landroid/os/IPowerManager;->goToSleep(JII)V

    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v5, 0x71

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf() : ch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    iget-object v0, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/TPhoneService;->access$400(Lcom/android/phone/TPhoneService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/TPhoneService;->access$400(Lcom/android/phone/TPhoneService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    move-object v2, p1

    move-object v1, p2

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;-><init>(Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setMute(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute() : flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/utils/SecTelecomAdapter;->setMute(Z)V

    return-void
.end method

.method public setSettingValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/TPhoneService;->setKeyMappingTable(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[carrier-phone] TPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSettingValue() : key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showCallScreen()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "[carrier-phone] TPhoneService"

    const-string v2, "showCallScreen() : "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Lcom/android/phone/TPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v5}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    return-void
.end method

.method public silenceRinger()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const-string v1, "[carrier-phone] TPhoneService"

    const-string v2, "silenceRinger() : "

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Lcom/android/phone/TPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    return-void
.end method

.method public startRecord(Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v3, "[carrier-phone] TPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startRecord() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;
    invoke-static {v3}, Lcom/android/phone/TPhoneService;->access$600(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneVoiceRecorder;->startRecord(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecord exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/TPhoneService;->access$300(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method public startVideoCall(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const-string v3, "[carrier-phone] TPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoCall() : dialNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "videocall"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/TPhoneService;->access$200(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "[carrier-phone] TPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/utils/SecTelecomAdapter;->isLowBatt()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    const-string v4, "requestModifyCall() : reject by LowBatt"

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/TPhoneService;->access$300(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    const-string v4, "requestModifyCall() : CALL_TYPE_VT"

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/TPhoneService;->access$300(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/utils/SecModifyCallHandler;->getInstance(Lcom/android/internal/telephony/Connection;)Lcom/android/services/utils/SecModifyCallHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/services/utils/SecModifyCallHandler;->requestModifyCall(I)V

    goto :goto_0
.end method

.method public stopRecord()Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v3, "[carrier-phone] TPhoneService"

    const-string v4, "stopRecord() : "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;
    invoke-static {v3}, Lcom/android/phone/TPhoneService;->access$600(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopRecord exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/TPhoneService;->access$300(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method public swapCalls()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    const-string v1, "swapCalls() : "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->swapCalls()V

    return-void
.end method

.method public turnOnSpeaker(Z)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] TPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnSpeaker() : flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/utils/SecTelecomAdapter;->turnOnSpeaker(Z)V

    return-void
.end method

.method public unregisterCallBack(Lcom/android/phone/ITPhoneEventListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$700(Lcom/android/phone/TPhoneService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$800(Lcom/android/phone/TPhoneService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    :cond_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;
.super Lcom/android/phone/ICallOEMService$Stub;
.source "OllehPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OllehPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IOllehPhoneServiceAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OllehPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/OllehPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    invoke-direct {p0}, Lcom/android/phone/ICallOEMService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptVT(Z)V
    .locals 3
    .param p1    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/OllehPhoneService;->access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const-string v0, "[carrier-phone] OllehPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptVT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/OllehPhoneService;->access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;

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

.method public answerCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[carrier-phone] OllehPhoneService"

    const-string v1, "answerCall() : "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->acceptCall()V

    return-void
.end method

.method public connectBtHandsfree(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "[carrier-phone] OllehPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectBtHandsfree() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/utils/SecTelecomAdapter;->turnOnBluetooth(Z)V

    return-void
.end method

.method public dial(Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Z
    .param p4    # Landroid/os/Bundle;
    .param p5    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v5, "[carrier-phone] OllehPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dial() : number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", forceCS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    const-string v5, "[carrier-phone] OllehPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showmeDialInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p5, :cond_1

    const-string v5, "[carrier-phone] OllehPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showmeCallLogInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    invoke-static {v6, p1, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    const-string v5, "showmeDispName"

    invoke-virtual {p4, v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "callmessage"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v5, "showmeChgUrl"

    invoke-virtual {p4, v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "showmeContentUrl"

    invoke-virtual {p4, v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {v0}, Lcom/android/phone/photoring/http/AES256Cipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/android/phone/photoring/http/AES256Cipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringUtil;->setChgUrl(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringUtil;->setContentUrl(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/OllehPhoneService;->access$100(Lcom/android/phone/OllehPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "key_photoring_mt_content_url"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    if-eqz p2, :cond_6

    const-string v5, "cs_voice_call_outgoing"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    invoke-virtual {v5, v3}, Lcom/android/phone/OllehPhoneService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v5, "[carrier-phone] OllehPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public dialVT(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v2, "[carrier-phone] OllehPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialVT() : number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "videocall"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v2}, Lcom/android/phone/OllehPhoneService;->access$100(Lcom/android/phone/OllehPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "[carrier-phone] OllehPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public disconnectBgCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[carrier-phone] OllehPhoneService"

    const-string v1, "disconnectBgCall() : "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->hangupBgCall()V

    return-void
.end method

.method public disconnectCurrentCallAndAnswerCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[carrier-phone] OllehPhoneService"

    const-string v1, "disconnectCurrentCallAndAnswerCall() : "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->hangupFgCall()V

    return-void
.end method

.method public disconnectFgCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[carrier-phone] OllehPhoneService"

    const-string v1, "disconnectFgCall() : "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->hangupFgCall()V

    return-void
.end method

.method public enableSystemBarNavigation(Z)V
    .locals 5
    .param p1    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v1, "[carrier-phone] OllehPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableSystemBarNavigation() : enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/android/phone/OllehPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz p1, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void

    :cond_0
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method public getCallStatus()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/ollehcall/phoneinterface/KtCall;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const-string v1, "[carrier-phone] OllehPhoneService"

    const-string v2, "getCallStatus()"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    invoke-virtual {v1}, Lcom/android/phone/OllehPhoneService;->getRingingCall()Lcom/kt/ollehcall/phoneinterface/KtCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    invoke-virtual {v1}, Lcom/android/phone/OllehPhoneService;->getFgCall()Lcom/kt/ollehcall/phoneinterface/KtCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    invoke-virtual {v1}, Lcom/android/phone/OllehPhoneService;->getBgCall()Lcom/kt/ollehcall/phoneinterface/KtCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getConfiguration(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    invoke-virtual {v1, p1}, Lcom/android/phone/OllehPhoneService;->getKeyMappingTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[carrier-phone] OllehPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfiguration() : key="

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

.method public getInterfaceVersion()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[carrier-phone] OllehPhoneService"

    const-string v1, "getInterfaceVersion() : 7"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

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

    iget-object v3, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/OllehPhoneService;->access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # invokes: Lcom/android/phone/OllehPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    invoke-static {v3, v1}, Lcom/android/phone/OllehPhoneService;->access$400(Lcom/android/phone/OllehPhoneService;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "[carrier-phone] OllehPhoneService"

    const-string v3, "getRemainingPostDialString() : "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getRunningTasksTopActivityInfo(I)Ljava/util/List;
    .locals 8
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kt/ollehcall/phoneinterface/KtTopActivityInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v6, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Lcom/android/phone/OllehPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v5, Lcom/kt/ollehcall/phoneinterface/KtTopActivityInfo;

    invoke-direct {v5}, Lcom/kt/ollehcall/phoneinterface/KtTopActivityInfo;-><init>()V

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/kt/ollehcall/phoneinterface/KtTopActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/kt/ollehcall/phoneinterface/KtTopActivityInfo;->className:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getViewCoverStatus()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[carrier-phone] OllehPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewCoverStatus() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/CarrierManager;->getInstance()Lcom/android/phone/CarrierManager;

    move-result-object v2

    iget v2, v2, Lcom/android/phone/CarrierManager;->mCoverState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/CarrierManager;->getInstance()Lcom/android/phone/CarrierManager;

    move-result-object v0

    iget v0, v0, Lcom/android/phone/CarrierManager;->mCoverState:I

    return v0
.end method

.method public hold(Z)V
    .locals 3
    .param p1    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[carrier-phone] OllehPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hold() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/utils/SecTelecomAdapter;->holdCalls(Z)V

    return-void
.end method

.method public isMute()Z
    .locals 2

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelecomAdapter;->getMute()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;
    invoke-static {v1}, Lcom/android/phone/OllehPhoneService;->access$600(Lcom/android/phone/OllehPhoneService;)Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRecord exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/OllehPhoneService;->access$500(Lcom/android/phone/OllehPhoneService;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpeaker()Z
    .locals 2

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelecomAdapter;->isSpeakerOn()Z

    move-result v0

    return v0
.end method

.method public mute(Z)V
    .locals 3
    .param p1    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[carrier-phone] OllehPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mute() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/utils/SecTelecomAdapter;->setMute(Z)V

    return-void
.end method

.method public postDialCancel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/OllehPhoneService;->access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # invokes: Lcom/android/phone/OllehPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    invoke-static {v2, v1}, Lcom/android/phone/OllehPhoneService;->access$400(Lcom/android/phone/OllehPhoneService;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[carrier-phone] OllehPhoneService"

    const-string v3, "postDialCancel() : "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_0
.end method

.method public postDialWaitContinue()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/OllehPhoneService;->access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # invokes: Lcom/android/phone/OllehPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    invoke-static {v2, v1}, Lcom/android/phone/OllehPhoneService;->access$400(Lcom/android/phone/OllehPhoneService;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[carrier-phone] OllehPhoneService"

    const-string v3, "postDialWaitContinue() : "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->proceedAfterWaitChar()V

    goto :goto_0
.end method

.method public registerCallBack(Lcom/android/phone/ICallOEMEventListener;)Z
    .locals 5
    .param p1    # Lcom/android/phone/ICallOEMEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/OllehPhoneService;->access$700(Lcom/android/phone/OllehPhoneService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/phone/OllehPhoneService;->access$800(Lcom/android/phone/OllehPhoneService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/OllehPhoneService;->access$500(Lcom/android/phone/OllehPhoneService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # invokes: Lcom/android/phone/OllehPhoneService;->initRegisterListener(Lcom/android/phone/ICallOEMEventListener;)V
    invoke-static {v1, p1}, Lcom/android/phone/OllehPhoneService;->access$900(Lcom/android/phone/OllehPhoneService;Lcom/android/phone/ICallOEMEventListener;)V

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[carrier-phone] OllehPhoneService"

    const-string v1, "rejectCall() : "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->rejectCall()V

    return-void
.end method

.method public sendDtmf(C)V
    .locals 6
    .param p1    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v5, 0x71

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] OllehPhoneService"

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

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/OllehPhoneService;->access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/OllehPhoneService;->access$300(Lcom/android/phone/OllehPhoneService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/OllehPhoneService;->access$300(Lcom/android/phone/OllehPhoneService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
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

    new-instance v4, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter$1;-><init>(Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/OllehPhoneService;->setKeyMappingTable(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[carrier-phone] OllehPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfiguration() : key="

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

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showInCallScreen()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "[carrier-phone] OllehPhoneService"

    const-string v2, "showInCallScreen() : "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Lcom/android/phone/OllehPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v5}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    return-void
.end method

.method public speaker(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "[carrier-phone] OllehPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speaker() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/utils/SecTelecomAdapter;->turnOnSpeaker(Z)V

    return-void
.end method

.method public startRecord()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "[carrier-phone] OllehPhoneService"

    const-string v3, "startRecord() : "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;
    invoke-static {v2}, Lcom/android/phone/OllehPhoneService;->access$600(Lcom/android/phone/OllehPhoneService;)Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->startRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecord exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/OllehPhoneService;->access$500(Lcom/android/phone/OllehPhoneService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecord()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "[carrier-phone] OllehPhoneService"

    const-string v3, "stopRecord() : "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;
    invoke-static {v2}, Lcom/android/phone/OllehPhoneService;->access$600(Lcom/android/phone/OllehPhoneService;)Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopRecord exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/OllehPhoneService;->access$500(Lcom/android/phone/OllehPhoneService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRingtone()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "[carrier-phone] OllehPhoneService"

    const-string v2, "stopRingtone() : "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Lcom/android/phone/OllehPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    return-void
.end method

.method public swap()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[carrier-phone] OllehPhoneService"

    const-string v1, "swap() : "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->swapCalls()V

    return-void
.end method

.method public switchVT()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/OllehPhoneService;->access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelecomAdapter;->isLowBatt()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    const-string v2, "switchVT() : reject by LowBatt"

    # invokes: Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/OllehPhoneService;->access$500(Lcom/android/phone/OllehPhoneService;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    const-string v2, "switchVT() : CALL_TYPE_VT"

    # invokes: Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/OllehPhoneService;->access$500(Lcom/android/phone/OllehPhoneService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/OllehPhoneService;->access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/utils/SecModifyCallHandler;->getInstance(Lcom/android/internal/telephony/Connection;)Lcom/android/services/utils/SecModifyCallHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/services/utils/SecModifyCallHandler;->requestModifyCall(I)V

    goto :goto_0
.end method

.method public unregisterCallBack(Lcom/android/phone/ICallOEMEventListener;)Z
    .locals 3
    .param p1    # Lcom/android/phone/ICallOEMEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/OllehPhoneService;->access$700(Lcom/android/phone/OllehPhoneService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/phone/OllehPhoneService;->access$800(Lcom/android/phone/OllehPhoneService;)Landroid/os/RemoteCallbackList;

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

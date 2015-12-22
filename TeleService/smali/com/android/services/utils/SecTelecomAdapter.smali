.class public Lcom/android/services/utils/SecTelecomAdapter;
.super Ljava/lang/Object;
.source "SecTelecomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/utils/SecTelecomAdapter$2;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/services/utils/SecTelecomAdapter;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    new-instance v0, Lcom/android/services/utils/SecTelecomAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/services/utils/SecTelecomAdapter$1;-><init>(Lcom/android/services/utils/SecTelecomAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/android/services/utils/SecTelecomAdapter;
    .locals 1

    sget-object v0, Lcom/android/services/utils/SecTelecomAdapter;->sInstance:Lcom/android/services/utils/SecTelecomAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/services/utils/SecTelecomAdapter;

    invoke-direct {v0}, Lcom/android/services/utils/SecTelecomAdapter;-><init>()V

    sput-object v0, Lcom/android/services/utils/SecTelecomAdapter;->sInstance:Lcom/android/services/utils/SecTelecomAdapter;

    :cond_0
    sget-object v0, Lcom/android/services/utils/SecTelecomAdapter;->sInstance:Lcom/android/services/utils/SecTelecomAdapter;

    return-object v0
.end method


# virtual methods
.method public acceptCall()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->acceptCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to acceptCall"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to acceptCall : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public answerRingingCallInUI()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->answerRingingCallInUI()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearSecConnectionServiceAdapter()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    return-void
.end method

.method public getMute()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->getMute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "getNameFromFDN"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/services/utils/SecTelephonyUtil;->getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "getNameFromSDN"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/services/utils/SecTelephonyUtil;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantsCount()I
    .locals 4

    const/4 v1, 0x0

    const-string v2, "getParticipantsCount"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v2, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hangupBgCall()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->hangupBgCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to hangupBgCall"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to hangupBgCall : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public hangupFgCall()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->hangupFgCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to hangupFgCall"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to hangupFgCall : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public holdCalls(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->holdCalls(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to holdCalls"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to holdCalls : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isLowBatt()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->isLowBatt()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "Failed to isLowBatt"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v2, "Failed to isLowBatt : mSecConnectionServiceAdapter is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isSpeakerOn()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v2}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->isSpeakerOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onEpdgStateChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->onEpdgStateChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onModifyCall(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->onModifyCall(Ljava/lang/String;ZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;Ljava/lang/String;CZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/services/utils/SecTelecomAdapter$2;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->onPostDialPause(Ljava/lang/String;CZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v0, p2, p3}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->onPostDialPauseComplete(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public rejectCall()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->rejectCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to rejectCall"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to rejectCall : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public requestModifyCall(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestOllehPhoneStart(I)V
    .locals 2

    const-string v0, "requestOllehPhoneStart"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/CarrierManager;->getInstance()Lcom/android/phone/CarrierManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/CarrierManager;->displayOllehPhone(I)V

    return-void
.end method

.method public requestRingtoneUri()Ljava/lang/String;
    .locals 2

    const-string v0, "requestRingtoneUri"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/CarrierManager;->getInstance()Lcom/android/phone/CarrierManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CarrierManager;->getRingtoneUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestTPhoneStart(I)V
    .locals 2

    const-string v0, "requestTPhoneStart"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/CarrierManager;->getInstance()Lcom/android/phone/CarrierManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/CarrierManager;->displayTPhone(I)V

    return-void
.end method

.method public respondModifyCall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public restartRingingOrCallWaiting()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->restartRingingOrCallWaiting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to restartRingingOrCallWaiting"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to restartRingingOrCallWaiting : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public saveModifiedCallLog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->saveModifiedCallLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public saveParticipantLog(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->saveParticipantLog(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setEcholocateCallState(ILandroid/net/Uri;II)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->setEcholocateCallState(ILandroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to setEcholocateCallState"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to setEcholocateCallState : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->setMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to setMute"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to setMute : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setOtherPartyHold(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->setOtherPartyHold(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to setOtherPartyHold"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to setOtherPartyHold : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->setSecCallExtra(Ljava/lang/String;Lcom/android/services/telephony/common/SecCallExtra;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSecConnectionServiceAdapter(Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    return-void
.end method

.method public silence()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->silence()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to silence"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to silence : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public swapCalls()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->swapCalls()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to swapCalls"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to swapCalls : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public turnOnBluetooth(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->turnOnBluetooth(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to turnOnBluetooth"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to turnOnBluetooth : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public turnOnSpeaker(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->turnOnSpeaker(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to turnOnSpeaker"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to turnOnSpeaker : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->updateSecCallExtra(Ljava/lang/String;Lcom/android/services/telephony/common/SecCallExtra;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class public Lcom/android/server/telecom/secutils/SecInCallController;
.super Ljava/lang/Object;
.source "SecInCallController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isBound:Z

.field mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

.field mCm:Lcom/android/server/telecom/CallsManager;

.field mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/CallIdMapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SecInCallController"

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->isBound:Z

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mCm:Lcom/android/server/telecom/CallsManager;

    iput-object p2, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    return-void
.end method


# virtual methods
.method public answerRingingCallInUI()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    invoke-interface {v0}, Lcom/android/services/telephony/common/ISecInCallService;->answerRingingCallInUI()V

    const-string v0, "SecInCallController"

    const-string v1, "SecInCallController. - answerRingCallInUI"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SecInCallController. answerRingCallInUI exception"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bind()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "SecInCallController"

    const-string v1, "bind()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.incallui.SEC_IN_CALL_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.incallui"

    const-string v3, "com.android.incallui.SecInCallService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, p0, v4, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    iput-boolean v4, p0, Lcom/android/server/telecom/secutils/SecInCallController;->isBound:Z

    return-void
.end method

.method public onModifyCall(ZILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/services/telephony/common/ISecInCallService;->onModifyCall(ZILjava/lang/String;)V

    const-string v0, "SecInCallController"

    const-string v1, "onServiceConnected. - setSecInCallAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the sec-in-call adapter."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPostDialPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    invoke-interface {v0, p1, p2}, Lcom/android/services/telephony/common/ISecInCallService;->onPostDialPause(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SecInCallController"

    const-string v1, "onPostDialPause. - setSecInCallAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the sec-in-call adapter."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPostDialPauseComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    invoke-interface {v0, p1, p2}, Lcom/android/services/telephony/common/ISecInCallService;->onPostDialPauseComplete(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SecInCallController"

    const-string v1, "onPostDialPauseComplete. - setSecInCallAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the sec-in-call adapter."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/android/services/telephony/common/ISecInCallService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ISecInCallService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    new-instance v1, Lcom/android/server/telecom/secutils/SecInCallAdapter;

    invoke-direct {v1}, Lcom/android/server/telecom/secutils/SecInCallAdapter;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/services/telephony/common/ISecInCallService;->setSecInCallAdapter(Lcom/android/services/telephony/common/ISecInCallAdapter;)V

    const-string v0, "SecInCallController"

    const-string v1, "onServiceConnected. - setSecInCallAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the sec-in-call adapter."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    return-void
.end method

.method public sendMessageToUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    invoke-interface {v0, p1, p2}, Lcom/android/services/telephony/common/ISecInCallService;->sendMessageToUI(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SecInCallController"

    const-string v1, "sendMessageToUI. - setSecInCallAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the sec-in-call adapter."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "SecInCallController"

    const-string v1, "unBind()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->isBound:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, p0, Lcom/android/server/telecom/secutils/SecInCallController;->isBound:Z

    :cond_0
    return-void
.end method

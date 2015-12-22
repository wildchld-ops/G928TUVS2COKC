.class public Lcom/android/incallui/BaseInCallService;
.super Landroid/app/Service;
.source "BaseInCallService.java"

# interfaces
.implements Lcom/android/incallui/BaseInCallComponent;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/BaseInCallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/BaseInCallService;->onDialogDismissed()V

    return-void
.end method

.method private onDialogDismissed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/BaseInCallService;->mDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show Dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseInCallService;->dismissPendingDialogs()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0129

    new-instance v2, Lcom/android/incallui/BaseInCallService$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/BaseInCallService$2;-><init>(Lcom/android/incallui/BaseInCallService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/BaseInCallService$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/BaseInCallService$1;-><init>(Lcom/android/incallui/BaseInCallService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/BaseInCallService;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/BaseInCallService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/BaseInCallService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/incallui/BaseInCallService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .locals 0

    return-void
.end method

.method public clearFlags(I)V
    .locals 0

    return-void
.end method

.method public dismissDialogForDisconnect()V
    .locals 0

    return-void
.end method

.method public dismissKeyguard(Z)V
    .locals 0

    return-void
.end method

.method public dismissPendingDialogs()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/BaseInCallService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BaseInCallService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/BaseInCallService;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->dismissCallRoamingGuardDialog(Z)V

    :cond_1
    return-void
.end method

.method public displayDialpad(ZZ)V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/BaseInCallService;->stopSelf()V

    return-void
.end method

.method public forceFinish()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/BaseInCallService;->stopSelf()V

    return-void
.end method

.method public getCallCardFragment()Lcom/android/incallui/CallCardFragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentType()Lcom/android/incallui/BaseInCallComponent$ComponentType;
    .locals 1

    sget-object v0, Lcom/android/incallui/BaseInCallComponent$ComponentType;->SERVICE:Lcom/android/incallui/BaseInCallComponent$ComponentType;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getRcsInvitation()Lcom/android/incallui/rcs/RcsInvitation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSecAnswerFragment()Lcom/android/incallui/SecAnswerUi;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecVideoCallFragment()Lcom/android/incallui/SecVideoCallUi;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideDialpadForDisconnect()V
    .locals 0

    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDialpadVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isForegroundActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;)V
    .locals 2

    const-string v0, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDescription : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getreason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseInCallService;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "disconnect_cause_description"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->maybeShowErrorToastOnDisconnect(Landroid/content/Context;Landroid/telecom/DisconnectCause;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/BaseInCallService;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onTtyNotification(Z)V
    .locals 0

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 0

    return-void
.end method

.method public showConferenceCallManager()V
    .locals 0

    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 0

    return-void
.end method

.method public showPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
    .locals 0

    return-void
.end method

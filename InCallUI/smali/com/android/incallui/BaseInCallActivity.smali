.class public Lcom/android/incallui/BaseInCallActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseInCallActivity.java"

# interfaces
.implements Lcom/android/incallui/BaseInCallComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addFlagTurnOnScreen(Z)V
    .locals 0

    return-void
.end method

.method public addFlags(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public clearFlags(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

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
    .locals 0

    return-void
.end method

.method public displayDialpad(ZZ)V
    .locals 0

    return-void
.end method

.method public forceFinish()V
    .locals 0

    return-void
.end method

.method public getCallCardFragment()Lcom/android/incallui/CallCardFragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentType()Lcom/android/incallui/BaseInCallComponent$ComponentType;
    .locals 1

    sget-object v0, Lcom/android/incallui/BaseInCallComponent$ComponentType;->ACTIVITY:Lcom/android/incallui/BaseInCallComponent$ComponentType;

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

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

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

.method public isDialpadVisible()Z
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
    .locals 0

    return-void
.end method

.method public onTtyNotification(Z)V
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

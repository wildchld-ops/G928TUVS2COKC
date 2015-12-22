.class public interface abstract Lcom/android/incallui/BaseInCallComponent;
.super Ljava/lang/Object;
.source "BaseInCallComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/BaseInCallComponent$ComponentType;
    }
.end annotation


# virtual methods
.method public abstract addFlags(I)V
.end method

.method public abstract clearFlags(I)V
.end method

.method public abstract dismissDialogForDisconnect()V
.end method

.method public abstract dismissKeyguard(Z)V
.end method

.method public abstract dismissPendingDialogs()V
.end method

.method public abstract displayDialpad(ZZ)V
.end method

.method public abstract finish()V
.end method

.method public abstract forceFinish()V
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getCallCardFragment()Lcom/android/incallui/CallCardFragment;
.end method

.method public abstract getComponentType()Lcom/android/incallui/BaseInCallComponent$ComponentType;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getRcsInvitation()Lcom/android/incallui/rcs/RcsInvitation;
.end method

.method public abstract getSecAnswerFragment()Lcom/android/incallui/SecAnswerUi;
.end method

.method public abstract getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;
.end method

.method public abstract getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;
.end method

.method public abstract getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;
.end method

.method public abstract getSecVideoCallFragment()Lcom/android/incallui/SecVideoCallUi;
.end method

.method public abstract getWindow()Landroid/view/Window;
.end method

.method public abstract hasWindowFocus()Z
.end method

.method public abstract hideDialpadForDisconnect()V
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isDialpadVisible()Z
.end method

.method public abstract isFinishing()Z
.end method

.method public abstract isForegroundActivity()Z
.end method

.method public abstract maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;)V
.end method

.method public abstract onTtyNotification(Z)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract setRequestedOrientation(I)V
.end method

.method public abstract showConferenceCallManager(Z)V
.end method

.method public abstract showPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
.end method

.class interface abstract Lcom/android/server/telecom/Call$Listener;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCallerDisplayNameChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onCallerDualPhoneNumberChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onCallerInfoChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onCanceledViaNewOutgoingCallBroadcast(Lcom/android/server/telecom/Call;)Z
.end method

.method public abstract onCannedSmsResponsesLoaded(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onChildrenChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onConferenceableCallsChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onConnectionCapabilitiesChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onConnectionManagerPhoneAccountChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onExtraChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onFailedIncomingCall(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onFailedOutgoingCall(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V
.end method

.method public abstract onFailedUnknownCall(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onHandleChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onParentChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onPostDialChar(Lcom/android/server/telecom/Call;C)V
.end method

.method public abstract onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V
.end method

.method public abstract onRingbackRequested(Lcom/android/server/telecom/Call;Z)V
.end method

.method public abstract onStatusHintsChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onSuccessfulIncomingCall(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onSuccessfulOutgoingCall(Lcom/android/server/telecom/Call;I)V
.end method

.method public abstract onSuccessfulUnknownCall(Lcom/android/server/telecom/Call;I)V
.end method

.method public abstract onTargetPhoneAccountChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onVideoCallProviderChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onVideoStateChanged(Lcom/android/server/telecom/Call;)V
.end method

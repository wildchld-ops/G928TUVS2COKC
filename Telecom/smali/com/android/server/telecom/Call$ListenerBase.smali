.class public abstract Lcom/android/server/telecom/Call$ListenerBase;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/android/server/telecom/Call$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListenerBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallerDisplayNameChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onCallerDualPhoneNumberChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onCallerInfoChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onCanceledViaNewOutgoingCallBroadcast(Lcom/android/server/telecom/Call;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCannedSmsResponsesLoaded(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onChildrenChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onConferenceableCallsChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onConnectionCapabilitiesChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onConnectionManagerPhoneAccountChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onExtraChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onFailedIncomingCall(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onFailedOutgoingCall(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V
    .locals 0

    return-void
.end method

.method public onFailedUnknownCall(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onHandleChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onParentChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onPostDialChar(Lcom/android/server/telecom/Call;C)V
    .locals 0

    return-void
.end method

.method public onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRingbackRequested(Lcom/android/server/telecom/Call;Z)V
    .locals 0

    return-void
.end method

.method public onStatusHintsChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onSuccessfulIncomingCall(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onSuccessfulOutgoingCall(Lcom/android/server/telecom/Call;I)V
    .locals 0

    return-void
.end method

.method public onSuccessfulUnknownCall(Lcom/android/server/telecom/Call;I)V
    .locals 0

    return-void
.end method

.method public onTargetPhoneAccountChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onVideoCallProviderChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onVideoStateChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

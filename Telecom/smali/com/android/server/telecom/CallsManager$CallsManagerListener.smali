.class interface abstract Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.super Ljava/lang/Object;
.source "CallsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/CallsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CallsManagerListener"
.end annotation


# virtual methods
.method public abstract onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V
.end method

.method public abstract onCallAdded(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onCallRemoved(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onCallStateChanged(Lcom/android/server/telecom/Call;II)V
.end method

.method public abstract onCanAddCallChanged(Z)V
.end method

.method public abstract onChangeInContent(I)V
.end method

.method public abstract onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V
.end method

.method public abstract onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
.end method

.method public abstract onIsConferencedChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V
.end method

.method public abstract onRingbackRequested(Lcom/android/server/telecom/Call;Z)V
.end method

.method public abstract onVideoStateChanged(Lcom/android/server/telecom/Call;)V
.end method

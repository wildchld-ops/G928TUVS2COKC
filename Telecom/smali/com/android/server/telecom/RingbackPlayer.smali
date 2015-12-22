.class Lcom/android/server/telecom/RingbackPlayer;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "RingbackPlayer.java"


# instance fields
.field private mCall:Lcom/android/server/telecom/Call;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mIsTonePlaying:Z

.field private final mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

.field private mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/InCallTonePlayer$Factory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/RingbackPlayer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iput-object p2, p0, Lcom/android/server/telecom/RingbackPlayer;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    return-void
.end method

.method private shouldStartRinging(Lcom/android/server/telecom/Call;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isRingbackRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startRingbackForCall(Lcom/android/server/telecom/Call;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mCall:Lcom/android/server/telecom/Call;

    if-ne v0, p1, :cond_2

    const-string v0, "Ignoring duplicate requests to ring for %s."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_3

    const-string v0, "Ringback player thinks there are two foreground-dialing calls."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iput-object p1, p0, Lcom/android/server/telecom/RingbackPlayer;->mCall:Lcom/android/server/telecom/Call;

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-nez v0, :cond_0

    const-string v0, "Playing the ringback tone for %s."

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    iput-boolean v1, p0, Lcom/android/server/telecom/RingbackPlayer;->mIsTonePlaying:Z

    goto :goto_1
.end method


# virtual methods
.method public onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->shouldStartRinging(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->startRingbackForCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->stopRingbackForCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->stopRingbackForCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/telecom/RingbackPlayer;->shouldStartRinging(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/telecom/RingbackPlayer;->startRingbackForCall(Lcom/android/server/telecom/Call;)V

    :cond_1
    return-void
.end method

.method public onRingbackRequested(Lcom/android/server/telecom/Call;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->shouldStartRinging(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->startRingbackForCall(Lcom/android/server/telecom/Call;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->stopRingbackForCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public stopRingbackForCall(Lcom/android/server/telecom/Call;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mCall:Lcom/android/server/telecom/Call;

    if-ne v0, p1, :cond_0

    iput-object v3, p0, Lcom/android/server/telecom/RingbackPlayer;->mCall:Lcom/android/server/telecom/Call;

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-nez v0, :cond_1

    const-string v0, "No player found to stop."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Stopping the ringback tone for %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->stopTone()V

    iput-object v3, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    iput-boolean v2, p0, Lcom/android/server/telecom/RingbackPlayer;->mIsTonePlaying:Z

    goto :goto_0
.end method

.method public updateSituationVolume(Landroid/media/AudioManager;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mIsTonePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    const-string v0, "situation=12;device=2"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSituationVolume: situation=12 volume of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    const-string v1, "wired headset"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/InCallTonePlayer;->setVolume(F)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "situation=12;device=1"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "rcv or spk"

    goto :goto_1
.end method

.class final Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;
.super Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;
.source "SecConnectionServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecConnectionServiceAdaper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    invoke-direct {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;-><init>(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public answerRingingCallInUI()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getMute()Z
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    iget-object v0, v0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v0, v0, Landroid/telecom/AudioState;->isMuted:Z

    return v0
.end method

.method public getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hangupBgCall()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hangupFgCall()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public holdCalls(Z)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public isLowBatt()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isSpeakerOn()Z
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    iget-object v0, v0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public onEpdgStateChanged(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEpdgStateChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onModifyCall(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onPostDialPause(Ljava/lang/String;CZ)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPostDialPauseComplete(Ljava/lang/String;C)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public rejectCall()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public restartRingingOrCallWaiting()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public saveModifiedCallLog(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public saveParticipantLog(Ljava/lang/String;JJ)V
    .locals 4

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public selectSimForEmergency(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->selectSimForEmergency(IZ)I

    move-result v0

    return v0
.end method

.method public setEcholocateCallState(ILandroid/net/Uri;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->setEcholocateCallState(ILandroid/net/Uri;II)V

    return-void
.end method

.method public setMute(Z)V
    .locals 3

    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setOtherPartyHold(Z)V
    .locals 3

    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOtherPartyHold = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSecCallExtra(Ljava/lang/String;Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "SecConnectionServiceWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSecCallExtra: callId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secCallExtra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/SecCallExtra;->isLineCtrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/secutils/MinuteMinder;->stopMinuteMinderAlarm()V

    invoke-static {v0}, Lcom/android/server/telecom/secutils/MinuteMinder;->startMinuteMinderAlarm(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isLineCtrl()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/services/telephony/common/SecCallExtra;->isLineCtrl()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/telecom/Call;->setConnectTimeMillis(J)V

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getConnectionCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeConferenceSecCallExtra(Ljava/lang/String;Lcom/android/server/telecom/Call;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    const-string v2, "SecConnectionServiceWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conferenceCall : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "SecConnectionServiceWrapper"

    const-string v2, "ConferenceCall SecCallExtra updated"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public silence()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public swapCalls()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public turnOnBluetooth(Z)V
    .locals 3

    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnBluetooth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public turnOnSpeaker(Z)V
    .locals 3

    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnSpeaker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateSecCallExtra(Ljava/lang/String;Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 3

    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSecCallExtra: callId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateSecCallExtra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->setSecCallExtra(Ljava/lang/String;Lcom/android/services/telephony/common/SecCallExtra;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

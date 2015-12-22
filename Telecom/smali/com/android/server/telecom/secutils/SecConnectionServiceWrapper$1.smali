.class Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;
.super Landroid/os/Handler;
.source "SecConnectionServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v2, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: msg.what : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-static {v3, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/Call;->updateExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->onModifyCall(Lcom/android/server/telecom/Call;ZILjava/lang/String;)V
    invoke-static {v3, v2, v4, v5, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;Lcom/android/server/telecom/Call;ZILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->answerRingingCallInUI()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_2
    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->onPostDialPause(Ljava/lang/String;CZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_3
    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v3, v1, v2}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->onPostDialPauseComplete(Ljava/lang/String;C)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_6
    invoke-virtual {v4}, Lcom/android/server/telecom/CallAudioManager;->onEpdgStateChanged()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_4
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getSecCallLogManager()Lcom/android/server/telecom/secutils/SecCallLogManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logModifyCall(Lcom/android/server/telecom/Call;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :cond_3
    :try_start_5
    const-string v1, "SecConnectionServiceWrapper"

    const-string v2, "call is empty saveModifiedCallLog"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_6
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getSecCallLogManager()Lcom/android/server/telecom/secutils/SecCallLogManager;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;Ljava/lang/String;JJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :cond_4
    :try_start_7
    const-string v1, "SecConnectionServiceWrapper"

    const-string v2, "call is empty saveParticipantLog"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_8
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getHoldTonePlayer()Lcom/android/server/telecom/secutils/HoldTonePlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/secutils/HoldTonePlayer;->start()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :cond_5
    :try_start_9
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getHoldTonePlayer()Lcom/android/server/telecom/secutils/HoldTonePlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/secutils/HoldTonePlayer;->stopCallHoldTone()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_a
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getRinger()Lcom/android/server/telecom/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Ringer;->silence()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getRinger()Lcom/android/server/telecom/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Ringer;->restartRingingOrCallWaiting()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SecConnectionServiceWrapper"

    const-string v2, "acceptCall"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SecConnectionServiceWrapper"

    const-string v2, "rejectCall"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v6, v1}, Lcom/android/server/telecom/CallsManager;->rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SecConnectionServiceWrapper"

    const-string v4, "hangupFgCall"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v1

    iget v1, v1, Landroid/telecom/AudioState;->route:I

    if-ne v1, v2, :cond_6

    invoke-virtual {v3, v7}, Lcom/android/server/telecom/CallsManager;->storeSpeakerState(Z)V

    :cond_6
    invoke-virtual {v3, v0}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SecConnectionServiceWrapper"

    const-string v2, "hangupBgCall"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_a
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    const-string v1, "SecConnectionServiceWrapper"

    const-string v4, "holdCall"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/android/server/telecom/CallsManager;->holdCall(Lcom/android/server/telecom/Call;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :cond_7
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :cond_8
    if-eqz v4, :cond_7

    :try_start_b
    const-string v1, "SecConnectionServiceWrapper"

    const-string v2, "unholdCall"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/CallsManager;->unholdCall(Lcom/android/server/telecom/Call;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_11
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_0

    const-string v1, "SecConnectionServiceWrapper"

    const-string v2, "swapCall"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/CallsManager;->holdCall(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_c
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/server/telecom/CallAudioManager;->mute(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_8
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_d
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_5
    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(IZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x5

    goto :goto_5

    :catchall_9
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_e
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/server/telecom/CallAudioManager;->turnOnSecBluetoothFromEx(Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_a
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

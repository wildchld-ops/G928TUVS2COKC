.class Lcom/android/server/telecom/BluetoothPhoneService$2;
.super Landroid/os/Handler;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;

    :goto_0
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;
    invoke-static {v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$400(Lcom/android/server/telecom/BluetoothPhoneService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v5

    const-string v6, "BluetoothPhoneService"

    const-string v7, "handleMessage(%d) / param %s"

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    if-nez v0, :cond_2

    move-object v2, v1

    :goto_1
    aput-object v2, v8, v3

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "BluetoothPhoneService"

    const-string v3, "Handler receive Unknown message"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget v2, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->param:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :pswitch_0
    :try_start_0
    const-string v2, "feature_multisim_dsda"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v2

    const-string v6, "BluetoothPhoneService"

    const-string v7, "MSG_ANSWER_CALL! phoneId = %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getRingingCall(I)Lcom/android/server/telecom/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_3

    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    const-string v1, "BluetoothPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_ANSWER_CALL! get again call = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v1

    invoke-virtual {v5, v2, v1}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    :cond_4
    if-eqz v2, :cond_6

    move v1, v3

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_3

    :cond_6
    move v1, v4

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_5
    if-eqz v2, :cond_7

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :cond_7
    move v3, v4

    goto :goto_6

    :pswitch_1
    :try_start_3
    const-string v2, "feature_multisim_dsda"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v2

    const-string v6, "BluetoothPhoneService"

    const-string v7, "MSG_HANGUP_CALL! phoneId = %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getHeldCall(I)Lcom/android/server/telecom/Call;

    move-result-object v6

    if-ne v2, v3, :cond_b

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string v7, "BluetoothPhoneService"

    const-string v8, "MSG_HANGUP_CALL! set mOtherNumHeldCalls to 1 phoneId = %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I
    invoke-static {v7, v8}, Lcom/android/server/telecom/BluetoothPhoneService;->access$502(Lcom/android/server/telecom/BluetoothPhoneService;I)I

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I
    invoke-static {v6, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$502(Lcom/android/server/telecom/BluetoothPhoneService;I)I

    iget-object v6, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v7, 0x1

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v6, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V

    :cond_8
    :goto_7
    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setMultiSimLastRejectIncomingCallPhoneId(I)V

    :cond_9
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    if-eqz v2, :cond_a

    :try_start_4
    invoke-virtual {v5, v2}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    :cond_a
    if-eqz v2, :cond_c

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    const/4 v7, 0x1

    :try_start_5
    invoke-static {v7}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string v7, "BluetoothPhoneService"

    const-string v8, "MSG_HANGUP_CALL! set mOtherNumHeldCalls to 1 phoneId = %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I
    invoke-static {v7, v8}, Lcom/android/server/telecom/BluetoothPhoneService;->access$502(Lcom/android/server/telecom/BluetoothPhoneService;I)I

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I
    invoke-static {v6, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$502(Lcom/android/server/telecom/BluetoothPhoneService;I)I

    iget-object v6, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v7, 0x1

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v6, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_9
    if-eqz v2, :cond_d

    :goto_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :cond_c
    move v3, v4

    goto :goto_8

    :cond_d
    move v3, v4

    goto :goto_a

    :pswitch_2
    :try_start_6
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_e

    :try_start_7
    iget v1, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->param:I

    int-to-char v1, v1

    invoke-virtual {v5, v2, v1}, Lcom/android/server/telecom/CallsManager;->playDtmfTone(Lcom/android/server/telecom/Call;C)V

    invoke-virtual {v5, v2}, Lcom/android/server/telecom/CallsManager;->stopDtmfTone(Lcom/android/server/telecom/Call;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    :cond_e
    if-eqz v2, :cond_f

    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_f
    move v3, v4

    goto :goto_b

    :catchall_2
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_c
    if-eqz v2, :cond_10

    :goto_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :cond_10
    move v3, v4

    goto :goto_d

    :pswitch_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :try_start_8
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    iget v3, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->param:I

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->processChld(I)Z
    invoke-static {v1, v3}, Lcom/android/server/telecom/BluetoothPhoneService;->access$700(Lcom/android/server/telecom/BluetoothPhoneService;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_3
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :pswitch_4
    :try_start_9
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getBestPhoneAccount()Landroid/telecom/PhoneAccount;
    invoke-static {v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$800(Lcom/android/server/telecom/BluetoothPhoneService;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result-object v1

    :cond_11
    :try_start_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "BluetoothPhoneService"

    const-string v3, "Can\'t get PhoneAccount or address, Use Telephony API"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v2, "BluetoothPhoneService"

    const-string v3, "address is null due to No Service."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, ""
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    :cond_12
    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_4
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_e
    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :pswitch_5
    :try_start_b
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v2

    const-string v3, "BluetoothPhoneService"

    const-string v4, "subId = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result-object v1

    :cond_13
    :goto_f
    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_14
    :try_start_c
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getBestPhoneAccount()Landroid/telecom/PhoneAccount;
    invoke-static {v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$800(Lcom/android/server/telecom/BluetoothPhoneService;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-result-object v1

    :cond_15
    :try_start_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "BluetoothPhoneService"

    const-string v3, "Can\'t get PhoneAccount or label, Use Telephony API"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v2, "BluetoothPhoneService"

    const-string v3, "label is null due to No Service."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, ""
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_f

    :catchall_5
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_10
    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :pswitch_6
    :try_start_e
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->sendListOfCalls(Z)V
    invoke-static {v1, v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$900(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_6
    move-exception v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :pswitch_7
    :try_start_f
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v1, v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_7
    move-exception v1

    if-eqz v0, :cond_16

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    :cond_16
    throw v1

    :catchall_8
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_10

    :catchall_9
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_e

    :catchall_a
    move-exception v1

    goto/16 :goto_c

    :catchall_b
    move-exception v1

    goto/16 :goto_9

    :catchall_c
    move-exception v1

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

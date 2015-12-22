.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/PhoneInterfaceManager;
    .param p2    # Lcom/android/phone/PhoneInterfaceManager$1;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method

.method private handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/os/Message;
    .param p2    # Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_0
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": CommandException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Unknown exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 47
    .param p1    # Landroid/os/Message;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v46, v0

    const/16 v42, 0x0

    :goto_0
    move/from16 v0, v42

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    aput-object v3, v46, v42

    add-int/lit8 v42, v42, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v38

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_0
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v38
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v3, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v11}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_2
    monitor-enter v38

    :try_start_1
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v38
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_2

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal(I)V
    invoke-static {v3, v12}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;I)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_2
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_2
    move-exception v3

    monitor-exit v38
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v3

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallAndHangUpActive()V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move/from16 v0, v26

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$300(Lcom/android/phone/PhoneInterfaceManager;I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v36

    const/4 v3, 0x2

    move/from16 v0, v36

    if-ne v0, v3, :cond_4

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v3, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v3, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v28

    :goto_3
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_3
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_3
    move-exception v3

    monitor-exit v38
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v3

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move/from16 v0, v26

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$300(Lcom/android/phone/PhoneInterfaceManager;I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v28

    goto :goto_3

    :cond_4
    const/4 v3, 0x1

    move/from16 v0, v36

    if-ne v0, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v3, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v28

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->slotId:I

    aget-object v3, v46, v3

    if-nez v3, :cond_6

    const-string v3, "iccTransmitApduLogicalChannel: No UICC"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_4
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_4
    move-exception v3

    monitor-exit v38
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v3

    :cond_6
    const/16 v3, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->slotId:I

    aget-object v3, v46, v3

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v30

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v30

    iget v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v30

    iget v9, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v30

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_7

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_4
    monitor-enter v38

    :try_start_5
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_5
    move-exception v3

    monitor-exit v38
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v3

    :cond_7
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_8

    const-string v3, "iccTransmitApduLogicalChannel: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccTransmitApduLogicalChannel: CommandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const-string v3, "iccTransmitApduLogicalChannel: Unknown exception"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->slotId:I

    aget-object v3, v46, v3

    if-nez v3, :cond_a

    const-string v3, "iccTransmitApduBasicChannel: No UICC"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_6
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_6
    move-exception v3

    monitor-exit v38
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v3

    :cond_a
    const/16 v3, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->slotId:I

    aget-object v4, v46, v3

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v30

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v30

    iget v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v30

    iget v9, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v30

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_b

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_b

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_5
    monitor-enter v38

    :try_start_7
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_7
    move-exception v3

    monitor-exit v38
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v3

    :cond_b
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_c

    const-string v3, "iccTransmitApduBasicChannel: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccTransmitApduBasicChannel: CommandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const-string v3, "iccTransmitApduBasicChannel: Unknown exception"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->slotId:I

    aget-object v3, v46, v3

    if-nez v3, :cond_e

    const-string v3, "iccExchangeSimIO: No UICC"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_8
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_8
    move-exception v3

    monitor-exit v38
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v3

    :cond_e
    const/16 v3, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->slotId:I

    aget-object v4, v46, v3

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v30

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v30

    iget v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v30

    iget v9, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v30

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/uicc/UiccCard;->iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_f

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_f

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_6
    monitor-enter v38

    :try_start_9
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_9
    move-exception v3

    monitor-exit v38
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v3

    :cond_f
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_6

    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/4 v3, 0x0

    aget-object v3, v46, v3

    if-nez v3, :cond_10

    const-string v3, "sendEnvelopeWithStatus: No UICC"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_a
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_a
    move-exception v3

    monitor-exit v38
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v3

    :cond_10
    const/16 v3, 0x1a

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    const/4 v3, 0x0

    aget-object v4, v46, v3

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v11}, Lcom/android/internal/telephony/uicc/UiccCard;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_11

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_11

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_7
    monitor-enter v38

    :try_start_b
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_b
    move-exception v3

    monitor-exit v38
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v3

    :cond_11
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_12

    const-string v3, "sendEnvelopeWithStatus: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendEnvelopeWithStatus: CommandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_7

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendEnvelopeWithStatus: exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->slotId:I

    aget-object v3, v46, v3

    if-nez v3, :cond_14

    const-string v3, "iccOpenLogicalChannel: No UICC"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_c
    move-exception v3

    monitor-exit v38
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v3

    :cond_14
    const/16 v3, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->slotId:I

    aget-object v3, v46, v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->AID:Ljava/lang/String;

    invoke-virtual {v3, v4, v11}, Lcom/android/internal/telephony/uicc/UiccCard;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_16

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_16

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v40, v3

    check-cast v40, [I

    const/4 v3, 0x0

    aget v18, v40, v3

    const/16 v41, 0x0

    move-object/from16 v0, v40

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_15

    move-object/from16 v0, v40

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    new-array v0, v3, [B

    move-object/from16 v41, v0

    const/16 v29, 0x1

    :goto_8
    move-object/from16 v0, v40

    array-length v3, v0

    move/from16 v0, v29

    if-ge v0, v3, :cond_15

    add-int/lit8 v3, v29, -0x1

    aget v4, v40, v29

    int-to-byte v4, v4

    aput-byte v4, v41, v3

    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    :cond_15
    new-instance v35, Landroid/telephony/IccOpenLogicalChannelResponse;

    const/4 v3, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v18

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    :goto_9
    move-object/from16 v0, v35

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_d
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_d
    move-exception v3

    monitor-exit v38
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v3

    :cond_16
    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_17

    const-string v3, "iccOpenLogicalChannel: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    :cond_17
    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccOpenLogicalChannel: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    :cond_18
    const/16 v27, 0x4

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_19

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_19

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MISSING_RESOURCE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1a

    const/16 v27, 0x2

    :cond_19
    :goto_a
    new-instance v35, Landroid/telephony/IccOpenLogicalChannelResponse;

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v27

    invoke-direct {v0, v3, v1, v4}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    goto :goto_9

    :cond_1a
    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NO_SUCH_ELEMENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_19

    const/16 v27, 0x3

    goto :goto_a

    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->slotId:I

    aget-object v3, v46, v3

    if-nez v3, :cond_1b

    const-string v3, "iccCloseLogicalChannel: No UICC"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_e
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_e
    move-exception v3

    monitor-exit v38
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v3

    :cond_1b
    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->slotId:I

    aget-object v3, v46, v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->channel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v11}, Lcom/android/internal/telephony/uicc/UiccCard;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_12
    const-string v3, "iccCloseLogicalChannel"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v3, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v4, v3, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3, v11}, Lcom/android/internal/telephony/Phone;->nvReadItem(ILandroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_14
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1c

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1c

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_b
    monitor-enter v38

    :try_start_f
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_f
    move-exception v3

    monitor-exit v38
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v3

    :cond_1c
    const-string v3, ""

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_1d

    const-string v3, "nvReadItem: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_b

    :cond_1d
    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nvReadItem: CommandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_b

    :cond_1e
    const-string v3, "nvReadItem: Unknown exception"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v3, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v4, v3, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v5, v3, v11}, Lcom/android/internal/telephony/Phone;->nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_16
    const-string v3, "nvWriteItem"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v3, 0x12

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v4, v3, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3, v11}, Lcom/android/internal/telephony/Phone;->nvWriteCdmaPrl([BLandroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_18
    const-string v3, "nvWriteCdmaPrl"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v3, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v4, v3, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3, v11}, Lcom/android/internal/telephony/Phone;->nvResetConfig(ILandroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_1a
    const-string v3, "nvResetConfig"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v3, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v3, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v11}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1f

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1f

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_c
    monitor-enter v38

    :try_start_10
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_10
    move-exception v3

    monitor-exit v38
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v3

    :cond_1f
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_20

    const-string v3, "getPreferredNetworkType: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_c

    :cond_20
    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferredNetworkType: CommandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_c

    :cond_21
    const-string v3, "getPreferredNetworkType: Unknown exception"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Ljava/lang/String;)V

    goto :goto_c

    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v3, 0x18

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v3, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move/from16 v0, v33

    invoke-interface {v3, v0, v11}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_1e
    const-string v3, "setPreferredNetworkType"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    invoke-static {v4, v3, v11}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_20
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v38

    iput-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_11
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_11
    move-exception v3

    monitor-exit v38
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v3

    :pswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v3, 0x22

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v38

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    move-object/from16 v0, v44

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v3, v4, v11}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_22
    const-string v3, "setVoicemailNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_23
    const-string v3, "GET_ATR-TEST"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v23, Ljava/io/DataOutputStream;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x15

    :try_start_12
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xd

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    :goto_d
    const-string v3, "PhoneInterfaceManager"

    const-string v4, "Request ATR Info"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v43, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/16 v5, 0x24

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move/from16 v0, v43

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;I)V
    invoke-static {v3, v4, v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$700(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;I)V

    if-eqz v23, :cond_1

    :try_start_13
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_GET_ATR_INFO : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :pswitch_24
    const-string v3, "EVENT_GET_ATR_INFO_DONE"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_23

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_23

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v40, v3

    check-cast v40, [B

    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ATR Length :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v5, v40, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    aget-byte v3, v40, v3

    if-lez v3, :cond_22

    const/4 v3, 0x0

    aget-byte v3, v40, v3

    new-array v0, v3, [B

    move-object/from16 v21, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, v21

    array-length v5, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_22
    :goto_e
    move-object/from16 v0, v21

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_14
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_12
    move-exception v3

    monitor-exit v38
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_12

    throw v3

    :cond_23
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in EVENT_GET_ATR_INFO_DONE with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :pswitch_25
    const-string v3, "CMD_ICCPCSC_POWERUP"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    const/16 v5, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    invoke-static {v4, v3, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_26
    const-string v3, "EVENT_ICCPCSC_POWERUP_DONE"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    const/16 v37, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_25

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_25

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v40, v3

    check-cast v40, [B

    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ATR Length :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v5, v40, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v40

    array-length v3, v0

    if-lez v3, :cond_24

    move-object/from16 v0, v40

    array-length v3, v0

    new-array v0, v3, [B

    move-object/from16 v37, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v40

    array-length v5, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_24
    :goto_f
    move-object/from16 v0, v37

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_15
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_13
    move-exception v3

    monitor-exit v38
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_13

    throw v3

    :cond_25
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in EVENT_ICCPCSC_POWERUP_DONE with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :pswitch_27
    const-string v3, "CMD_ICCPCSC_CONNECT"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    const/16 v5, 0x28

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    invoke-static {v4, v3, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_28
    const-string v3, "EVENT_ICCPCSC_CONNECT_DONE"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_27

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_27

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v40, v3

    check-cast v40, [B

    move-object/from16 v0, v40

    array-length v3, v0

    if-lez v3, :cond_26

    move-object/from16 v0, v40

    array-length v3, v0

    new-array v0, v3, [B

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v40

    array-length v5, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_26
    :goto_10
    move-object/from16 v0, v20

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_16
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_14
    move-exception v3

    monitor-exit v38
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_14

    throw v3

    :cond_27
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in EVENT_ICCPCSC_CONNECT_DONE with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :pswitch_29
    const-string v3, "CMD_ICCPCSC_DISCONNECT"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    const/16 v5, 0x2a

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    invoke-static {v4, v3, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_2a
    const-string v3, "EVENT_ICCPCSC_DISCONNECT_DONE"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_29

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_29

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v40, v3

    check-cast v40, [B

    move-object/from16 v0, v40

    array-length v3, v0

    if-lez v3, :cond_28

    move-object/from16 v0, v40

    array-length v3, v0

    new-array v0, v3, [B

    move-object/from16 v22, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v40

    array-length v5, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_28
    :goto_11
    move-object/from16 v0, v22

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_17
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_15
    move-exception v3

    monitor-exit v38
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_15

    throw v3

    :cond_29
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in EVENT_ICCPCSC_DISCONNECT_DONE with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :pswitch_2b
    const-string v3, "CMD_ICCPCSC_TRANSMIT"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    const/16 v5, 0x2c

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    invoke-static {v4, v3, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_2c
    const-string v3, "EVENT_ICCPCSC_TRANSMIT_DONE"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    const/16 v45, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2b

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2b

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v40, v3

    check-cast v40, [B

    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result Length :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v40

    array-length v3, v0

    if-lez v3, :cond_2a

    move-object/from16 v0, v40

    array-length v3, v0

    new-array v0, v3, [B

    move-object/from16 v45, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v40

    array-length v5, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v45

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_2a
    :goto_12
    move-object/from16 v0, v45

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v38

    :try_start_18
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_16
    move-exception v3

    monitor-exit v38
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_16

    throw v3

    :cond_2b
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in EVENT_ICCPCSC_TRANSMIT_DONE with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :pswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v24, Ljava/io/DataOutputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v32, 0x4

    const/16 v3, 0x11

    :try_start_19
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x68

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_3

    :goto_13
    const-string v3, "DELETE_GUTI-TEST"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/16 v5, 0x34

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    if-eqz v24, :cond_1

    :try_start_1a
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_DELETE_GUTI : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v25

    const-string v3, "IOException in open channel"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    goto :goto_13

    :pswitch_2e
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const-string v3, "EVENT_DELETE_GUTI_DONE response came"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception and ar.result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Ljava/lang/String;)V

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2c

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_14
    monitor-enter v38

    :try_start_1b
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_17
    move-exception v3

    monitor-exit v38
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_17

    throw v3

    :cond_2c
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_14

    :pswitch_2f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v19, Ljava/io/DataOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v39

    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request Set Band mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x16

    :try_start_1c
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x13

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    move/from16 v0, v39

    int-to-byte v3, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_5

    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/16 v5, 0x36

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    if-eqz v19, :cond_1

    :try_start_1d
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_5
    move-exception v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    :pswitch_30
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2d

    iget-object v3, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2d

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    const-string v3, "PhoneInterfaceManager"

    const-string v4, "Request Set Band mode Done! "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    monitor-enter v38

    :try_start_1e
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v38

    goto/16 :goto_1

    :catchall_18
    move-exception v3

    monitor-exit v38
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_18

    throw v3

    :cond_2d
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    const-string v3, "PhoneInterfaceManager"

    const-string v4, "Request Set Band mode Fail! "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_d
        :pswitch_e
        :pswitch_1f
        :pswitch_20
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
    .end packed-switch
.end method

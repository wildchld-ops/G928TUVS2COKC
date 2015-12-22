.class Lcom/android/phone/CarrierManager$1;
.super Landroid/os/Handler;
.source "CarrierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CarrierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CarrierManager;


# direct methods
.method constructor <init>(Lcom/android/phone/CarrierManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CarrierManager$1;->this$0:Lcom/android/phone/CarrierManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarrierPhoneEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "[carrier-phone] CarrierManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/phone/carrier/CarrierConst;->phoneEventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/TPhoneService;->sendPhoneState()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/OllehPhoneService;->sendPhoneState()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendNewIncomingCall(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/OllehPhoneService;->sendNewIncomingCall(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendDisconnectCall(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/OllehPhoneService;->sendDisconnectCall(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/TPhoneService;->sendPhoneState()V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/OllehPhoneService;->sendPhoneState()V

    goto/16 :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-char v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/TPhoneService;->sendPostOnDialChars(Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-char v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/OllehPhoneService;->sendPostOnDialChars(Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/OllehPhoneService;->sendSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/phone/CarrierManager$1;->this$0:Lcom/android/phone/CarrierManager;

    # invokes: Lcom/android/phone/CarrierManager;->onIncomingModifyCall(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/CarrierManager;->access$000(Lcom/android/phone/CarrierManager;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendSuppServiceNotification(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/OllehPhoneService;->sendSuppServiceNotification(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0xd -> :sswitch_4
        0x64 -> :sswitch_6
        0x6e -> :sswitch_5
        0x6f -> :sswitch_7
    .end sparse-switch
.end method

.class Lcom/android/services/telephony/EmergencyCallHelper$1;
.super Landroid/os/Handler;
.source "EmergencyCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/EmergencyCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/EmergencyCallHelper;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/EmergencyCallHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/EmergencyCallHelper$1;->this$0:Lcom/android/services/telephony/EmergencyCallHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const-string v4, "handleMessage: unexpected message: %d."

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Phone;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v4, p0, Lcom/android/services/telephony/EmergencyCallHelper$1;->this$0:Lcom/android/services/telephony/EmergencyCallHelper;

    # invokes: Lcom/android/services/telephony/EmergencyCallHelper;->startSequenceInternal(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V
    invoke-static {v4, v3, v1}, Lcom/android/services/telephony/EmergencyCallHelper;->access$000(Lcom/android/services/telephony/EmergencyCallHelper;Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/services/telephony/EmergencyCallHelper$1;->this$0:Lcom/android/services/telephony/EmergencyCallHelper;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/ServiceState;

    # invokes: Lcom/android/services/telephony/EmergencyCallHelper;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    invoke-static {v5, v4}, Lcom/android/services/telephony/EmergencyCallHelper;->access$100(Lcom/android/services/telephony/EmergencyCallHelper;Landroid/telephony/ServiceState;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/services/telephony/EmergencyCallHelper$1;->this$0:Lcom/android/services/telephony/EmergencyCallHelper;

    # invokes: Lcom/android/services/telephony/EmergencyCallHelper;->onRetryTimeout()V
    invoke-static {v4}, Lcom/android/services/telephony/EmergencyCallHelper;->access$200(Lcom/android/services/telephony/EmergencyCallHelper;)V

    goto :goto_0

    :pswitch_4
    const-string v4, "support_uicc_mobility"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/services/telephony/EmergencyCallHelper$1;->this$0:Lcom/android/services/telephony/EmergencyCallHelper;

    # getter for: Lcom/android/services/telephony/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/services/telephony/EmergencyCallHelper;->access$300(Lcom/android/services/telephony/EmergencyCallHelper;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getErrorDialogActivityInstance()Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "common_volte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v4

    if-ne v4, v6, :cond_0

    const-string v4, " EVENT_ECMP_STATE_CHANGED :"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->finishEmergencyRadioOnDialog()V

    iget-object v4, p0, Lcom/android/services/telephony/EmergencyCallHelper$1;->this$0:Lcom/android/services/telephony/EmergencyCallHelper;

    # invokes: Lcom/android/services/telephony/EmergencyCallHelper;->onComplete(Z)V
    invoke-static {v4, v6}, Lcom/android/services/telephony/EmergencyCallHelper;->access$400(Lcom/android/services/telephony/EmergencyCallHelper;Z)V

    iget-object v4, p0, Lcom/android/services/telephony/EmergencyCallHelper$1;->this$0:Lcom/android/services/telephony/EmergencyCallHelper;

    # invokes: Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V
    invoke-static {v4}, Lcom/android/services/telephony/EmergencyCallHelper;->access$500(Lcom/android/services/telephony/EmergencyCallHelper;)V

    goto :goto_0

    :cond_1
    const-string v4, " not errorDialogActivity.getProgressDialog().isShowing() :"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

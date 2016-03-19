.class Lcom/android/phone/TPhoneService$TBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method private constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/TPhoneService;Lcom/android/phone/TPhoneService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService$TBroadcastReceiver;-><init>(Lcom/android/phone/TPhoneService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TBroadcastReceiver : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V
    invoke-static {v8, v9, v12}, Lcom/android/phone/TPhoneService;->access$1300(Lcom/android/phone/TPhoneService;Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    const-string v9, "telecom"

    invoke-virtual {v8, v9}, Lcom/android/phone/TPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    const-string v8, "com.skt.prod.phone.TPHONE_SERVICE_CONNECTED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    # setter for: Lcom/android/phone/TPhoneService;->mIsSKTReady:Ljava/lang/Boolean;
    invoke-static {v8, v9}, Lcom/android/phone/TPhoneService;->access$1402(Lcom/android/phone/TPhoneService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;
    invoke-static {v8}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/CarrierManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/CarrierManager;->connectTInCallScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "com.skt.prod.phone.TPHONE_SERVICE_DISCONNECTED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    # setter for: Lcom/android/phone/TPhoneService;->mIsSKTReady:Ljava/lang/Boolean;
    invoke-static {v8, v9}, Lcom/android/phone/TPhoneService;->access$1402(Lcom/android/phone/TPhoneService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;
    invoke-static {v8}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/CarrierManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/CarrierManager;->disconnectTInCallScreen()V

    goto :goto_0

    :cond_2
    const-string v8, "com.skt.prod.dialer.CHANGE_TPHONE_MODE_SETTING"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->updateAutoRejectNotification()V
    invoke-static {v8}, Lcom/android/phone/TPhoneService;->access$1500(Lcom/android/phone/TPhoneService;)V

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v9, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;
    invoke-static {v9}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/CarrierManager;

    move-result-object v9

    iget v9, v9, Lcom/android/phone/CarrierManager;->mCoverType:I

    iget-object v10, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;
    invoke-static {v10}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/CarrierManager;

    move-result-object v10

    iget v10, v10, Lcom/android/phone/CarrierManager;->mCoverState:I

    invoke-virtual {v8, v9, v10}, Lcom/android/phone/TPhoneService;->sendCoverStateChanged(II)V

    goto :goto_0

    :cond_3
    const-string v8, "com.skt.prod.phone.action.FINISH_CALLEND_ACTIVITY"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v8}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "[carrier-phone] TPhoneService"

    const-string v9, "isRinging call state don\'t finish InCallScreen"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v8, "[carrier-phone] TPhoneService"

    const-string v9, "finish InCallScreen"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.skt.prod.phone.action.FINISH_INCALLUI"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v8}, Lcom/android/phone/TPhoneService;->access$200(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v8, "com.skt.prod.phone.TPHONE_CLEAR_LOCKSCREEN_NOTIFICATION"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V

    goto/16 :goto_0

    :cond_6
    const-string v8, "com.skt.prod.dialer.TPHONE_UPDATE_REQUEST"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v8, "[carrier-phone] TPhoneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TPhone]PhonePath ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "TPHONE_PATH"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "TPHONE_INTERNAL_PATH"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "[carrier-phone] TPhoneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TPhone]PhonePath ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "[carrier-phone] TPhoneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TPhone]DialPath ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_7

    if-nez v1, :cond_8

    :cond_7
    const-string v8, "[carrier-phone] TPhoneService"

    const-string v9, "[TPhone] INSTALL path is null!!"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v8, v1}, Lcom/android/phone/TPhoneService;->SetTPhonePath(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v8, v0}, Lcom/android/phone/TPhoneService;->SetTDialPath(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->InstallTPhonePkg()V
    invoke-static {v8}, Lcom/android/phone/TPhoneService;->access$1600(Lcom/android/phone/TPhoneService;)V

    goto/16 :goto_0

    :cond_9
    const-string v8, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "reason"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_a

    const-string v8, "[carrier-phone] TPhoneService"

    const-string v9, "Emegency mode set MODE_ENABLED"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const/4 v8, 0x2

    if-ne v6, v8, :cond_b

    const-string v8, "[carrier-phone] TPhoneService"

    const-string v9, "Emegency mode set MODE_ENABLING"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v8}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(Lcom/android/internal/telephony/CallManager;)V

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V

    goto/16 :goto_0

    :cond_b
    const/4 v8, 0x5

    if-ne v6, v8, :cond_0

    const-string v8, "[carrier-phone] TPhoneService"

    const-string v9, "Emegency mode set MODE_DISABLED"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v8}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(Lcom/android/internal/telephony/CallManager;)V

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/TPhoneService;->access$400(Lcom/android/phone/TPhoneService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x72

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_c
    const-string v8, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;
    invoke-static {v8}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/CarrierManager;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/android/phone/CarrierManager;->displayTPhone(I)V

    goto/16 :goto_0
.end method

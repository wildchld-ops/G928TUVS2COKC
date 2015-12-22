.class Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OllehPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OllehPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OllehPhoneBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OllehPhoneService;


# direct methods
.method private constructor <init>(Lcom/android/phone/OllehPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;->this$0:Lcom/android/phone/OllehPhoneService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/OllehPhoneService;Lcom/android/phone/OllehPhoneService$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/OllehPhoneService;
    .param p2    # Lcom/android/phone/OllehPhoneService$1;

    invoke-direct {p0, p1}, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;-><init>(Lcom/android/phone/OllehPhoneService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;->this$0:Lcom/android/phone/OllehPhoneService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OllehPhoneBroadcastReceiver : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/phone/OllehPhoneService;->access$1100(Lcom/android/phone/OllehPhoneService;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;->this$0:Lcom/android/phone/OllehPhoneService;

    const-string v6, "telecom"

    invoke-virtual {v5, v6}, Lcom/android/phone/OllehPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    const-string v5, "com.kt.ollehphone.CHANGE_MODE_SETTING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;->this$0:Lcom/android/phone/OllehPhoneService;

    # invokes: Lcom/android/phone/OllehPhoneService;->updateAutoRejectNotification()V
    invoke-static {v5}, Lcom/android/phone/OllehPhoneService;->access$1200(Lcom/android/phone/OllehPhoneService;)V

    goto :goto_0

    :cond_2
    const-string v5, "com.skt.prod.phone.action.FINISH_CALLEND_ACTIVITY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/OllehPhoneService;->access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "[carrier-phone] OllehPhoneService"

    const-string v6, "isRinging call state don\'t finish InCallScreen"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v5, "[carrier-phone] OllehPhoneService"

    const-string v6, "finish InCallScreen"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.skt.prod.phone.action.FINISH_INCALLUI"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/OllehPhoneService;->access$100(Lcom/android/phone/OllehPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v5, "com.kt.ollehphone.CLEAR_LOCKSCREEN_NOTIFICATION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V

    goto/16 :goto_0

    :cond_5
    const-string v5, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "reason"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    const-string v5, "[carrier-phone] OllehPhoneService"

    const-string v6, "Emegency mode set MODE_ENABLED"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    const-string v5, "[carrier-phone] OllehPhoneService"

    const-string v6, "Emegency mode set MODE_ENABLING"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/OllehPhoneService;->access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(Lcom/android/internal/telephony/CallManager;)V

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    const-string v5, "[carrier-phone] OllehPhoneService"

    const-string v6, "Emegency mode set MODE_DISABLED"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/OllehPhoneService;->access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(Lcom/android/internal/telephony/CallManager;)V

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/OllehPhoneService;->access$300(Lcom/android/phone/OllehPhoneService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x72

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_8
    const-string v5, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;
    invoke-static {v5}, Lcom/android/phone/OllehPhoneService;->access$1000(Lcom/android/phone/OllehPhoneService;)Lcom/android/phone/CarrierManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/phone/CarrierManager;->displayOllehPhone(I)V

    goto/16 :goto_0
.end method

.class Lcom/android/phone/PhoneGlobals$4;
.super Landroid/os/Handler;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    const-string v9, "KDI"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "PhoneApp"

    const-string v10, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v9, "nck_block_feature"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "1"

    const-string v10, "ril.perso_nwk_puk"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "PhoneApp"

    const-string v10, "network perm blocked, do not show sim depersonal panel"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v9, "PhoneApp"

    const-string v10, "show sim depersonal panel"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto :goto_0

    :sswitch_3
    const-string v9, "PhoneApp"

    const-string v10, "show sim depersonal panel- EVENT_SIM_NETWORK_SUBSET_LOCKED"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "KDI"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v5, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v5, v9, v10}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;)V

    invoke-virtual {v5}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto/16 :goto_0

    :sswitch_4
    const-string v9, "PhoneApp"

    const-string v10, "show sim service provider depersonal panel"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "KDI"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v7, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v7, v9, v10}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;)V

    invoke-virtual {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v9}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v9}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto/16 :goto_0

    :sswitch_7
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v10, v9}, Lcom/android/phone/PhoneGlobals;->access$200(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/PhoneGlobals;->onMMICompleteSecondary(Landroid/os/AsyncResult;)V
    invoke-static {v10, v9}, Lcom/android/phone/PhoneGlobals;->access$300(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;
    invoke-static {v9}, Lcom/android/phone/PhoneGlobals;->access$400(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    :sswitch_b
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v10, "READY"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v9, v12}, Lcom/android/phone/PhoneGlobals;->access$502(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;

    :cond_3
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/phone/PhoneGlobals;->access$600(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/phone/PhoneGlobals;->access$600(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9, v12}, Lcom/android/phone/PhoneGlobals;->access$602(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :sswitch_c
    const/4 v1, 0x0

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget v9, Lcom/android/phone/PhoneGlobals;->mDockState:I

    if-eqz v9, :cond_4

    const/4 v1, 0x1

    :cond_4
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v9, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isConnectedMirrorLink()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/services/utils/SecTelecomAdapter;->turnOnSpeaker(Z)V

    :cond_5
    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->setDockOn(Z)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    const-string v10, "telecom"

    invoke-virtual {v9, v10}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "surface_palm_touch"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const-string v9, "PhoneApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_PALM_DOWN : value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v8, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->silenceRinger()V

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.android.phone"

    const-string v11, "PALM"

    invoke-static {v9, v10, v11}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.android.phone.action.ENABLE_UCE_TOGGLE"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9, v2}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    sput-boolean v11, Lcom/android/phone/PhoneGlobals;->mUCEToggleEnabled:Z

    goto/16 :goto_0

    :sswitch_f
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v9}, Lcom/android/phone/NotificationMgr;->notifyDataDisconnectDomestic()V

    goto/16 :goto_0

    :sswitch_10
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v9}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectDomestic()V

    goto/16 :goto_0

    :sswitch_11
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->handleGetCallWaitingResponse(Landroid/os/Message;)V
    invoke-static {v9, p1}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_b
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_0
        0xd -> :sswitch_c
        0xe -> :sswitch_1
        0x18 -> :sswitch_d
        0x1e -> :sswitch_f
        0x1f -> :sswitch_10
        0x34 -> :sswitch_7
        0x35 -> :sswitch_8
        0x3e -> :sswitch_9
        0x3f -> :sswitch_a
        0x5a -> :sswitch_e
        0xcc -> :sswitch_11
    .end sparse-switch
.end method

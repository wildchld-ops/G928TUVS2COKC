.class Lcom/android/incallui/InCallPresenter$InCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter$InCallReceiver;-><init>(Lcom/android/incallui/InCallPresenter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v17, "InCallPresenter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallReceiver : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v17, "com.samsung.intent.action.WB_AMR"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string v4, "EXTRA_STATE"

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "WB_AMR - state : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v7

    invoke-static/range {v16 .. v16}, Lcom/android/services/telephony/common/SystemDBInterface;->setWideBandAMR(I)V

    if-eqz v7, :cond_2

    const-string v17, "updateHDIconByIntent"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-interface {v7}, Lcom/android/incallui/SecCallCardUi;->updateHDIconByIntent()V

    goto/16 :goto_0

    :cond_2
    const-string v17, "callCardUi() is null"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    const-string v17, "isActivityStarted() is false"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    const-string v17, "com.skt.prod.phone.action.FINISH_INCALLUI"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "com.kt.ollehphone.action.FINISH_INCALLUI"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    # invokes: Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->access$800(Lcom/android/incallui/InCallPresenter;)V

    goto/16 :goto_0

    :cond_6
    const-string v17, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "reason"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EmergencyModeBroadcastReceiver: reason = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/incallui/InCallPresenter;->onEmergencyModeChange(I)V

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v14, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->access$900(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v17

    sget-object v18, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_7
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUtils;->setFullScreenMode(Z)V

    # getter for: Lcom/android/incallui/InCallPresenter;->mPreEasymode:Z
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->access$1000()Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/incallui/InCallPresenter;->updateNotification(Z)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto/16 :goto_0

    :cond_9
    const-string v17, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const-string v17, "==> ACTION_AUDIO_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    # getter for: Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->access$1100(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    # getter for: Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->access$1100(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x3ec

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    # getter for: Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->access$1100(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x3ec

    const-wide/16 v20, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_a
    const-string v17, "com.android.intent.action.PSBARRED_FOR_VOLTE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const-string v17, "ims_ps_barring"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "cmd"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "PSBarring action = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", extra cmd = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/IMSErrorUtils;->setPSBarringEventReceived(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_b
    const-string v17, "com.android.systemui.statusbar.EXPANDED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, "com.android.incallui.SecInCallActivity"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/incallui/InCallPresenter;->isStatusBarExpanded:Z
    invoke-static/range {v17 .. v18}, Lcom/android/incallui/InCallPresenter;->access$1202(Lcom/android/incallui/InCallPresenter;Z)Z

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/BaseInCallComponent;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/BaseInCallComponent;

    move-result-object v17

    check-cast v17, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v17

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraOnOff(ZZ)V

    goto/16 :goto_0

    :cond_c
    const-string v17, "com.android.systemui.statusbar.COLLAPSED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "com.android.incallui.SecInCallActivity"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/incallui/InCallPresenter;->isStatusBarExpanded:Z
    invoke-static/range {v17 .. v18}, Lcom/android/incallui/InCallPresenter;->access$1202(Lcom/android/incallui/InCallPresenter;Z)Z

    const-string v17, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/BaseInCallComponent;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/BaseInCallComponent;

    move-result-object v17

    check-cast v17, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v17

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraOnOff(ZZ)V

    goto/16 :goto_0

    :cond_d
    const-string v17, "com.android.intent.action.VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const-string v17, "data_usage_limit"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/BaseInCallComponent;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/BaseInCallComponent;

    move-result-object v17

    check-cast v17, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/SecInCallActivity;->showDataUsageLimitDialog()V

    goto/16 :goto_0

    :cond_e
    const-string v17, "com.android.launcher.action.EASY_MODE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const-string v17, "support_easy_mode"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "easymode"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecording()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v10

    if-eqz v10, :cond_f

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v8

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "heldCall: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", canHold: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    if-eqz v8, :cond_f

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v17

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    :cond_f
    # setter for: Lcom/android/incallui/InCallPresenter;->mPreEasymode:Z
    invoke-static {v9}, Lcom/android/incallui/InCallPresenter;->access$1002(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto/16 :goto_0

    :cond_10
    const-string v17, "com.samsung.android.swis.action.SWIS_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "com.samsung.android.swis.extra.SWIS_STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    # setter for: Lcom/android/incallui/InCallPresenter;->mSwisState:I
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->access$1302(I)I

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "swis state:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Lcom/android/incallui/InCallPresenter;->mSwisState:I
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->access$1300()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/accessory/CoverScreen;->updateGuideText()V

    goto/16 :goto_0
.end method

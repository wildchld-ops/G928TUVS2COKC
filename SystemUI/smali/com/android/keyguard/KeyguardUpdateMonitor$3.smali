.class Lcom/android/keyguard/KeyguardUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v4, "KeyguardUpdateMonitor"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "received broadcast "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PERF"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "received broadcast "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v23, 0x12d

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "subscription"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneId(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v23

    aput-object v23, v4, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v23

    aput-object v23, v4, v19

    const-string v4, "KeyguardUpdateMonitor"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Received SPN update on phoneId :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , mTelephonyPlmn["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v24, v0

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;
    invoke-static/range {v24 .. v24}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v24

    aget-object v24, v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , mTelephonySpn["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v24, v0

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;
    invoke-static/range {v24 .. v24}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v24

    aget-object v24, v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v23, 0x12f

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    const-string v4, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "simcard_sim_id"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const-string v4, "simcard_sim_activate"

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v4, "KeyguardUpdateMonitor"

    const-string v23, "ACTION_SIM_MGT_ACTIVATED_CHANGED"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v23, v0

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x12f

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "status"

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v4, "plugged"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v4, "level"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v4, "health"

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v4, "online"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v4, "hv_charger"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x12e

    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIIIZ)V

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    move-result-object v14

    const-string v4, "KeyguardUpdateMonitor"

    const-string v23, "ACTION_SIM_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v23, 0x130

    iget v0, v14, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    move/from16 v24, v0

    iget v0, v14, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    move/from16 v25, v0

    iget-object v0, v14, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_6
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v23, v0

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x131

    const-string v25, "android.media.EXTRA_RINGER_MODE"

    const/16 v26, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v23, v0

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x132

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v23, v0

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x137

    const-string v25, "android.intent.extra.user_handle"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_9
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    goto/16 :goto_0

    :cond_a
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "ril.MSIMM"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v4, "1"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v23, 0x1

    aget-object v4, v4, v23

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v23, 0x1

    aget-object v4, v4, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v23, v0

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnDefault:Ljava/lang/CharSequence;
    invoke-static/range {v23 .. v23}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v25

    # setter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnDefault:Ljava/lang/CharSequence;
    invoke-static/range {v24 .. v25}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2302(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    aput-object v24, v4, v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v23, 0x12f

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    # setter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnDefault:Ljava/lang/CharSequence;
    invoke-static {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2302(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_c
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v23, "airplane_mode_on"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const-string v4, "KeyguardUpdateMonitor"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Received  ACTION_AIRPLANE_MODE_CHANGED = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v23, 0x141

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v13, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_d
    const-string v4, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "KeyguardSPassPopupGuideInt"

    const/16 v23, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v4, v1}, Lcom/android/keyguard/sec/SecPopupManager;->setRemainCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_e
    const-string v4, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "KeyguardSPassPopupGuideInt"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/keyguard/sec/SecPopupManager;->getRemainCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1

    const-string v4, "KeyguardSPassPopupGuideInt"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v4, v1}, Lcom/android/keyguard/sec/SecPopupManager;->setRemainCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_f
    const-string v4, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v23, "device_provisioned"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v23, v0

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z
    invoke-static/range {v23 .. v23}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v23

    move/from16 v0, v23

    # setter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z
    invoke-static {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2502(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v23, 0x134

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_10
    const-string v4, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v23, v0

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x14a

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_11
    const-string v4, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v23, v0

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x14b

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

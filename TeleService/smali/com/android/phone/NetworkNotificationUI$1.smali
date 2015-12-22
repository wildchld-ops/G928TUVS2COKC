.class Lcom/android/phone/NetworkNotificationUI$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v1, 0x1

    # getter for: Lcom/android/phone/NetworkNotificationUI;->SHIP_BUILD:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIntentReceiver onReceive intent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v7, "com.android.action.NSRI_TOAST_CMD"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "toastcmd"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "ntype"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_4

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a06f7

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    const-string v7, "feature_kor"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "userdebug"

    const-string v8, "ro.build.type"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "com.android.action.LTE_THROUGHPUT_RESULT"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "result"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$1100()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentThroughPut_Result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->saveLteThroughtputResult(Ljava/lang/String;)V
    invoke-static {v7, v6}, Lcom/android/phone/NetworkNotificationUI;->access$2200(Lcom/android/phone/NetworkNotificationUI;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a06f8

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    const-string v7, "prompt_to_data_roaming"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    const-string v7, "android.intent.action.ACTION_DATA_SELECTION_POPUP"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    # getter for: Lcom/android/phone/NetworkNotificationUI;->SHIP_BUILD:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "NetworkNotificationUI"

    const-string v10, "android.intent.action.ACTION_DATA_SELECTION_POPUP"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    # getter for: Lcom/android/phone/NetworkNotificationUI;->SHIP_BUILD:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mPhone.isNetworkRoaming() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v11}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$400(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$400(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eq v7, v8, :cond_3

    :cond_8
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->isOtaRegistering()Z
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v7, v9, v9}, Lcom/android/phone/NetworkNotificationUI;->access$600(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionPopupIsSet()Z
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showDataSelectionPopUp()V
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$800(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionPopupIsSet()Z
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionEnableSet()Z
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/phone/NetworkNotificationUI;->access$600(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v8

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v7, v8}, Lcom/android/phone/NetworkNotificationUI;->access$1002(Lcom/android/phone/NetworkNotificationUI;Landroid/net/NetworkPolicyManager;)Landroid/net/NetworkPolicyManager;

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1000(Lcom/android/phone/NetworkNotificationUI;)Landroid/net/NetworkPolicyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v7

    if-eqz v7, :cond_d

    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$1100()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "NetworkNotificationUI"

    const-string v8, "RestrictBackground OFF"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v7, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "ENABLED"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_d
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_roaming"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_0

    :cond_e
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v7, v9, v9}, Lcom/android/phone/NetworkNotificationUI;->access$600(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_0

    :cond_f
    const-string v7, "prompt_to_data_roaming"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->isNetworkRoaming(I)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-static {v8}, Lcom/android/phone/PhoneUtilsMultiSIM;->isNetworkRoaming(I)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_10
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_0

    :cond_11
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_0

    :cond_12
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->isOtaRegistering()Z
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v7, v9, v9}, Lcom/android/phone/NetworkNotificationUI;->access$600(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_0

    :cond_13
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionPopupIsSet()Z
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showDataSelectionPopUp()V
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$800(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_0

    :cond_14
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionPopupIsSet()Z
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionEnableSet()Z
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/phone/NetworkNotificationUI;->access$600(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_0

    :cond_15
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_0

    :cond_16
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v7, v9, v9}, Lcom/android/phone/NetworkNotificationUI;->access$600(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_0

    :cond_17
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->updateConnectivity(Landroid/content/Intent;)V
    invoke-static {v7, p2}, Lcom/android/phone/NetworkNotificationUI;->access$1300(Lcom/android/phone/NetworkNotificationUI;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_18
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_19

    move v7, v8

    :goto_1
    # setter for: Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z
    invoke-static {v10, v7}, Lcom/android/phone/NetworkNotificationUI;->access$1402(Lcom/android/phone/NetworkNotificationUI;Z)Z

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1400(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # setter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v7, v8}, Lcom/android/phone/NetworkNotificationUI;->access$1502(Lcom/android/phone/NetworkNotificationUI;Z)Z

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v7, v9}, Lcom/android/phone/NetworkNotificationUI;->access$1602(Lcom/android/phone/NetworkNotificationUI;I)I

    goto/16 :goto_0

    :cond_19
    move v7, v9

    goto :goto_1

    :cond_1a
    const-string v7, "android.intent.action.MANUAL_SET_TIME"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->isRtsPopupAllowed()Z
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v7

    if-eqz v7, :cond_1

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$1800()Landroid/app/AlertDialog;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showAutoTimeSetDialog()V
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1900(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_0

    :cond_1b
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const-string v8, "state"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z
    invoke-static {v7, v8}, Lcom/android/phone/NetworkNotificationUI;->access$2002(Lcom/android/phone/NetworkNotificationUI;Z)Z

    const-string v7, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$2000(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$2000(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_0

    :cond_1c
    const-string v7, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "android.intent.action.LGT_REBOOT_POPUP"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "NetworkNotificationUI"

    const-string v8, "LGT_REBOOT_POPUP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->LGTRebootPopup()V
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_0
.end method

.class Lcom/android/phone/CallFeaturesSetting$32;
.super Landroid/content/BroadcastReceiver;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "CallFeaturesSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "state"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "CallFeaturesSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const-string v11, "sip_settings_category_key"

    invoke-virtual {v8, v11}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v8}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$4900(Lcom/android/phone/CallFeaturesSetting;)Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-result-object v8

    if-ne v4, v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mWifiCallCategory:Landroid/preference/PreferenceGroup;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$5000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/PreferenceGroup;

    move-result-object v8

    if-eq v4, v8, :cond_0

    if-eq v4, v6, :cond_0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v9

    :goto_2
    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    move v8, v10

    goto :goto_2

    :cond_3
    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "state"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_5

    move v7, v9

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mReceiver - ACTION_HEADSET_PLUG : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v8, v9}, Lcom/android/phone/CallFeaturesSetting;->access$2300(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$5100(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->updateNoiseReduction()V
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$5200(Lcom/android/phone/CallFeaturesSetting;)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    move v7, v10

    goto :goto_3

    :cond_6
    const-string v8, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mReceiver - ACTION_CONNECTION_STATE_CHANGED : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v8, v9}, Lcom/android/phone/CallFeaturesSetting;->access$2300(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->updateNoiseReduction()V
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$5200(Lcom/android/phone/CallFeaturesSetting;)V

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->updateNaturalSound()V
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$5300(Lcom/android/phone/CallFeaturesSetting;)V

    goto :goto_4

    :cond_7
    const-string v8, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "volte_cmcc_data_enable_popup"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "apnType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mReceiver - CONNECTION_STATE_CHANGED state:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " apnType:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " popup:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/phone/CallFeaturesSetting;->access$5400(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v8, v9}, Lcom/android/phone/CallFeaturesSetting;->access$2300(Ljava/lang/String;Z)V

    const-string v8, "imsut"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$5400(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v8, "CONNECTED"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mImsUtHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$5500(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$5400(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$5400(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/4 v9, 0x0

    # setter for: Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;
    invoke-static {v8, v9}, Lcom/android/phone/CallFeaturesSetting;->access$5402(Lcom/android/phone/CallFeaturesSetting;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_8
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->goAdditionalCallOptions()V
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$5600(Lcom/android/phone/CallFeaturesSetting;)V

    goto/16 :goto_4

    :cond_9
    const-string v8, "com.oem.smartwifisupport.WFC_STATE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v11, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v8, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "mReceiver: com.oem.smartwifisupport.WFC_STATE"

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v8, v9}, Lcom/android/phone/CallFeaturesSetting;->access$2300(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v11, p0, Lcom/android/phone/CallFeaturesSetting$32;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->isWFCRegistered()Z
    invoke-static {v11}, Lcom/android/phone/CallFeaturesSetting;->access$5700(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v11

    if-nez v11, :cond_a

    :goto_5
    # invokes: Lcom/android/phone/CallFeaturesSetting;->updatePersonalizeSoundNoiseReduction(Z)V
    invoke-static {v8, v9}, Lcom/android/phone/CallFeaturesSetting;->access$5800(Lcom/android/phone/CallFeaturesSetting;Z)V

    goto/16 :goto_4

    :cond_a
    move v9, v10

    goto :goto_5
.end method

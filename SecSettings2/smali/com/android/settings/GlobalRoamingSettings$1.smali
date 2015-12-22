.class Lcom/android/settings/GlobalRoamingSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "GlobalRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GlobalRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GlobalRoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const v7, 0x7f0a143c

    const/16 v6, 0x64

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "GlobalRoaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "kr.co.uplus.UPDATE_COUNTRY_INFO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/GlobalRoamingSettings$1;->getResultCode()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$000(Lcom/android/settings/GlobalRoamingSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$100(Lcom/android/settings/GlobalRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$100(Lcom/android/settings/GlobalRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/settings/GlobalRoamingSettings;->access$102(Lcom/android/settings/GlobalRoamingSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$000(Lcom/android/settings/GlobalRoamingSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$100(Lcom/android/settings/GlobalRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "com.sec.android.lgt.bip.SUCCESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$000(Lcom/android/settings/GlobalRoamingSettings;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x190

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-string v2, "com.sec.android.lgt.bip.UNSUCCESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GlobalRoamingSettings;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isDisableRoamingMultiIMSI()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonCountryUpdate:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$400(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->getSIMVersion()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/GlobalRoamingSettings;->access$300(Lcom/android/settings/GlobalRoamingSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    const-string v2, "GlobalRoaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after update simver = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->getSIMVersion()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/GlobalRoamingSettings;->access$300(Lcom/android/settings/GlobalRoamingSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$100(Lcom/android/settings/GlobalRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/settings/GlobalRoamingSettings;->access$102(Lcom/android/settings/GlobalRoamingSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    const-string v2, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.android.settings.ACTION_DATA_ROAMING_POSITIVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_7
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$500(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$500(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z
    invoke-static {v3}, Lcom/android/settings/GlobalRoamingSettings;->access$600(Lcom/android/settings/GlobalRoamingSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonBackgroundData:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$800(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v3}, Lcom/android/settings/GlobalRoamingSettings;->access$700(Lcom/android/settings/GlobalRoamingSettings;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_8
    const-string v2, "com.sec.android.lgt.bip.FAIL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GlobalRoamingSettings;->access$200()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a143b

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_9
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GlobalRoamingSettings;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2
.end method

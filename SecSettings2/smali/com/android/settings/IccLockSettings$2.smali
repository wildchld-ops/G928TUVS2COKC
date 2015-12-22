.class Lcom/android/settings/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(), SIMstate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(), mPhone.getIccCard().getIccLockEnabled() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/settings/IccLockSettings;->access$400(Lcom/android/settings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "IccLockSettings"

    const-string v3, "onReceive(), SIMstate : LOCKED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$400(Lcom/android/settings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$600(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mDialogState:I
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$700(Lcom/android/settings/IccLockSettings;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # invokes: Lcom/android/settings/IccLockSettings;->showPinDialog()V
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$800(Lcom/android/settings/IccLockSettings;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "IccLockSettings"

    const-string v3, "onReceive(), resetDialogState()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # invokes: Lcom/android/settings/IccLockSettings;->resetDialogState()V
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$900(Lcom/android/settings/IccLockSettings;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$400(Lcom/android/settings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$600(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    :cond_3
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(), SIMstate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mDialogState:I
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$700(Lcom/android/settings/IccLockSettings;)I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # invokes: Lcom/android/settings/IccLockSettings;->showPinDialog()V
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$800(Lcom/android/settings/IccLockSettings;)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$1100(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$1100(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const-string v2, "IccLockSettings"

    const-string v3, "onReceive(), resetDialogState()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # invokes: Lcom/android/settings/IccLockSettings;->resetDialogState()V
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$900(Lcom/android/settings/IccLockSettings;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mPinDialog_Kor:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$1000(Lcom/android/settings/IccLockSettings;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v2}, Lcom/android/settings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v2}, Lcom/android/settings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0
.end method

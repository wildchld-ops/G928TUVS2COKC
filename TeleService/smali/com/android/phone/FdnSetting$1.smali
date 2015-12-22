.class Lcom/android/phone/FdnSetting$1;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const v13, 0x7f0a00ed

    const v12, 0x7f0a01a5

    const v11, 0x7f0a01a1

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v6}, Lcom/android/phone/FdnSetting;->isAdded()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "FdnSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFDNHandler() Fragment finished. Ignore handler message :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msg.what:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "FdnSetting"

    const-string v7, "mAttempt in EVENT_PIN2_ENTRY_COMPLETE"

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v6, "feature_multisim_modem_type_DCGS"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/16 v6, 0x65

    iput v6, v4, Landroid/os/Message;->what:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    :sswitch_1
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v7

    # setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$102(Lcom/android/phone/FdnSetting;I)I

    const-string v6, "FdnSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAttempt in EVENT_PIN2_ENTRY_COMPLETE_DELAY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v8}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string v6, "FdnSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ar.exception case in mFDNHandler = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_7

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_5

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v6}, Lcom/android/phone/FdnSetting;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0a01e4

    invoke-virtual {v6, v7}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0a01de

    invoke-virtual {v6, v7}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0a0090

    new-instance v7, Lcom/android/phone/FdnSetting$1$1;

    invoke-direct {v7, p0}, Lcom/android/phone/FdnSetting$1$1;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/FdnSetting$1$2;

    invoke-direct {v6, p0}, Lcom/android/phone/FdnSetting$1$2;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v6, v9}, Lcom/android/phone/FdnSetting;->access$602(Lcom/android/phone/FdnSetting;Z)Z

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    const v7, 0x7f0a01e6

    invoke-virtual {v6, v7}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    const-string v6, "feature_multisim_dsda"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget v6, Lcom/android/phone/FdnSetting;->mSimId:I

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    const v7, 0x7f0a01e8

    invoke-virtual {v6, v7}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    :goto_1
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v6, v9}, Lcom/android/phone/FdnSetting;->access$302(Lcom/android/phone/FdnSetting;Z)Z

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.action.FDN_MODE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget v6, Lcom/android/phone/FdnSetting;->mSimId:I

    if-ne v6, v9, :cond_3

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.action.FDN2_MODE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->getApplicationContext()Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1000(Lcom/android/phone/FdnSetting;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    const v7, 0x7f0a01e7

    invoke-virtual {v6, v7}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0a01ba

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;I)V

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v6, v13}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;I)V

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v6, v13}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;I)V

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v6, v10}, Lcom/android/phone/FdnSetting;->access$602(Lcom/android/phone/FdnSetting;Z)Z

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "puk2_state"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_9
    const-string v6, "feature_multisim_dsda"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget v6, Lcom/android/phone/FdnSetting;->mSimId:I

    if-ne v6, v9, :cond_a

    const-string v6, "ICC_TYPE"

    const-string v7, "GSM"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_a
    const-string v6, "ICC_TYPE"

    const-string v7, "CDMA"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :sswitch_2
    const-string v6, "FdnSetting"

    const-string v7, "mAttempt in EVENT_PIN2_CHANGE_COMPLETE"

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/16 v6, 0x190

    iput v6, v4, Landroid/os/Message;->what:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v6, "feature_ctc"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :sswitch_3
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v7

    # setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$102(Lcom/android/phone/FdnSetting;I)I

    const-string v6, "FdnSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAttempt in EVENT_PIN2_CHANGE_COMPLETE_DELAY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v8}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string v6, "FdnSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ar.exception in EVENT_PIN2_CHANGE_COMPLETE_DELAY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_13

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_d

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v6}, Lcom/android/phone/FdnSetting;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0a01e4

    invoke-virtual {v6, v7}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0a01de

    invoke-virtual {v6, v7}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0a0090

    new-instance v7, Lcom/android/phone/FdnSetting$1$3;

    invoke-direct {v7, p0}, Lcom/android/phone/FdnSetting$1$3;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/FdnSetting$1$4;

    invoke-direct {v6, p0}, Lcom/android/phone/FdnSetting$1$4;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v6, v9}, Lcom/android/phone/FdnSetting;->access$302(Lcom/android/phone/FdnSetting;Z)Z

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v6, v9}, Lcom/android/phone/FdnSetting;->access$602(Lcom/android/phone/FdnSetting;Z)Z

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    const v7, 0x7f0a01e6

    invoke-virtual {v6, v7}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    const-string v6, "feature_multisim_dsda"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    sget v6, Lcom/android/phone/FdnSetting;->mSimId:I

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    const v7, 0x7f0a01e8

    invoke-virtual {v6, v7}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    :goto_4
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v6, v9}, Lcom/android/phone/FdnSetting;->access$302(Lcom/android/phone/FdnSetting;Z)Z

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1200(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "puk2_state"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    const v7, 0x7f0a01e7

    invoke-virtual {v6, v7}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    goto :goto_4

    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v6, v7, :cond_e

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_f

    :cond_e
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v6, v13}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;I)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v7

    # setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$102(Lcom/android/phone/FdnSetting;I)I

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1300(Lcom/android/phone/FdnSetting;)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1400(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "puk2_state"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_f
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0a01d7

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;I)V

    :goto_5
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # setter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v6, v9}, Lcom/android/phone/FdnSetting;->access$1502(Lcom/android/phone/FdnSetting;I)I

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1300(Lcom/android/phone/FdnSetting;)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v6, v10}, Lcom/android/phone/FdnSetting;->access$602(Lcom/android/phone/FdnSetting;Z)Z

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1600(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "puk2_state"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_10
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0a01d8

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;I)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v7

    # setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$102(Lcom/android/phone/FdnSetting;I)I

    goto :goto_5

    :cond_11
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7}, Lcom/android/phone/FdnSetting;->getPUK2retry()I

    move-result v7

    # setter for: Lcom/android/phone/FdnSetting;->mAttemptPuk2:I
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$1702(Lcom/android/phone/FdnSetting;I)I

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mAttemptPuk2:I
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1700(Lcom/android/phone/FdnSetting;)I

    move-result v6

    if-nez v6, :cond_12

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v6}, Lcom/android/phone/FdnSetting;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v6, 0x1010355

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0a00e8

    invoke-virtual {v6, v7}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0a01df

    invoke-virtual {v6, v7}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0a00ef

    new-instance v7, Lcom/android/phone/FdnSetting$1$5;

    invoke-direct {v7, p0}, Lcom/android/phone/FdnSetting$1$5;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    :cond_12
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    :cond_13
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Z

    move-result v6

    if-ne v6, v9, :cond_14

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0a01e0

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;I)V

    :goto_6
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v7

    # setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$102(Lcom/android/phone/FdnSetting;I)I

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v6, v10}, Lcom/android/phone/FdnSetting;->access$302(Lcom/android/phone/FdnSetting;Z)Z

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v6, v10}, Lcom/android/phone/FdnSetting;->access$602(Lcom/android/phone/FdnSetting;Z)Z

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1800(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "puk2_state"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # setter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v6, v9}, Lcom/android/phone/FdnSetting;->access$1502(Lcom/android/phone/FdnSetting;I)I

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1300(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    :cond_14
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0a01dc

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;I)V

    goto :goto_6

    :sswitch_4
    const-string v6, "feature_multisim_dsda_cdma_gsm"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v7

    if-eq v6, v7, :cond_15

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v7

    # setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$102(Lcom/android/phone/FdnSetting;I)I

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)V

    :cond_15
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$1900(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/IccCard;->getIccPuk2Blocked()Z

    move-result v5

    const-string v6, "FdnSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_PUK2STATE_READ_COMPLETE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v6, v9}, Lcom/android/phone/FdnSetting;->access$302(Lcom/android/phone/FdnSetting;Z)Z

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_4
        0x190 -> :sswitch_3
    .end sparse-switch
.end method

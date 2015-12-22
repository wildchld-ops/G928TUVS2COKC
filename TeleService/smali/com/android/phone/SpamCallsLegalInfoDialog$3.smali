.class Lcom/android/phone/SpamCallsLegalInfoDialog$3;
.super Ljava/lang/Object;
.source "SpamCallsLegalInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SpamCallsLegalInfoDialog;->showLegalInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/SpamCallsLegalInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$3;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$3;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    invoke-virtual {v3}, Lcom/android/phone/SpamCallsLegalInfoDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "spam_call_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "spamcall_legal_info_agree"

    invoke-static {v3, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setSettingDB(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$3;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    iget-object v3, v3, Lcom/android/phone/SpamCallsLegalInfoDialog;->mAutoUpdateCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$3;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    invoke-virtual {v3}, Lcom/android/phone/SpamCallsLegalInfoDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "spam_call_auto_update"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$3;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    iget-object v3, v3, Lcom/android/phone/SpamCallsLegalInfoDialog;->mDoNotShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "spam_calls_dialog_do_not_show"

    invoke-static {v3, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setSettingDB(Ljava/lang/String;I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action_auto_update_broadcast"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "spam_call_auto_update"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$3;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    invoke-virtual {v2, v0}, Lcom/android/phone/SpamCallsLegalInfoDialog;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$3;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    iget-object v2, v2, Lcom/android/phone/SpamCallsLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelSpamCallsFilterNotification()V

    iget-object v2, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$3;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    invoke-virtual {v2}, Lcom/android/phone/SpamCallsLegalInfoDialog;->finish()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

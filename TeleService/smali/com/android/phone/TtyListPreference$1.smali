.class Lcom/android/phone/TtyListPreference$1;
.super Ljava/lang/Object;
.source "TtyListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TtyListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TtyListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/TtyListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TtyListPreference$1;->this$0:Lcom/android/phone/TtyListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/TtyListPreference$1;->this$0:Lcom/android/phone/TtyListPreference;

    # getter for: Lcom/android/phone/TtyListPreference;->mAdapter:Lcom/android/phone/TtyListPreference$DownloadListAdapter;
    invoke-static {v1}, Lcom/android/phone/TtyListPreference;->access$000(Lcom/android/phone/TtyListPreference;)Lcom/android/phone/TtyListPreference$DownloadListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/TtyListPreference$1;->this$0:Lcom/android/phone/TtyListPreference;

    # invokes: Lcom/android/phone/TtyListPreference;->createDialogTty(I)V
    invoke-static {v1, p3}, Lcom/android/phone/TtyListPreference;->access$100(Lcom/android/phone/TtyListPreference;I)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/TtyListPreference$1;->this$0:Lcom/android/phone/TtyListPreference;

    # getter for: Lcom/android/phone/TtyListPreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/TtyListPreference;->access$400(Lcom/android/phone/TtyListPreference;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/TtyListPreference$1;->this$0:Lcom/android/phone/TtyListPreference;

    # invokes: Lcom/android/phone/TtyListPreference;->updatePreferredTtyMode(I)V
    invoke-static {v1, p3}, Lcom/android/phone/TtyListPreference;->access$200(Lcom/android/phone/TtyListPreference;I)V

    iget-object v1, p0, Lcom/android/phone/TtyListPreference$1;->this$0:Lcom/android/phone/TtyListPreference;

    # getter for: Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/TtyListPreference;->access$300(Lcom/android/phone/TtyListPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    invoke-static {v1, v2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/TtyListPreference$1;->this$0:Lcom/android/phone/TtyListPreference;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telecom.intent.extra.TTY_PREFERRED"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

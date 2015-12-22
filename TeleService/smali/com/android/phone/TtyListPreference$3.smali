.class Lcom/android/phone/TtyListPreference$3;
.super Ljava/lang/Object;
.source "TtyListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TtyListPreference;->createDialogTty(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TtyListPreference;

.field final synthetic val$check:Landroid/widget/CheckBox;

.field final synthetic val$currTtyMode:I


# direct methods
.method constructor <init>(Lcom/android/phone/TtyListPreference;Landroid/widget/CheckBox;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TtyListPreference$3;->this$0:Lcom/android/phone/TtyListPreference;

    iput-object p2, p0, Lcom/android/phone/TtyListPreference$3;->val$check:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/android/phone/TtyListPreference$3;->val$currTtyMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/TtyListPreference$3;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/TtyListPreference$3;->this$0:Lcom/android/phone/TtyListPreference;

    # getter for: Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/TtyListPreference;->access$300(Lcom/android/phone/TtyListPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/TtyListPreference;->neverShowTtyTipsAgain(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/TtyListPreference$3;->this$0:Lcom/android/phone/TtyListPreference;

    iget v2, p0, Lcom/android/phone/TtyListPreference$3;->val$currTtyMode:I

    # setter for: Lcom/android/phone/TtyListPreference;->prvTtyMode:I
    invoke-static {v1, v2}, Lcom/android/phone/TtyListPreference;->access$702(Lcom/android/phone/TtyListPreference;I)I

    iget-object v1, p0, Lcom/android/phone/TtyListPreference$3;->this$0:Lcom/android/phone/TtyListPreference;

    iget v2, p0, Lcom/android/phone/TtyListPreference$3;->val$currTtyMode:I

    # invokes: Lcom/android/phone/TtyListPreference;->updatePreferredTtyModeSummaryForVolte(I)V
    invoke-static {v1, v2}, Lcom/android/phone/TtyListPreference;->access$600(Lcom/android/phone/TtyListPreference;I)V

    iget-object v1, p0, Lcom/android/phone/TtyListPreference$3;->this$0:Lcom/android/phone/TtyListPreference;

    # getter for: Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/TtyListPreference;->access$300(Lcom/android/phone/TtyListPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    iget v3, p0, Lcom/android/phone/TtyListPreference$3;->val$currTtyMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/TtyListPreference$3;->this$0:Lcom/android/phone/TtyListPreference;

    iget v2, p0, Lcom/android/phone/TtyListPreference$3;->val$currTtyMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telecom.intent.extra.TTY_PREFERRED"

    iget v2, p0, Lcom/android/phone/TtyListPreference$3;->val$currTtyMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

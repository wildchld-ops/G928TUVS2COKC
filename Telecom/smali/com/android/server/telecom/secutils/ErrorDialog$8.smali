.class Lcom/android/server/telecom/secutils/ErrorDialog$8;
.super Ljava/lang/Object;
.source "ErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/ErrorDialog;->showAirplaneModeErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/ErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog$8;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$8;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # invokes: Lcom/android/server/telecom/secutils/ErrorDialog;->showAirplaneModeOffProgressDialog()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$700(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$8;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$800(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setAirplainModeOn(Landroid/content/Context;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog$8;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$800(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.class Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$3;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$3;->this$1:Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/telecom/ErrorDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/ErrorDialogActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isInLockTaskMode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$3;->this$1:Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;

    invoke-virtual {v0}, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$3;->this$1:Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;

    iget-object v0, v0, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/ErrorDialogActivity;->finish()V

    goto :goto_0
.end method

.class Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;
.super Landroid/app/AlertDialog;
.source "ErrorDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/ErrorDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenericErrorDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/ErrorDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/ErrorDialogActivity;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$1;-><init>(Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;Lcom/android/server/telecom/ErrorDialogActivity;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$2;-><init>(Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;Lcom/android/server/telecom/ErrorDialogActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;->setCancelable(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$3;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$3;-><init>(Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

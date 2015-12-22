.class public Lcom/android/incallui/secutils/SecErrorDialogActivity;
.super Landroid/app/Activity;
.source "SecErrorDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/secutils/SecErrorDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secutils/SecErrorDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/incallui/secutils/SecErrorDialogActivity$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/secutils/SecErrorDialogActivity$2;-><init>(Lcom/android/incallui/secutils/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/secutils/SecErrorDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/secutils/SecErrorDialogActivity$1;-><init>(Lcom/android/incallui/secutils/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/incallui/secutils/SecErrorDialogActivity$5;

    invoke-direct {v3, p0, p2, p3, p4}, Lcom/android/incallui/secutils/SecErrorDialogActivity$5;-><init>(Lcom/android/incallui/secutils/SecErrorDialogActivity;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/android/incallui/secutils/SecErrorDialogActivity$4;

    invoke-direct {v3, p0}, Lcom/android/incallui/secutils/SecErrorDialogActivity$4;-><init>(Lcom/android/incallui/secutils/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/secutils/SecErrorDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/secutils/SecErrorDialogActivity$3;-><init>(Lcom/android/incallui/secutils/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/secutils/SecErrorDialogActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/secutils/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "error_message"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/secutils/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "number"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/secutils/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "to_volte"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/secutils/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "errorCode"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v1, :cond_0

    sget-object v4, Lcom/android/incallui/secutils/SecErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v5, "SecErrorDialogActivity called with no error type extra."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/secutils/SecErrorDialogActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/incallui/secutils/SecErrorDialogActivity;->showErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/incallui/secutils/SecErrorDialogActivity;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

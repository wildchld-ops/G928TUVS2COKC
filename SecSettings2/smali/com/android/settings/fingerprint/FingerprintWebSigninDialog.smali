.class public Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintWebSigninDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;)Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->listener:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "FingerprintWebSigninDialog"

    const-string v1, "onCancel!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->listener:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->listener:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;->onCancelWebSigninDialog()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_websignin_noti"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const-string v1, "FingerprintWebSigninDialog"

    const-string v2, "onCreateDialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a10e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n1. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a10e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n2. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a10e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n3. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a10e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a10e3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "FingerprintWebSigninDialog"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method

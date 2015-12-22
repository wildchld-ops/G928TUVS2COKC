.class public Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
.super Landroid/app/DialogFragment;
.source "FingerPrintRenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field public filterSpecialChar:Landroid/text/InputFilter;

.field private listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mFingerPrintIndex:I

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mIsMaxRename:Z

.field private mMaxLengthToast:Landroid/widget/Toast;

.field private mOriginalName:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mIsMaxRename:Z

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mMaxLengthToast:Landroid/widget/Toast;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->filterSpecialChar:Landroid/text/InputFilter;

    iput p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mMaxLengthToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mIsMaxRename:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mIsMaxRename:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    const v4, 0x7f10015f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a10c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$4;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$4;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "FingerPrintRenameDialog"

    const-string v4, "Caught Exception setSelection"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showInputMethod()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$6;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$6;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public cancelRenameDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "FingerPrintRenameDialog"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mMaxLengthToast:Landroid/widget/Toast;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400b8

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->initView(Landroid/view/View;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a111a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->filterSpecialChar:Landroid/text/InputFilter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$3;

    const/16 v4, 0x32

    invoke-direct {v3, p0, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    const-string v1, "FingerPrintRenameDialog"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "FingerPrintRenameDialog"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;->onDismiss()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "FingerPrintRenameDialog"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;->onResumeDialog()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V

    return-void
.end method

.method public onStart()V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    return-void
.end method

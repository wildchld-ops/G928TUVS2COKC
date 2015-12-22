.class public Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;
.super Landroid/app/Fragment;
.source "FingerprintConfirmPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintConfirmPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintConfirmPasswordFragment"
.end annotation


# instance fields
.field private isFromPersonalPage:Z

.field private mContinueButton:Landroid/widget/Button;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNext()V
    .locals 5

    const v3, 0x7f0a0760

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->showSensorErrorDialog()V

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->isFromPersonalPage:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPersonalModeFingerPrintPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->verifyPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "FingerprintConfirmPassword"

    const-string v3, "verifyPassword is false - personal"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->showError(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkFingerprintPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->verifyPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "FingerprintConfirmPassword"

    const-string v3, "verifyPassword is false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->showError(I)V

    goto :goto_0
.end method

.method private showError(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$1;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a10a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a10a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$2;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->handleNext()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1000a1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_personal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->isFromPersonalPage:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    const v6, 0x7f04003c

    invoke-virtual {p1, v6, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_0

    instance-of v6, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    const v6, 0x7f1000a1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f1000a2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    const v6, 0x7f10009f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v7, 0x2000000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    const v6, 0x7f1000a3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const v6, 0x7f10009e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f0a13cc

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v6, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v6, v0, v7, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v6}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    instance-of v6, v0, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_1

    move-object v3, v0

    check-cast v3, Landroid/preference/PreferenceActivity;

    const v2, 0x7f0a10ba

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4, v4}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v5
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->handleNext()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

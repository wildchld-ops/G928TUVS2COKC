.class public Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;
.super Landroid/app/Fragment;
.source "FingerprintPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static MIN_PASSWORD_LENGTH:I

.field private static THRESHOLD_OF_SEQUENTIAL_CHAR:I


# instance fields
.field private isExistRequestedPWQ:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mCheckSimplePassword:Z

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mSavedPassword:Ljava/lang/String;

.field private mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

.field private rotateState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->getShortPasswordLength()I

    move-result v0

    sput v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MIN_PASSWORD_LENGTH:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->getShortPasswordLength()I

    move-result v0

    sput v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->getShortPasswordLength()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->getFingerPasswordQuality()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mSavedPassword:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$1;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method private EnableSystemKey()V
    .locals 4

    const/16 v3, 0xbb

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->requestSystemKeyEvent(IZ)Z

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->requestSystemKeyEvent(IZ)Z

    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    const-string v4, "ChooseLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x1

    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    sub-int v1, v5, v6

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v1, :cond_2

    const-string v5, "0123456789"

    sget v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "9876543210"

    sget v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    sub-int v1, v5, v6

    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    sget v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "zyxwvutsrqponmlkjihgfedcba"

    sget v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getScreenOrientation()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private handleNext()V
    .locals 13

    const v8, 0x104000a

    const v12, 0x61000

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_3

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-direct {p0, v1, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v6, "applicationFingerprint"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1200()Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->setPassword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "previousStage"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "enrollResult"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isenrolledFingerprint()Z

    move-result v6

    if-ne v6, v9, :cond_4

    const-string v6, "isenrolled"

    const-string v7, "true"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v10, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    const-string v6, "isenrolled"

    const-string v7, "false"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a10a0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a10a2

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$4;

    invoke-direct {v7, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$4;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_6
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$600()Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "knoxPin"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "previousStage"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "enrollResult"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isenrolledFingerprint()Z

    move-result v6

    if-ne v6, v9, :cond_8

    const-string v6, "isenrolled"

    const-string v7, "true"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v4, v12, v11, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    invoke-direct {p0, v9}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v10, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_8
    const-string v6, "isenrolled"

    const-string v7, "false"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_9
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1200()Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->setPassword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1300()I

    move-result v6

    if-lt v6, v9, :cond_a

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1300()I

    move-result v6

    const/16 v7, 0xa

    if-gt v6, v7, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "fingerprint_fingerIndex"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1300()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->bFingerprintPassword:Z
    invoke-static {v9}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1402(Z)Z

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1500()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1500()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_c

    :cond_b
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$700()Z

    move-result v6

    if-ne v6, v9, :cond_f

    const-string v6, "FingerprintPassword"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsFromKnoxSetupWizard: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$700()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isForODE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FingerprintPassword"

    const-string v7, "This is the first time to register fingerprint on KnoxSetupWizard. So, we will not change ODE encryption"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v4, v7, v12, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPassword(Ljava/lang/String;IIZ)V

    :goto_4
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->savePersonalModeFingerPrintPassword(Ljava/lang/String;)V

    :cond_c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "knoxPin"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "previousStage"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "enrollResult"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isenrolledFingerprint()Z

    move-result v6

    if-ne v6, v9, :cond_12

    const-string v6, "isenrolled"

    const-string v7, "true"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "is_smpw_key"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_6
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxOtherCases:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$100()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v10, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_f
    const-string v6, "ChooseLockGeneric"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v6

    if-nez v6, :cond_10

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Z

    move-result v6

    if-ne v6, v9, :cond_11

    :cond_10
    const-string v6, "FingerprintPassword"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFingerprintPreviousStage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mLockPatternUtils.isLockFingerprintEnabled(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isForODE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v4, v7, v12, v11}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPassword(Ljava/lang/String;IIZ)V

    goto/16 :goto_4

    :cond_11
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPassword(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    const-string v6, "isenrolled"

    const-string v7, "false"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "is_smpw_key"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :cond_14
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a10a0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a10a2

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$5;

    invoke-direct {v7, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$5;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_15
    sget-object v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v6, v5

    check-cast v6, Landroid/text/Spannable;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v6, v11, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_1
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 5

    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "FingerprintPasswordFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSystemKeyEventRequested - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isenrolledFingerprint()Z
    .locals 4

    const/4 v0, 0x0

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1200()Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5

    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "FingerprintPasswordFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4

    const-string v1, "FingerprintPasswordFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentToKnoxKeyguard in FingerprintPassword, resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.kss"

    const-string v3, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateUi()V
    .locals 12

    const v11, 0x7f0a13c0

    const v10, 0x7f0a10b9

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isDetached()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "FingerprintPasswordFragment"

    const-string v6, "Fragment was detached. UpdateUi is cancelled."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v5, v8, :cond_4

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const v8, 0x7f0a0222

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(I)V

    :goto_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v5, v8, :cond_9

    if-lez v1, :cond_9

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v5, :cond_7

    new-array v5, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {p0, v10, v5}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->registerLevel:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$300()I

    move-result v5

    if-ne v5, v9, :cond_1

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    if-nez v5, :cond_1

    const v5, 0x7f0a13c7

    new-array v8, v6, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {p0, v5, v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$600()Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0x40000

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-eq v5, v8, :cond_2

    const/high16 v5, 0x50000

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-eq v5, v8, :cond_2

    const/high16 v5, 0x60000

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-ne v5, v8, :cond_5

    :cond_2
    move v2, v6

    :goto_2
    if-eqz v2, :cond_6

    const v5, 0x7f0a0211

    :goto_3
    new-array v6, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_4
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget v6, v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const v8, 0x7f0a13bb

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    :cond_5
    move v2, v7

    goto :goto_2

    :cond_6
    const v5, 0x7f0a0214

    goto :goto_3

    :cond_7
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    :cond_8
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f0a0215

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    :cond_9
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$700()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v8, 0x64

    if-lt v5, v8, :cond_d

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$600()Z

    move-result v5

    if-nez v5, :cond_d

    :cond_a
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v5, v8, :cond_b

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V

    :goto_5
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_15

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    :cond_b
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v5, v8, :cond_c

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x7f0a13c1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_c
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    new-array v8, v6, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {p0, v10, v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_d
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$600()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v5, v8, :cond_e

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_e
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v5, v8, :cond_f

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x7f0a13c1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_f
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x7f0a10b8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_10
    const-string v5, "FingerprintSettings_changepassword"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isenrolledFingerprint()Z

    move-result v5

    if-eqz v5, :cond_13

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_11
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v5, v8, :cond_13

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->registerLevel:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$300()I

    move-result v5

    if-ne v5, v9, :cond_12

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Z

    move-result v5

    if-nez v5, :cond_12

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x7f0a13c7

    new-array v9, v6, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_12
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    new-array v8, v6, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {p0, v10, v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_13
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->registerLevel:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$300()I

    move-result v5

    if-ne v5, v9, :cond_14

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Z

    move-result v5

    if-nez v5, :cond_14

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    if-nez v5, :cond_14

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget v8, v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->betaHint:I

    new-array v9, v6, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_14
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget v8, v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->alphaHint:I

    new-array v9, v6, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_15
    move v5, v7

    goto/16 :goto_6
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_0

    const v29, 0x7f0a1038

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    :goto_0
    return-object v29

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1

    const v29, 0x7f0a1037

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    const v29, 0x7f0a0211

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_3

    const v29, 0x7f0a0217

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto :goto_0

    :cond_3
    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v22, 0x0

    const/16 v17, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v17

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v29, 0x20

    move/from16 v0, v29

    if-lt v6, v0, :cond_4

    const/16 v29, 0x7f

    move/from16 v0, v29

    if-le v6, v0, :cond_5

    :cond_4
    const v29, 0x7f0a021b

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_5
    const/16 v29, 0x30

    move/from16 v0, v29

    if-lt v6, v0, :cond_6

    const/16 v29, 0x39

    move/from16 v0, v29

    if-gt v6, v0, :cond_6

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v22, v22, 0x1

    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_6
    const/16 v29, 0x41

    move/from16 v0, v29

    if-lt v6, v0, :cond_7

    const/16 v29, 0x5a

    move/from16 v0, v29

    if-gt v6, v0, :cond_7

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    :cond_7
    const/16 v29, 0x61

    move/from16 v0, v29

    if-lt v6, v0, :cond_8

    const/16 v29, 0x7a

    move/from16 v0, v29

    if-gt v6, v0, :cond_8

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_9
    const/high16 v29, 0x20000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    if-gtz v19, :cond_a

    if-lez v27, :cond_b

    :cond_a
    const v29, 0x7f0a0219

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_b
    const/high16 v29, 0x60000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    move/from16 v29, v0

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v29, v0

    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110004

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110002

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110003

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110005

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v29, v0

    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110006

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_11
    const/high16 v29, 0x40000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    const/4 v4, 0x1

    :goto_3
    const/high16 v29, 0x50000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    const/4 v5, 0x1

    :goto_4
    if-nez v4, :cond_12

    if-eqz v5, :cond_15

    :cond_12
    if-nez v19, :cond_15

    const v29, 0x7f0a021c

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x0

    goto :goto_3

    :cond_14
    const/4 v5, 0x0

    goto :goto_4

    :cond_15
    if-eqz v5, :cond_16

    if-nez v23, :cond_16

    const v29, 0x7f0a021d

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_17

    const v29, 0x7f0a021f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_17
    const/16 v21, 0x0

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v29, 0x0

    const-string v30, "true"

    aput-object v30, v25, v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getForbiddenStrings"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v29, 0x0

    aput-object p1, v24, v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenNumericSequence"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumNumericSequenceLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenCharacterSequence"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumCharacterSequenceLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v29, 0x0

    aput-object p1, v26, v29

    const/16 v29, 0x1

    aput-object v21, v26, v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenStringDistance"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMinimumCharacterChangeLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenData"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasMaxRepeatedCharacters"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumCharacterOccurences"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v31, "isPasswordPatternMatched"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    if-nez v10, :cond_18

    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v7, v0, :cond_18

    if-nez v8, :cond_18

    if-nez v9, :cond_18

    if-eqz v11, :cond_1e

    :cond_18
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_19

    const v29, 0x7f0a1047

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    add-int/lit8 v32, v10, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_19
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v12, v0, :cond_1a

    const v29, 0x7f0a1046

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    add-int/lit8 v32, v9, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_1a
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v15, v0, :cond_1b

    const v29, 0x7f0a1049

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_1b
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v13, v0, :cond_1c

    const v29, 0x7f0a1048    # 1.83518E38f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_1c
    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_1d

    const v29, 0x7f0a104a

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_1d
    if-nez v18, :cond_1e

    const v29, 0x7f0a104b

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_1e
    const/16 v29, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateUi()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "FingerprintPasswordFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxOtherCases:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintPassword;

    invoke-virtual {v0, p0}, Lcom/android/settings/fingerprint/FingerprintPassword;->setOnKeyBackListener(Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;)V

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsSetupWizard:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->handleNext()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "FingerprintSettings_changepassword"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Z

    move-result v1

    if-nez v1, :cond_3

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxOtherCases:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a10a6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a10a7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a10a8

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$7;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$7;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0166

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$6;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$6;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1000a1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v2, "FingerprintPasswordFragment"

    const-string v3, "onConfigurationChanged"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mSavedPassword:Ljava/lang/String;

    :goto_0
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->rotateState:I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getScreenOrientation()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/fingerprint/FingerprintPassword;->isScreenRotated:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getScreenOrientation()I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->rotateState:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mSavedPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v2, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "FingerprintPasswordFragment"

    const-string v3, "onCreate"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->setRetainInstance(Z)V

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    :cond_0
    const-string v1, "FingerprintPasswordFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCheckSimplePassword = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getScreenOrientation()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->rotateState:I

    sput-boolean v5, Lcom/android/settings/fingerprint/FingerprintPassword;->isScreenRotated:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v1

    if-lez v1, :cond_1

    iput-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    :cond_1
    const-string v1, "FingerprintPasswordFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExistRequestedPWQ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->registerLevel:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$300()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    if-nez v1, :cond_2

    sput v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MIN_PASSWORD_LENGTH:I

    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    sput v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    iput v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    :cond_2
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$500()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$502(Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;

    :cond_3
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$500()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$500()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    sget v3, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MIN_PASSWORD_LENGTH:I

    if-ge v1, v3, :cond_4

    sget v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MIN_PASSWORD_LENGTH:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    :cond_4
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$500()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v1

    const v3, 0x61000

    if-eq v1, v3, :cond_6

    :cond_5
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Z

    move-result v1

    if-ne v1, v6, :cond_7

    :cond_6
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    const/high16 v3, 0x50000

    if-ge v1, v3, :cond_9

    const/high16 v1, 0x50000

    :goto_0
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v2, :cond_a

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    :cond_7
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$500()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const v2, 0x61000

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "isFromKnoxFingerRegistered"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$602(Z)Z

    const-string v1, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$702(Z)Z

    const-string v1, "FingerprintPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FingerPassword_fromKNOX, mIsFromKnoxAlreadyRegistered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$600()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsFromKnoxSetupWizard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$700()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$700()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "lockscreen.password_min"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintKnoxChecker;->setTitleBarColor(Landroid/app/Activity;)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    goto/16 :goto_0

    :cond_a
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_1

    :cond_b
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$600()Z

    move-result v1

    if-eqz v1, :cond_8

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$500()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    const/high16 v2, 0x60000

    if-ne v1, v2, :cond_8

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    if-le v1, v2, :cond_c

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    :cond_c
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    if-le v1, v2, :cond_d

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    :cond_d
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-le v1, v2, :cond_8

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    goto :goto_2

    :cond_e
    const-string v1, "FingerprintPassword"

    const-string v2, "mDPM is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    const-string v12, "FingerprintPasswordFragment"

    const-string v13, "onCreateView"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsSetupWizard:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "FingerprintPasswordFragment"

    const-string v13, "onCreateView_PreviousStage : fingerprint_setup_wizard"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v12

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->window:Landroid/view/Window;
    invoke-static {v12}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$802(Landroid/view/Window;)Landroid/view/Window;

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->window:Landroid/view/Window;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$800()Landroid/view/Window;

    move-result-object v12

    if-eqz v12, :cond_0

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->window:Landroid/view/Window;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$800()Landroid/view/Window;

    move-result-object v12

    const-string v13, "#00b081"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/Window;->setStatusBarColor(I)V

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->window:Landroid/view/Window;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$800()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, -0x80000000

    or-int/2addr v12, v13

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->window:Landroid/view/Window;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$800()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const v12, 0x7f0400ab

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f1000a1

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x7f1000a2

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p2

    instance-of v12, v0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v12, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_1
    const v12, 0x7f1000a3

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const v12, 0x7f10009f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$700()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    const/16 v13, 0x64

    if-lt v12, v13, :cond_b

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/text/InputFilter;

    const/4 v14, 0x0

    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    const/16 v16, 0x10

    invoke-direct/range {v15 .. v16}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v13, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$2;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    const-wide/16 v14, 0xc8

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v12, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {v12, v2, v13, v14}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    const v12, 0x7f10009e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isenrolledFingerprint()Z

    move-result v12

    if-eqz v12, :cond_4

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Z

    move-result v12

    if-eqz v12, :cond_4

    const v12, 0x7f1001ad

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v12, 0x7f0a13bd

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsSetupWizard:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-nez v12, :cond_5

    const v12, 0x7f1001aa

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v12}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v12, v3}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    instance-of v12, v2, Landroid/preference/PreferenceActivity;

    if-eqz v12, :cond_8

    move-object v8, v2

    check-cast v8, Landroid/preference/PreferenceActivity;

    const/4 v10, 0x0

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    const-string v12, "FingerprintSettings_changepassword"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isenrolledFingerprint()Z

    move-result v12

    if-eqz v12, :cond_d

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Z

    move-result v12

    if-eqz v12, :cond_d

    :cond_7
    const v10, 0x7f0a10f0

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9, v9}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v13, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mSavedPassword:Ljava/lang/String;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setSelection(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    :cond_a
    return-object v11

    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/text/InputFilter;

    const/4 v14, 0x0

    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const/high16 v13, 0x2000000

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_1

    :cond_d
    const v10, 0x7f0a10b5

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->handleNext()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyBack()Z
    .locals 3

    const-string v0, "FingerprintPasswordFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnKeyPressed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateUi()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "FingerprintPasswordFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintPassword;->isScreenRotated:Z

    if-ne v0, v2, :cond_1

    sput-boolean v3, Lcom/android/settings/fingerprint/FingerprintPassword;->isScreenRotated:Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->EnableSystemKey()V

    return-void

    :cond_1
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Z

    move-result v0

    if-nez v0, :cond_2

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxOtherCases:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "FingerprintPasswordFragment"

    const-string v1, "mIsFromKnoxCases in onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "FingerprintPasswordFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintSettings_changepassword"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->DisableSystemKey()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateUi()V

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

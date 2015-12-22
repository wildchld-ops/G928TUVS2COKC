.class public Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
.super Landroid/app/Fragment;
.source "ChooseLockAdditionalPin.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockAdditionalPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockAdditionalPinFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;
    }
.end annotation


# instance fields
.field private final MSG_SHOW_SOFTINPUT:I

.field public MaxLengthFilter:Landroid/text/InputFilter;

.field private isBlock:Z

.field private isFallback:Z

.field private isPersonalPageLockPatternAdditionalPin:Z

.field private isSetLockToSignature:Z

.field private isSetupWizardLock:Z

.field private isSignature:Z

.field private isSignatureOwnAdditionalPin:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mDone:Z

.field private mFirstLockQuality:I

.field private mFirstLockString:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field protected mH:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsParentDirectionLock:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPatternSavedString:Ljava/lang/String;

.field private mRequestedQuality:I

.field private mTitleText:Landroid/widget/TextView;

.field private mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

.field title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x20000

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    iput v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    iput v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignature:Z

    iput-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    sget-object v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mDone:Z

    iput-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetupWizardLock:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->title:Ljava/lang/CharSequence;

    new-instance v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;-><init>(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MSG_SHOW_SOFTINPUT:I

    new-instance v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;-><init>(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mH:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$3;-><init>(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->showSoftInput()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNext()V
    .locals 14

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mDone:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v4, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v3, v4, :cond_3

    invoke-direct {p0, v9}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    iput-object v9, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-direct {p0, v7, v0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v4, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "db_lockscreen_is_smart_lock"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v9}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->saveAdditionalPinForSignatureAndFinish(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isPersonalPageLockPatternAdditionalPin:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, v9}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->saveAdditionalPinForPersonalPageLockPattern(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v3

    if-nez v3, :cond_8

    move v8, v2

    :goto_2
    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v13

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v1, v9, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignature:Z

    iget-boolean v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;ZZZ)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSmartUnlockEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "db_lockscreen_is_smart_lock"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "screen-lock enabled : pattern"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v8, :cond_7

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mDone:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    if-nez v13, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_8
    move v8, v1

    goto/16 :goto_2

    :cond_9
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mIsParentDirectionLock:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "universal_lock_switch_state"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLockUniversal(Z)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v1, v9, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockUniversal(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_require_password"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v10}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v3, v9, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "db_lockscreen_is_smart_lock"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_c
    sget-object v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_2

    move-object v0, v11

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_1
.end method

.method private saveAdditionalPinForPersonalPageLockPattern(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->savePersonalModeLockPattern(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->savePersonalModeLockBackupPin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private saveAdditionalPinForSignatureAndFinish(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveSignatureBackupPin(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetLockToSignature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockAsSignature(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showSoftInput()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    # getter for: Lcom/android/settings/ChooseLockAdditionalPin;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lcom/android/settings/ChooseLockAdditionalPin;->access$100()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    # getter for: Lcom/android/settings/ChooseLockAdditionalPin;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lcom/android/settings/ChooseLockAdditionalPin;->access$100()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "ChooseLockAdditionalPin"

    const-string v2, "[PPCLP] showSoftInput returned true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ChooseLockAdditionalPin"

    const-string v2, "[PPCLP] showSoftInput returned false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mH:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateUi()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v7, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v6, v7, :cond_2

    if-lez v1, :cond_2

    iget v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v1, v6, :cond_0

    const v6, 0x7f0a0214

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0, v6, v4}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v5, v5, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0a0215

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v7, v7, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->numericHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v7, v8, :cond_1

    const v6, 0x7f0a0214

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    if-le v7, v8, :cond_2

    const v6, 0x7f0a0218

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x20

    if-le v0, v7, :cond_3

    const/16 v7, 0x7f

    if-le v0, v7, :cond_4

    :cond_3
    const v6, 0x7f0a021b

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    const/16 v7, 0x30

    if-lt v0, v7, :cond_5

    const/16 v7, 0x39

    if-gt v0, v7, :cond_5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/16 v7, 0x41

    if-lt v0, v7, :cond_6

    const/16 v7, 0x5a

    if-gt v0, v7, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const/16 v7, 0x61

    if-lt v0, v7, :cond_7

    const/16 v7, 0x7a

    if-gt v0, v7, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    const/high16 v7, 0x20000

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    if-ne v7, v8, :cond_a

    if-gtz v2, :cond_9

    if-lez v5, :cond_a

    :cond_9
    const v6, 0x7f0a0219

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_a
    const/high16 v7, 0x70000

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    if-ne v7, v8, :cond_c

    if-gtz v2, :cond_b

    if-lez v5, :cond_0

    :cond_b
    const v6, 0x7f0a103e

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v6, 0x7f0a021a

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetupWizardLock:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/settings/SetupRedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "ChooseLockAdditionalPin"

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

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

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
    .locals 5

    const/high16 v4, 0x10000

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    const-string v1, "firstlock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    const-string v1, "Block"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    const-string v1, "lockscreen.signature_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignature:Z

    const-string v1, "isUniversalLock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mIsParentDirectionLock:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const-string v1, "SignatureOwnAdditionalPin"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    const-string v1, "PersonalPagePatternOwnAdditionalPin"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isPersonalPageLockPatternAdditionalPin:Z

    const-string v1, "SetupWizardLock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetupWizardLock:Z

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isPersonalPageLockPatternAdditionalPin:Z

    if-eqz v1, :cond_0

    const-string v1, "PersonalPagePatternSaved"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v1, :cond_1

    const-string v1, "SignatureLockSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetLockToSignature:Z

    iput v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    iput v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v6, 0x7f04003a

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

    iput-boolean v10, v6, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    const v6, 0x7f1000a1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f1000a2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f1000a3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const v6, 0x7f10009f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setWritingBuddyEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v7, 0x2000000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v6, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v6, v2, v7, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    const v6, 0x7f10009e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f1000a0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    iget v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    if-lez v6, :cond_1

    iget v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/text/InputFilter;

    iget-object v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    aput-object v8, v7, v9

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    if-nez p3, :cond_5

    sget-object v6, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    :cond_2
    :goto_0
    iput-boolean v9, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mDone:Z

    instance-of v6, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v6, :cond_3

    move-object v1, v2

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const v3, 0x7f0a103f

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->title:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f10000e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mTitleText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mTitleText:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mTitleText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-object v5

    :cond_5
    const-string v6, "first_pin"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    const-string v6, "ui_stage"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0a1043

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const-string v0, "ChooseLockAdditionalPin"

    const-string v1, "[PPCLP] onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mH:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mIsParentDirectionLock:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0a1042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z
    invoke-static {}, Lcom/android/settings/ChooseLockAdditionalPin;->access$500()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0a1094

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0a1041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    return-void
.end method

.class public Lcom/android/settings/ChooseLockPassword;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    }
.end annotation


# static fields
.field public static isChangePwdRequired:Z

.field private static mFromPersonalPage:Z

.field private static mImm:Landroid/view/inputmethod/InputMethodManager;

.field private static mPersonalPage_isPin:Z


# instance fields
.field private mAllowHomeAndBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/ChooseLockPassword;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword;->sendIntentToMDMFW(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/ChooseLockPassword;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword;->sendIntentToKnoxKeyguard(I)V

    return-void
.end method

.method static synthetic access$400()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/ChooseLockPassword;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword;->allowHomeAndBack(Z)V

    return-void
.end method

.method private allowHomeAndBack(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-nez p1, :cond_0

    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0xbb

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0x105

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "lockscreen.password_min"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "lockscreen.password_max"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_require_password"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4

    const-string v1, "ChooseLockPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentToKnoxKeyguard : "

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

    const-string v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockPassword;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendIntentToMDMFW(I)V
    .locals 4

    const-string v1, "ChooseLockPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPasswdChangedIntentToMDMFW : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.edm.intent.action.PASSWORD_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockPassword;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->recreate()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->requestWindowFeature(I)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_type"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/high16 v4, 0x20000

    if-ne v4, v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "from_personal"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "personal_mQuality"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    if-eqz v0, :cond_2

    const v3, 0x7f0a074c

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    sput-object v3, Lcom/android/settings/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const v3, 0x7f0a074a

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    if-eq p1, v3, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    :cond_0
    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-nez v1, :cond_4

    :cond_1
    if-ne p1, v3, :cond_3

    # getter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockPasswordFragment:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    invoke-static {}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$000()Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    # getter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v1, v2, :cond_2

    # getter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_3

    :cond_2
    # getter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$200(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    :cond_3
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword;->sendIntentToMDMFW(I)V

    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword;->sendIntentToKnoxKeyguard(I)V

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

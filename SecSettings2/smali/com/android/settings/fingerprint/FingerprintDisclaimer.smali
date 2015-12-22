.class public Lcom/android/settings/fingerprint/FingerprintDisclaimer;
.super Landroid/app/Activity;
.source "FingerprintDisclaimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;


# instance fields
.field isForODE:Z

.field private isFromKnox:Z

.field isKioskMode:Z

.field isSbrowserInstalled:Z

.field private mContinue:Landroid/widget/Button;

.field mFingerprintIndex:I

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mIsFromKnoxSetupWizard:Z

.field private mLeftSideView:Landroid/view/View;

.field private mOwnName:Ljava/lang/String;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field mPreviousStage:Ljava/lang/String;

.field private mRequestedQuality:I

.field private mRightSideView:Landroid/view/View;

.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isFromKnox:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mIsFromKnoxSetupWizard:Z

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRequestedQuality:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLength:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMaxLength:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLetters:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinUpperCase:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLowerCase:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNumeric:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinSymbols:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNonLetter:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isKioskMode:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isSbrowserInstalled:Z

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mLeftSideView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRightSideView:Landroid/view/View;

    return-void
.end method

.method private putKnoxPasswordPolicy(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "isFromKnoxSetupWizard"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "lockscreen.password_min"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLength:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_max"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMaxLength:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_type"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRequestedQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRequestedQuality:I

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    const-string v0, "lockscreen.password_min_letters"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLetters:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_min_lowercase"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLowerCase:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_min_uppercase"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinUpperCase:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_min_numeric"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNumeric:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_min_symbols"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinSymbols:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_min_nonletter"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNonLetter:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4

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

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setPolicyFromKnox(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRequestedQuality:I

    const-string v1, "lockscreen.password_type"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRequestedQuality:I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLength:I

    const-string v1, "lockscreen.password_min"

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLength:I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMaxLength:I

    const-string v1, "lockscreen.password_max"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMaxLength:I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRequestedQuality:I

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLetters:I

    const-string v1, "lockscreen.password_min_letters"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLetters:I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinUpperCase:I

    const-string v1, "lockscreen.password_min_uppercase"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinUpperCase:I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLowerCase:I

    const-string v1, "lockscreen.password_min_lowercase"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLowerCase:I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNumeric:I

    const-string v1, "lockscreen.password_min_numeric"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNumeric:I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinSymbols:I

    const-string v1, "lockscreen.password_min_symbols"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinSymbols:I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNonLetter:I

    const-string v1, "lockscreen.password_min_nonletter"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNonLetter:I

    :cond_0
    return-void
.end method

.method private showFingerprintDisclaimerDialog()V
    .locals 3

    const-string v1, "FingerprintDisclaimer"

    const-string v2, "showFingerprintDisclaimerDialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->setFingerprintDisclaimerDialogListener(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FingerprintDisclaimerDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->setResult(ILandroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isFromKnox:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->sendIntentToKnoxKeyguard(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->finish()V

    return-void
.end method

.method public onCanceDisclaimerDialog()V
    .locals 2

    const-string v0, "FingerprintDisclaimer"

    const-string v1, "onCanceDisclaimerDialog: "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "fingerIndex"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "for_ode"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ownName"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mIsFromKnoxSetupWizard:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->putKnoxPasswordPolicy(Landroid/content/Intent;)V

    :cond_0
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001b0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "fingerprint_disclaimer_noti"

    invoke-virtual {p0, v6, v8}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->showFingerprintDisclaimerDialog()V

    :cond_0
    const/4 v6, 0x2

    invoke-static {p0, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const v9, 0x7f0a13a9

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "true"

    const-string v9, "isKioskModeEnabled"

    invoke-static {p0, v9}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "isKioskModeEnabled"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isKioskMode:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "is_knox"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isFromKnox:Z

    const-string v6, "isFromKnoxSetupWizard"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mIsFromKnoxSetupWizard:Z

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mIsFromKnoxSetupWizard:Z

    if-eqz v6, :cond_1

    const-string v6, "FingerprintDisclaimer"

    const-string v9, "isFromKnoxSetupWizard - FingerprintDisclaimer OnCreate()"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->setPolicyFromKnox(Landroid/content/Intent;)V

    :cond_1
    :try_start_0
    const-string v6, "for_ode"

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    const-string v6, "previousStage"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    const-string v6, "fingerIndex"

    const/4 v9, -0x1

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    const-string v6, "ownName"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v6, "FingerprintDisclaimer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[previousStage] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FingerprintDisclaimer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[mOwnName] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FingerprintDisclaimer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[fingerIndex] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "pref_disclaimer_noti"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v7, :cond_6

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v6, Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v4, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v6, "fingerIndex"

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "previousStage"

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "for_ode"

    iget-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, "ownName"

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mIsFromKnoxSetupWizard:Z

    if-eqz v6, :cond_4

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->putKnoxPasswordPolicy(Landroid/content/Intent;)V

    :cond_4
    const/16 v6, 0x3e9

    invoke-virtual {p0, v4, v6}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void

    :cond_5
    move v6, v8

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v6, ""

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    iput v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    iput-boolean v8, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    goto/16 :goto_1

    :cond_6
    const v6, 0x7f0400ac

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->setContentView(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_7

    const v6, 0x7f100253

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mLeftSideView:Landroid/view/View;

    const v6, 0x7f100254

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRightSideView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mLeftSideView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRightSideView:Landroid/view/View;

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->updateSideViewVisibility(Landroid/view/View;Landroid/view/View;)V

    :cond_7
    const v6, 0x7f1001b0

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mContinue:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mContinue:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isFromKnox:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->sendIntentToKnoxKeyguard(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->finish()V

    :cond_0
    return-void
.end method

.method public startDisclaimerFromRegister()V
    .locals 2

    const-string v0, "FingerprintDisclaimer"

    const-string v1, "startDisclaimerFromRegister: "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

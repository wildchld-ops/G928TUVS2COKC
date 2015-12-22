.class public Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KnoxChooseLockTwoFactor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KnoxChooseLockTwoFactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxChooseLockTwoFactorFragment"
.end annotation


# static fields
.field private static mCurrentLockTypeIdx:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private btnSetup:Landroid/widget/Button;

.field private mConfimationStarted:Z

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mIdentifyDialog:Landroid/app/Dialog;

.field private mPrefEnterpriseIdentity:Landroid/preference/CheckBoxPreference;

.field private mPrefPassword:Landroid/preference/CheckBoxPreference;

.field private mPrefPattern:Landroid/preference/CheckBoxPreference;

.field private mPrefPin:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIdentifyDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mConfimationStarted:Z

    new-instance v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;-><init>(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mConfimationStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->launchLockType()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->launchFingerprint()V

    return-void
.end method

.method private identifyFinger()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIdentifyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIdentifyDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const-string v3, "com.android.settings.permission.unlock"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIdentifyDialog:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method private isCheckedLocktype()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchFingerprint()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "KnoxChooseLockTwoFactor"

    const-string v3, "[FingerPlusActivity]launchFingerprint : PASSWORD_QUALITY_FINGERPRINT "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "fingerIndex"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "previousStage"

    const-string v3, "ChooseLockGeneric"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "is_knox_set"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "skip_change_lock_type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "KnoxChooseLockTwoFactor"

    const-string v3, "startactivity : ChooseLockFingerprint "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3f7

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSensorErrorDialog()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mConfimationStarted:Z

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mConfimationStarted:Z

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->identifyFinger()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSensorErrorDialog()V

    goto :goto_0
.end method

.method private launchLockType()V
    .locals 5

    const/high16 v4, 0x20000

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    :cond_0
    sget v1, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->finish()V

    return-void

    :pswitch_1
    const/high16 v0, 0x60000

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v2, 0x60000

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v2, 0x40000

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-gt v1, v4, :cond_1

    const/high16 v0, 0x40000

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    :cond_3
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const/16 v2, 0x2715

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setCheckedEvent()V
    .locals 2

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "setCheckedEvent"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setConfirmButton()V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private setConfirmButton()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->isCheckedLocktype()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "Confirm button enable"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "Confirm button diable"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setEnterpriseIdentityPolicy(I)V
    .locals 20

    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-string v17, "persona"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-boolean v0, v6, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    iget-boolean v0, v6, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    const/4 v12, 0x1

    :cond_0
    const/4 v7, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/enterprise/PasswordPolicy;->getEnterpriseIdentityAuthentication()Lcom/sec/enterprise/identity/AuthenticationConfig;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v9

    invoke-virtual {v7}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v10

    :cond_1
    if-eqz v3, :cond_3

    if-nez v13, :cond_2

    const-string v13, "com.sec.android.service.singlesignon"

    :cond_2
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v8, 0x1

    :cond_3
    sget-object v17, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static/range {v17 .. v17}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v11

    if-nez v12, :cond_4

    if-eqz v8, :cond_4

    if-nez v11, :cond_6

    :cond_4
    const/4 v15, 0x1

    :goto_0
    if-eqz v9, :cond_7

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/4 v15, 0x0

    goto :goto_0

    :cond_7
    if-nez v10, :cond_8

    if-eqz v15, :cond_5

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v17, "KnoxChooseLockTwoFactor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SecurityException: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    :try_start_1
    const-string v17, "KnoxChooseLockTwoFactor"

    const-string v18, "ekm is null"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setPasswordEnabledByPolicy(I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Landroid/preference/CheckBoxPreference;

    const/high16 v0, 0x20000

    if-gt p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Landroid/preference/CheckBoxPreference;

    const/high16 v3, 0x10000

    if-gt p1, v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private showSensorErrorDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a10a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a10a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$4;

    invoke-direct {v3, p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$4;-><init>(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$3;-><init>(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "KnoxChooseLockTwoFactor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FingerPlusActivity] onActivityResult : requestCode : "

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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->launchLockType()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "[Two Factor] else"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const-string v0, "pref_lock_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Landroid/preference/CheckBoxPreference;

    const-string v0, "pref_lock_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Landroid/preference/CheckBoxPreference;

    const-string v0, "pref_lock_pattern"

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Landroid/preference/CheckBoxPreference;

    const-string v0, "pref_lock_enterprise_identity"

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnterpriseIdentityPolicy(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const-string v1, "KnoxChooseLockTwoFactor"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v1, 0x7f0400f3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "KnoxChooseLockTwoFactor"

    const-string v2, "add buttom button"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v1, 0x7f10024c

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    if-eqz v1, :cond_1

    const-string v1, "KnoxChooseLockTwoFactor"

    const-string v2, "init buttom button"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;-><init>(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v1, 0x102000a

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0184

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_3

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v10}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-object v9

    :cond_3
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v10}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "KnoxChooseLockTwoFactor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "pref_lock_password"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput v3, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    const-string v0, "KnoxChooseLockTwoFactor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checked index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setConfirmButton()V

    return v3

    :cond_1
    const-string v0, "pref_lock_pin"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    sput v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "pref_lock_pattern"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    sput v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "pref_lock_enterprise_identity"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    sput v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setCheckedEvent()V

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setPasswordEnabledByPolicy(I)V

    return-void
.end method

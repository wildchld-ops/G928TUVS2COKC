.class public Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PersonalPageLockTypeFragment.java"


# instance fields
.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mFragment:Landroid/app/Fragment;

.field private mInlineHelp:Lcom/android/settings/UnclickablePreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeCategory:Landroid/preference/Preference;

.field private mLockTypeFinger:Landroid/preference/Preference;

.field private mLockTypePassword:Landroid/preference/Preference;

.field private mLockTypePattern:Landroid/preference/Preference;

.field private mLockTypePin:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private StartChooseLockPassword(I)V
    .locals 11

    const/high16 v10, 0x20000

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    if-ge v4, v6, :cond_0

    const/4 v4, 0x4

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v7, "lockscreen.password_type"

    invoke-virtual {v1, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "lockscreen.password_min"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "lockscreen.password_max"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "confirm_credentials"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "from_personal"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-ne p1, v10, :cond_1

    :goto_0
    const-string v5, "personal_mQuality"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-ne p1, v10, :cond_2

    const/4 v5, 0x3

    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1
.end method

.method private confirmFingerprintPassword(I)Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.FingerprintConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_personal"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private confirmPassword(III)Z
    .locals 6

    const/4 v2, 0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/ConfirmLockPassword;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x20000

    if-ne p2, v3, :cond_0

    move v1, v2

    :goto_0
    const-string v3, "personal_mQuality"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "from_personal"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmPattern(I)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPersonalModePatternExists()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/ConfirmLockPattern;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "from_personal"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private showSensorErrorDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a10a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a10a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$1;-><init>(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private verifySecuredLock()V
    .locals 5

    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_lock_type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPattern(I)Z

    goto :goto_0

    :pswitch_1
    const/high16 v1, 0x20000

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    :pswitch_2
    const/high16 v1, 0x40000

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmFingerprintPassword(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public initPref()V
    .locals 4

    const-string v2, "personalpage_inline_help"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/UnclickablePreference;

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mInlineHelp:Lcom/android/settings/UnclickablePreference;

    const-string v2, "locktype_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeCategory:Landroid/preference/Preference;

    const-string v2, "personalpage_locktype_pattern"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    const-string v2, "personalpage_locktype_pin"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    const-string v2, "personalpage_locktype_password"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    const-string v2, "personalpage_locktype_fingerprint"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mInlineHelp:Lcom/android/settings/UnclickablePreference;

    const v3, 0x7f0a1093

    invoke-virtual {p0, v3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "firstStart"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mInlineHelp:Lcom/android/settings/UnclickablePreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeCategory:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "PersonalPageLockTypeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", received - resultCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, p0, v1, v5}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p0, v1, v5}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, p0, v1, v5}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_3

    const-string v2, "PersonalPageLockTypeFragment"

    const-string v3, "CONFIRM_REQUEST_ENTER success"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "PersonalPageLockTypeFragment"

    const-string v3, "Failed to CONFIRM_REQUEST_ENTER"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, v5}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->verifySecuredLock()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f04013f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070071

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0a1088

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->initPref()V

    return-object v0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v7, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "from_personal"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "key_lock_method"

    const-string v3, "pattern"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v5}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x20000

    invoke-direct {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x40000

    invoke-direct {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a10a9

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0a109b

    invoke-virtual {p0, v5}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "fingerIndex"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fromPersonal"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1, v7}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->showSensorErrorDialog()V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintConfirm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v7}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

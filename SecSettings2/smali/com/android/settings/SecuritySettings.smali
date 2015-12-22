.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$10;,
        Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;,
        Lcom/android/settings/SecuritySettings$PWState;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private ChangingSIMAlert:Landroid/preference/Preference;

.field private RemoteControls:Landroid/preference/Preference;

.field private mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableADB:Landroid/preference/CheckBoxPreference;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockMyMobile:Landroid/preference/CheckBoxPreference;

.field private mLockMyMobileObserver:Landroid/database/ContentObserver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPassword:Ljava/lang/String;

.field private mPWState:Lcom/android/settings/SecuritySettings$PWState;

.field mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mReactivationLockDialog:Landroid/app/AlertDialog;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mResetCredentials:Landroid/preference/Preference;

.field mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSecurityPolicyUpdates:Landroid/preference/Preference;

.field private mSecurityReports:Landroid/preference/SwitchPreference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field mSimCdma:Landroid/telephony/TelephonyManager;

.field mSimGsm:Landroid/telephony/TelephonyManager;

.field private mSimLockPreferences:Landroid/preference/PreferenceScreen;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lockenabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "biometric_weak_liveliness"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "security_reports"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->CURRENT:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mDisableADB:Landroid/preference/CheckBoxPreference;

    new-instance v0, Lcom/android/settings/SecuritySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/SecuritySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobileObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mSimGsm:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mSimCdma:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/settings/SecuritySettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$7;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 5

    const v4, 0x7f0a1221

    const/16 v3, 0x64

    sget-object v0, Lcom/android/settings/SecuritySettings$10;->$SwitchMap$com$android$settings$SecuritySettings$PWState:[I

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->CONFIRM:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    invoke-virtual {p0, v4}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a1223

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->CURRENT:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->NEW:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    invoke-virtual {p0, v4}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a1220

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a1224

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private StartPassword()V
    .locals 5

    const v3, 0x7f0a1221

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/settings/SecuritySettings$PWState;->NEW:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a1220

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a1224

    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/settings/SecuritySettings$PWState;->CURRENT:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a1222

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/SecuritySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateSIMLockEnable()V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 37

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v32, 0x7f070085

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/android/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v23

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    if-nez v32, :cond_4

    const/16 v32, 0x1

    :goto_0
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    const-string v32, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    if-eqz v20, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v32

    if-eqz v32, :cond_5

    const v32, 0x7f0a01af

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "shopdemo"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    new-instance v11, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v11, v0}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v32

    if-eqz v32, :cond_2

    const-string v32, "security_category"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/PreferenceGroup;

    if-eqz v26, :cond_6

    new-instance v25, Landroid/preference/Preference;

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v32, "sdEncpref"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v32, 0x7f0a0ef8

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    new-instance v32, Landroid/content/Intent;

    const-string v33, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct/range {v32 .. v33}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_2
    const-string v32, "security_category"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/PreferenceGroup;

    if-eqz v26, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/android/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v14, v0, :cond_7

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    new-instance v30, Landroid/preference/Preference;

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v32, "trust_agent"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    iget-object v0, v6, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v32, "android.intent.action.MAIN"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    if-nez v13, :cond_3

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const v32, 0x7f0a022b

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    const/16 v32, 0x0

    goto/16 :goto_0

    :cond_5
    const v32, 0x7f0a01ad

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    :cond_6
    const v32, 0x7f070091

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    :cond_7
    const-string v32, "lock_after_timeout"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/ListPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->setupLockAfterPreference()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    :cond_8
    const-string v32, "biometric_weak_liveliness"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    const-string v32, "visiblepattern"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    const-string v32, "power_button_instantly_locks"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    const-string v32, "trust_agent"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    if-eqz v30, :cond_9

    invoke-virtual/range {v30 .. v30}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->length()I

    move-result v32

    if-lez v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0a0773

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v30 .. v30}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    const v32, 0x7f070086

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v32

    const/high16 v33, 0x10000

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_a

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_a

    const-string v32, "visiblepattern"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const-string v33, "com.fmm.dm"

    invoke-static/range {v32 .. v33}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v4, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v32, 0x7f0a11f7

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v32, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const-string v33, "RemoteControls"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const v33, 0x7f0a11fa

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v34, "remote_control"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_21

    const v32, 0x7f0a08eb

    :goto_4
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/settings/SecuritySettings$3;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$3;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v32

    if-nez v32, :cond_c

    const-string v32, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_c

    new-instance v32, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const-string v33, "SIMAlert"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const v33, 0x7f0a11f9

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/settings/SecuritySettings$4;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$4;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v32, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_c

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_f
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v3, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v32, "GoToSamsungDive"

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v32, 0x7f0a11fc

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setTitle(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v32

    if-eqz v32, :cond_22

    const-string v32, "http://www.samsungdive.cn"

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_5
    new-instance v32, Lcom/android/settings/SecuritySettings$5;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$5;-><init>(Lcom/android/settings/SecuritySettings;)V

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_10

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_10
    new-instance v32, Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const-string v33, "LockMyMobile"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0a11fd

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0a11fe

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "lock_my_mobile"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v32

    const-string v33, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LMM"

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_11

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    if-nez v32, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "shopdemo"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_12
    if-nez v12, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_Setting_DisableMenuFindMyMobile"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_14

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    if-nez v32, :cond_14

    const-string v32, "ro.product.name"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "google"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_15

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNorthAmerica()Z

    move-result v32

    if-eqz v32, :cond_24

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v32

    const-string v33, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LMM"

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_24

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    const v32, 0x7f0a11fd

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_15
    :goto_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    if-nez v32, :cond_16

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const v33, 0x7f0a121f

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const-string v33, "mPhonePasswordPreference"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    new-instance v21, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v32, 0x7f0a121e

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_16
    const v32, 0x7f07008c

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v29

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v32

    const-string v33, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SECURITY_EMBEDEDSIMCARD"

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_25

    const-string v32, "sim_lock"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_17
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "lock_to_app_enabled"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_18

    const-string v32, "screen_pinning_settings"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0a0e2d

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_18
    const-string v32, "show_password"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    const-string v32, "credentials_reset"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const-string v33, "user"

    invoke-virtual/range {v32 .. v33}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/UserManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    const-string v32, "no_config_credentials"

    invoke-virtual/range {v31 .. v32}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_2d

    const-string v32, "credential_storage_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v32

    if-eqz v32, :cond_2c

    const v28, 0x7f0a0b52

    :goto_9
    move/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(I)V

    :goto_a
    const-string v32, "device_admin_category"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    const-string v32, "security_policy_updates"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    const-string v32, "security_reports"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "send_security_reports"

    const/16 v34, -0x1

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_b
    const/16 v17, 0x0

    const-string v32, "DCM"

    const-string v33, "ro.csc.sales_code"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_19

    const-string v32, "KDI"

    const-string v33, "ro.csc.sales_code"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_19

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    const/16 v33, 0x64

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_1b

    :cond_19
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v32

    if-eqz v32, :cond_1a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    const/16 v33, 0x64

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_1b

    :cond_1a
    const-string v32, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x1

    :cond_1b
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v32

    if-eqz v32, :cond_1c

    const-string v32, "GOOGLE_POLICY"

    const-string v33, "selinux.policy_version"

    const-string v34, "Unknown"

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2f

    :cond_1c
    const-string v32, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    const/16 v17, 0x1

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const-string v33, "android"

    const-string v34, "com.sec.android.app.msa"

    invoke-virtual/range {v32 .. v34}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_32

    const/16 v16, 0x1

    :goto_d
    if-eqz v17, :cond_1d

    if-nez v16, :cond_1e

    :cond_1d
    const-string v32, "msa_security_update"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    :cond_1e
    const-string v32, "advanced_security"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_1f

    const-string v32, "manage_trust_agents"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    if-eqz v19, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v32

    if-nez v32, :cond_1f

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const v32, 0x7f0a022b

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v32

    const-class v33, Lcom/android/settings/SecuritySettings;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    const/16 v35, 0x1

    invoke-virtual/range {v32 .. v35}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    const/4 v14, 0x0

    :goto_e
    sget-object v32, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v14, v0, :cond_33

    sget-object v32, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v32, v32, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    if-eqz v22, :cond_20

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_20
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    :cond_21
    const v32, 0x7f0a08ec

    goto/16 :goto_4

    :cond_22
    const-string v32, "http://findmymobile.samsung.com"

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_24
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    :cond_25
    const-string v32, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_26

    const-string v32, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_26

    const-string v32, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_26

    const-string v32, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_26

    const-string v32, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_27

    :cond_26
    const-string v32, "sim_lock"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v32, v0

    if-eqz v32, :cond_28

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v32

    if-nez v32, :cond_29

    :cond_28
    const-string v32, "sim_lock"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    :cond_29
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v18

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2a

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v32

    if-nez v32, :cond_17

    if-eqz v18, :cond_17

    :cond_2a
    const-string v32, "sim_lock"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_8

    :cond_2b
    const-string v32, "sim_lock"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isSimReady()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_8

    :cond_2c
    const v28, 0x7f0a0b53

    goto/16 :goto_9

    :cond_2d
    const-string v32, "credentials_management"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    const-string v32, "credentials_reset"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v32, "credentials_install"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v32, "credential_storage_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_b

    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isUsaCountryCode()Z

    move-result v32

    if-nez v32, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const v33, 0x7f0a11f2

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    :cond_30
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v32

    if-nez v32, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const v33, 0x7f0a11f3

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const v33, 0x7f0a11f4

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    :cond_32
    const/16 v16, 0x0

    goto/16 :goto_d

    :cond_33
    return-object v24
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    :cond_2
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_3
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void

    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v7, 0x80

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, p0}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0, v2}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v5

    iget-object v6, v5, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    invoke-static {v2}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v4
.end method

.method private native getRequiredAuthFlag()I
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const v1, 0x7f07008b

    :goto_1
    return v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x7f070087

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_3

    const v1, 0x7f070086

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const v1, 0x7f07008e

    goto :goto_1

    :sswitch_1
    const v1, 0x7f070090

    goto :goto_1

    :sswitch_2
    const v1, 0x7f07008d

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isNorthAmerica()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isSimReady()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isUsaCountryCode()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "USA"

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private native setRequiredAuthFlagOff()I
.end method

.method private native setRequiredAuthFlagOn()I
.end method

.method private setupLockAfterPreference()V
    .locals 13

    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SecuritySettings;->disableUnusableTimeouts(J)V

    :cond_0
    return-void

    :cond_1
    move-wide v0, v6

    goto :goto_0
.end method

.method private showReactivationLockDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a11ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a11fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a07c0

    new-instance v2, Lcom/android/settings/SecuritySettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$9;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0166

    new-instance v2, Lcom/android/settings/SecuritySettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$8;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    aget-object v9, v8, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v9, v2, v6

    if-ltz v9, :cond_0

    move v0, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "trust_agent"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0a01a5

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_2
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0a01a4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateSIMLockEnable()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0a0d4d

    return v0
.end method

.method public moveRemoteControls()V
    .locals 14

    const v3, 0x7f0a11fa

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v9}, Landroid/text/format/Time;->setToNow()V

    invoke-virtual {v9, v1}, Landroid/text/format/Time;->normalize(Z)J

    const-string v0, "pref_due_date"

    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v9, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v12, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v10

    if-eqz v7, :cond_0

    if-ge v7, v10, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0a1200

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/TabletRemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7c

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_3

    if-ne p2, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    iput-object v4, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x64

    if-eq p1, v0, :cond_4

    const/16 v0, 0x66

    if-ne p1, v0, :cond_5

    :cond_4
    if-ne p2, v2, :cond_5

    invoke-direct {p0, p3}, Lcom/android/settings/SecuritySettings;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_6

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0a11f9

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_7

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->moveRemoteControls()V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LMM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    if-ne p2, v2, :cond_0

    :try_start_0
    const-string v0, "terrier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_my_mobile"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_9

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->setRequiredAuthFlagOff()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_my_mobile"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.settings.reactivationlock_off"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "SecuritySettings"

    const-string v1, " onActivityResult[reactivationlock_off]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8
    :goto_1
    const-string v0, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LMM[RequiredAuthFlag] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->getRequiredAuthFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string v0, "SecuritySettings"

    const-string v1, "WARNING: Could not load /system/lib/libterrier.so"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->setRequiredAuthFlagOn()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_my_mobile"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.settings.reactivationlock_on"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "SecuritySettings"

    const-string v1, " onActivityResult[reactivationlock_on]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v10}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    const-string v10, "lock_after_timeout"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    :cond_0
    :goto_1
    return v5

    :catch_0
    move-exception v0

    const-string v8, "SecuritySettings"

    const-string v9, "could not persist lockAfter timeout setting"

    invoke-static {v8, v9, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string v10, "lockenabled"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_1

    :cond_2
    const-string v10, "visiblepattern"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_1

    :cond_3
    const-string v10, "biometric_weak_liveliness"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/16 v8, 0x7d

    invoke-virtual {v1, v8, v11, v11}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_5
    const-string v10, "power_button_instantly_locks"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto :goto_1

    :cond_6
    const-string v10, "show_password"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "show_password"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    :goto_2
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_7
    move v8, v9

    goto :goto_2

    :cond_8
    const-string v10, "security_reports"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "send_security_reports"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_9

    move v6, v8

    :goto_3
    const-string v8, "SecuritySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state in db: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "send_security_reports"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    const-string v8, "SecuritySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "state for intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.setting.intent.send_security_report_checked"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "IS_SEND_SECURITY_REPORT"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_9
    move v6, v9

    goto :goto_3

    :cond_a
    const/4 v6, 0x1

    goto :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0a01df

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const-string v0, "biometric_weak_improve_matching"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v6, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/16 v0, 0x7c

    invoke-virtual {v6, v0, v5, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    :cond_2
    const-string v0, "trust_agent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v6, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    const/16 v0, 0x7e

    invoke-virtual {v6, v0, v5, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    iput-object v5, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->StartPassword()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->showReactivationLockDialog()V

    goto :goto_0

    :cond_5
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.osp.app.signin"

    const-string v1, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "MODE"

    const-string v1, "REMOTE_CONTROLS"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3eb

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 13

    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isPasswordVisibilityEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v12}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v12}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_c

    :cond_1
    move v1, v7

    :goto_0
    if-nez v1, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v12}, Landroid/app/admin/DevicePolicyManager;->getAllowAppListThirdParty(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    move v1, v7

    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v9}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_6

    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "show_password"

    invoke-static {v9, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_e

    move v9, v7

    :goto_2
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_my_mobile"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_f

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_7
    :goto_3
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v9, v8}, Landroid/app/enterprise/RestrictionPolicy;->isActivationLockAllowed(Z)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v10, v8}, Landroid/app/enterprise/RestrictionPolicy;->isActivationLockAllowed(Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_8
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_10

    :goto_4
    invoke-virtual {v9, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mContext:Landroid/content/Context;

    const-string v9, "enterprise_policy"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getVpnPolicy()Landroid/app/enterprise/VpnPolicy;

    move-result-object v6

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    if-eqz v6, :cond_b

    invoke-virtual {v6, v8}, Landroid/app/enterprise/VpnPolicy;->isUserChangeProfilesAllowed(Z)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_a
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_b
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v9, v4, v12, v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "remote_control"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "lock_my_mobile"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_c
    move v1, v8

    goto/16 :goto_0

    :cond_d
    move v1, v8

    goto/16 :goto_1

    :cond_e
    move v9, v8

    goto/16 :goto_2

    :cond_f
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_10
    move v7, v8

    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Password"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ".title"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ".subject"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ".password"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, p4}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

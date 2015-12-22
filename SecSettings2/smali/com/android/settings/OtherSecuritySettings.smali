.class public Lcom/android/settings/OtherSecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OtherSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OtherSecuritySettings$3;,
        Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;,
        Lcom/android/settings/OtherSecuritySettings$PWState;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mClickedTrustAgentPreference:Landroid/preference/Preference;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPassword:Ljava/lang/String;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPWState:Lcom/android/settings/OtherSecuritySettings$PWState;

.field mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

.field private mResetCredentials:Landroid/preference/Preference;

.field mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSecurityPolicyUpdates:Landroid/preference/Preference;

.field private mSecurityReports:Landroid/preference/SwitchPreference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSimLockPreferences:Landroid/preference/PreferenceScreen;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/OtherSecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "security_reports"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/OtherSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/OtherSecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    sget-object v0, Lcom/android/settings/OtherSecuritySettings$PWState;->CURRENT:Lcom/android/settings/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mPWState:Lcom/android/settings/OtherSecuritySettings$PWState;

    new-instance v0, Lcom/android/settings/OtherSecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/OtherSecuritySettings$1;-><init>(Lcom/android/settings/OtherSecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 5

    const v4, 0x7f0a1221

    const/16 v3, 0x64

    sget-object v0, Lcom/android/settings/OtherSecuritySettings$3;->$SwitchMap$com$android$settings$OtherSecuritySettings$PWState:[I

    iget-object v1, p0, Lcom/android/settings/OtherSecuritySettings;->mPWState:Lcom/android/settings/OtherSecuritySettings$PWState;

    invoke-virtual {v1}, Lcom/android/settings/OtherSecuritySettings$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/OtherSecuritySettings$PWState;->CONFIRM:Lcom/android/settings/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mPWState:Lcom/android/settings/OtherSecuritySettings$PWState;

    invoke-virtual {p0, v4}, Lcom/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a1223

    invoke-virtual {p0, v1}, Lcom/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/settings/OtherSecuritySettings$PWState;->CURRENT:Lcom/android/settings/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mPWState:Lcom/android/settings/OtherSecuritySettings$PWState;

    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/settings/OtherSecuritySettings$PWState;->NEW:Lcom/android/settings/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mPWState:Lcom/android/settings/OtherSecuritySettings$PWState;

    invoke-virtual {p0, v4}, Lcom/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a1220

    invoke-virtual {p0, v1}, Lcom/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a1224

    invoke-virtual {p0, v2}, Lcom/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

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

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/settings/OtherSecuritySettings$PWState;->NEW:Lcom/android/settings/OtherSecuritySettings$PWState;

    iput-object v1, p0, Lcom/android/settings/OtherSecuritySettings;->mPWState:Lcom/android/settings/OtherSecuritySettings$PWState;

    invoke-virtual {p0, v3}, Lcom/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a1220

    invoke-virtual {p0, v2}, Lcom/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a1224

    invoke-virtual {p0, v3}, Lcom/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/settings/OtherSecuritySettings$PWState;->CURRENT:Lcom/android/settings/OtherSecuritySettings$PWState;

    iput-object v1, p0, Lcom/android/settings/OtherSecuritySettings;->mPWState:Lcom/android/settings/OtherSecuritySettings$PWState;

    invoke-virtual {p0, v3}, Lcom/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a1222

    invoke-virtual {p0, v2}, Lcom/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/OtherSecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/OtherSecuritySettings;->updateSIMLockEnable()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v18, 0x7f070085

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/OtherSecuritySettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-nez v18, :cond_d

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "shopdemo"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v18

    if-eqz v18, :cond_f

    const-string v18, "security.mdpp"

    const-string v19, "None"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const-string v18, "Enabled"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->isAfwProfile()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    :cond_1
    const v18, 0x7f07008a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/OtherSecuritySettings;->addPreferencesFromResource(I)V

    :goto_1
    new-instance v6, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v18

    if-eqz v18, :cond_2

    const v18, 0x7f070091

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/OtherSecuritySettings;->addPreferencesFromResource(I)V

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-nez v18, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const v19, 0x7f0a121f

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const-string v19, "mPhonePasswordPreference"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    new-instance v10, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0a121e

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v12, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    const v18, 0x7f07008c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/OtherSecuritySettings;->addPreferencesFromResource(I)V

    const-string v18, "manage_notification_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/OtherSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->refreshNotificationListeners()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v18

    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SECURITY_EMBEDEDSIMCARD"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    const-string v18, "sim_lock"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_to_app_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_4

    const-string v18, "screen_pinning_settings"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0e2d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v18, "show_password"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    const-string v18, "credentials_reset"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/OtherSecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "user"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/OtherSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    const-string v18, "no_config_credentials"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_17

    const-string v18, "credential_storage_type"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v18

    if-eqz v18, :cond_16

    const v14, 0x7f0a0b52

    :goto_3
    invoke-virtual {v4, v14}, Landroid/preference/Preference;->setSummary(I)V

    :goto_4
    const-string v18, "security_policy_updates"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    const-string v18, "security_reports"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "send_security_reports"

    const/16 v20, -0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_5
    const-string v18, "DCM"

    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, "KDI"

    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    :cond_5
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    :cond_6
    const-string v18, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceGroup;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "GOOGLE_POLICY"

    const-string v19, "selinux.policy_version"

    const-string v20, "Unknown"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    :cond_8
    const-string v18, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/android/settings/OtherSecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    :goto_6
    const-string v18, "advanced_security"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "manage_trust_agents"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v3, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    if-eqz v3, :cond_a

    const-string v18, "manage_trust_agents"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v18

    if-nez v18, :cond_a

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const v18, 0x7f0a022b

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setSummary(I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "smartcard_credential_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/OtherSecuritySettings;->removePreference(Ljava/lang/String;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v18

    const-class v19, Lcom/android/settings/OtherSecuritySettings;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    const/4 v7, 0x0

    :goto_7
    sget-object v18, Lcom/android/settings/OtherSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_1c

    sget-object v18, Lcom/android/settings/OtherSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v18, v18, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_e
    const v18, 0x7f070089

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/OtherSecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    :cond_f
    const v18, 0x7f070092

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/OtherSecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    :cond_10
    const-string v18, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string v18, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string v18, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string v18, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string v18, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string v18, "TFN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    :cond_11
    const-string v18, "sim_lock"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->isSimIccReady()Z

    move-result v18

    if-nez v18, :cond_14

    :cond_13
    const-string v18, "sim_lock"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_15

    const-string v18, "sim_lock"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_15
    const-string v18, "sim_lock"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->isSimReady()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_16
    const v14, 0x7f0a0b53

    goto/16 :goto_3

    :cond_17
    const-string v18, "credentials_management"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    const-string v18, "credentials_reset"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v18, "credentials_install"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v18, "credential_storage_type"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->isUsaCountryCode()Z

    move-result v18

    if-nez v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f0a11f2

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_6

    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v18

    if-nez v18, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f0a11f3

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f0a11f4

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_6

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1d

    const-string v18, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/android/settings/OtherSecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    if-eqz v3, :cond_1d

    const-string v18, "usage_access"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_1d

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1d
    return-object v12
.end method

.method private isAfwProfile()Z
    .locals 6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/settings/OtherSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSimIccReady()Z
    .locals 5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/OtherSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/settings/OtherSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

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

.method private refreshNotificationListeners()V
    .locals 8

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/settings/OtherSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/OtherSecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/OtherSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0df5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/OtherSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110008

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
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

.method private updateSIMLockEnable()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0a0d4d

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v2, 0x7e

    if-ne p1, v2, :cond_1

    if-ne p2, v4, :cond_1

    iget-object v2, p0, Lcom/android/settings/OtherSecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/OtherSecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/OtherSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/OtherSecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x64

    if-eq p1, v2, :cond_2

    const/16 v2, 0x66

    if-ne p1, v2, :cond_3

    :cond_2
    if-ne p2, v4, :cond_3

    invoke-direct {p0, p3}, Lcom/android/settings/OtherSecuritySettings;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/OtherSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/OtherSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iget-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/OtherSecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OtherSecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v6, "show_password"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "show_password"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    const-string v6, "security_reports"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "send_security_reports"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v3, v4

    :goto_2
    const-string v4, "OtherSecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state in db: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "send_security_reports"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    const-string v4, "OtherSecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.setting.intent.send_security_report_checked"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "IS_SEND_SECURITY_REPORT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trust_agent"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object p2, p0, Lcom/android/settings/OtherSecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    const/16 v4, 0x7e

    invoke-virtual {v1, v4, v5, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/OtherSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v5, p0, Lcom/android/settings/OtherSecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    :cond_0
    :goto_1
    const/4 v4, 0x1

    :goto_2
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/OtherSecuritySettings;->StartPassword()V

    goto :goto_1

    :cond_2
    const-string v4, "smartCardConfig"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.sec.smartcard.pinservice.action.SMARTCARDCREDENTIALSETTINGSPAGE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_2
.end method

.method public onResume()V
    .locals 15

    const/4 v14, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/OtherSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    iget-object v11, p0, Lcom/android/settings/OtherSecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    iget-object v12, p0, Lcom/android/settings/OtherSecuritySettings;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v12}, Landroid/app/enterprise/PasswordPolicy;->isPasswordVisibilityEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object v11, p0, Lcom/android/settings/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v11, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/settings/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v11, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v11

    if-nez v11, :cond_7

    :cond_1
    move v1, v10

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v13, "isPasswordVisibilityEnabled"

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v1, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v11, p0, Lcom/android/settings/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v11, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowAppListThirdParty(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    move v1, v10

    :cond_2
    :goto_1
    iget-object v11, p0, Lcom/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_3

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "show_password"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_9

    move v2, v10

    :goto_2
    iget-object v11, p0, Lcom/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_3
    :goto_3
    iget-object v11, p0, Lcom/android/settings/OtherSecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v11, :cond_5

    iget-object v12, p0, Lcom/android/settings/OtherSecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v11, p0, Lcom/android/settings/OtherSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    move v11, v10

    :goto_4
    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v11, "content://com.sec.knox.provider/CertificatePolicy"

    const-string v12, "isUserRemoveCertificatesAllowed"

    invoke-static {v3, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    new-array v8, v10, [Ljava/lang/String;

    const-string v10, "false"

    aput-object v10, v8, v9

    const-string v10, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v11, "isUserChangeProfilesAllowed"

    invoke-static {v3, v10, v11, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-eqz v7, :cond_4

    if-nez v6, :cond_5

    :cond_4
    iget-object v10, p0, Lcom/android/settings/OtherSecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    invoke-virtual {v10, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_5
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/OtherSecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v4, v14, v14}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/OtherSecuritySettings;->updateSIMLockEnable()V

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/OtherSecuritySettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    new-instance v10, Lcom/android/settings/OtherSecuritySettings$2;

    invoke-direct {v10, p0}, Lcom/android/settings/OtherSecuritySettings$2;-><init>(Lcom/android/settings/OtherSecuritySettings;)V

    const-wide/16 v12, 0x5

    invoke-virtual {v9, v10, v12, v13}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void

    :cond_7
    move v1, v9

    goto/16 :goto_0

    :cond_8
    move v1, v9

    goto/16 :goto_1

    :cond_9
    move v2, v9

    goto :goto_2

    :cond_a
    iget-object v11, p0, Lcom/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_b
    move v11, v9

    goto :goto_4
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

    invoke-virtual {p0, v1, p4}, Lcom/android/settings/OtherSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

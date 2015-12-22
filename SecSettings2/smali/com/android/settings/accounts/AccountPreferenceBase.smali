.class Lcom/android/settings/accounts/AccountPreferenceBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# instance fields
.field protected mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFragmentMode:Z

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUm:Landroid/os/UserManager;

.field protected mUserHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mIsFragmentMode:Z

    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$1;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AccountPreferenceBase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addAlibabaAccountPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 8

    const-string v5, "AccountSettings"

    const-string v6, "addAlibabaAccountPreference "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.sec.android.cloudagent"

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.cloudagent"

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const-string v5, "AccountSettings"

    const-string v6, "Cloud Agent is Installed."

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a1172

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v5, "cloudaccountchina"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a1167

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a1168

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/android/settings/accounts/AccountPreferenceBase$2;

    invoke-direct {v5, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$2;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private addDropboxAccountPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 7

    const-string v4, "AccountSettings"

    const-string v5, "addDropboxAccountPreference"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.sec.android.cloudagent"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.cloudagent"

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "AccountSettings"

    const-string v5, "Cloud Agent is Installed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "cloudaccount"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1167

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/settings/accounts/AccountPreferenceBase$3;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$3;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addItemFromInflater(Landroid/preference/Preference;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private addSSORetryPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->snsAccountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v4, v3

    if-lez v4, :cond_0

    array-length v4, v1

    if-nez v4, :cond_0

    iget-object v4, p3, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->ssoRetryAction:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "AccountSettings"

    const-string v5, "SSO retry menu added."

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    iget-object v4, p3, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->ssoRetryAction:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "snsSSORetry"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    const v4, 0x7f0a1162

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountPreferenceBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a1163

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountPreferenceBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addItemFromInflater(Landroid/preference/Preference;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 27

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v9

    if-eqz v9, :cond_3

    iget v0, v9, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    move/from16 v21, v0

    if-nez v21, :cond_0

    const-string v21, "com.dropbox.android.account"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v21

    iget-object v0, v9, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v21, 0x7f0b00c1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v18, Landroid/view/ContextThemeWrapper;

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const-string v21, "com.dropbox.android.account"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "dropbox_account_preferences"

    const-string v23, "xml"

    const-string v24, "com.android.settings"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const-string v21, "AccountSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "account Type Dropbox:custom preference resource ID::"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v21

    new-instance v22, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const-string v24, "com.android.settings"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v26, v0

    invoke-virtual/range {v23 .. v26}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v22 .. v24}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v15, v2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v21, "AccountSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "account Type Dropbox:custom preference loaded:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v21, "com.dropbox.android.account"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    const-string v21, "AccountSettings"

    const-string v22, "account Type Dropbox"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1}, Lcom/android/settings/accounts/AccountPreferenceBase;->addDropboxAccountPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    :try_start_2
    const-string v21, "com.osp.app.signin"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v21

    if-eqz v21, :cond_3

    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v21

    if-eqz v21, :cond_3

    if-eqz v14, :cond_3

    const-string v21, "AccountSettings"

    const-string v22, "Add Aliababa account preference"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1}, Lcom/android/settings/accounts/AccountPreferenceBase;->addAlibabaAccountPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v14, p2

    const-string v21, "snsSSORetry"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1, v4}, Lcom/android/settings/accounts/AccountPreferenceBase;->addSSORetryPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;)V

    :cond_5
    :goto_2
    return-object v14

    :cond_6
    const/4 v12, 0x1

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v21

    iget v0, v9, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    :goto_3
    if-ge v11, v8, :cond_a

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    instance-of v0, v5, Landroid/preference/PreferenceCategory;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    new-instance v19, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    instance-of v0, v5, Landroid/preference/PreferenceScreen;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    new-instance v19, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_0
    move-exception v10

    const-string v21, "AccountSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Couldn\'t load preferences.xml file from "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v9, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    :try_start_5
    instance-of v0, v5, Landroid/preference/Preference;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    new-instance v19, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v10

    const-string v21, "AccountSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Couldn\'t load preferences.xml file from "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v9, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_a
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v12, v0, :cond_1

    move-object/from16 v14, p2

    const/4 v11, 0x0

    :try_start_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_5
    if-ge v11, v8, :cond_1

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/Preference;

    invoke-virtual {v14, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v10

    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1
.end method

.method protected formatSyncDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountPreferenceBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iput-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    :goto_0
    new-instance v2, Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    invoke-direct {v2, v0, v3, v4, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 0

    return-void
.end method

.method public updateAuthDescriptions()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    return-void
.end method

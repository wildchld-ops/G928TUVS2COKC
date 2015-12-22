.class public Lcom/android/settings/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static hasCorrectMyAccount:Z


# instance fields
.field private final PWD_MGR_CLSNAME:Ljava/lang/String;

.field private accountManager:Landroid/accounts/AccountManager;

.field private categorySamsungServices:Landroid/preference/PreferenceGroup;

.field private mAutoRestore:Landroid/preference/SwitchPreference;

.field private mBackup:Landroid/preference/SwitchPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDiagnostics:Landroid/preference/PreferenceScreen;

.field private mDialogType:I

.field private mEnabled:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsConnected:Z

.field private mIsSamsungBackupEnabled:Z

.field private mIsSamsungStorageEnabled:Z

.field private mResetSettings:Landroid/preference/PreferenceScreen;

.field private mSamsungAutoClean:Landroid/preference/Preference;

.field private mSamsungBackup:Landroid/preference/Preference;

.field private mSamsungBackupInActive:Landroid/preference/Preference;

.field private mSamsungRestore:Landroid/preference/Preference;

.field private mSamsungStorage:Landroid/preference/Preference;

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private sAutoRestart:Z

.field toastMsg:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    new-instance v0, Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->toastMsg:Landroid/widget/Toast;

    iput-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    iput-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    iput-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mIsConnected:Z

    iput-boolean v0, p0, Lcom/android/settings/PrivacySettings;->sAutoRestart:Z

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const-string v0, "jp.softbank.mb.passwordmanager.Pwdmanager"

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->PWD_MGR_CLSNAME:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PrivacySettings$1;-><init>(Lcom/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/android/settings/PrivacySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/PrivacySettings$2;-><init>(Lcom/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->onBackUpClicked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->showEraseBackupDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/PrivacySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/PrivacySettings;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/PrivacySettings;->canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->onRestoreClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mSamsungAutoClean:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->onStorageClicked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/PrivacySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private addSamsungAccount()V
    .locals 7

    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.osp.app.signin"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_0

    const-string v0, "tj9u972o46"

    const-string v1, "D234AE3C42F092D4334433173AE9E264"

    const-string v3, "com.samsung.android.scloud.backup"

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "client_id"

    const-string v6, "tj9u972o46"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "client_secret"

    const-string v6, "D234AE3C42F092D4334433173AE9E264"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "mypackage"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "OSP_VER"

    const-string v6, "OSP_02"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "MODE"

    const-string v6, "ADD_ACCOUNT"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x3e9

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/PrivacySettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private static canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t resolve action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkIsDeviceOwner(Landroid/content/Context;)Z
    .locals 3

    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "PrivacySettings"

    const-string v2, "Device owner case. Backup and Restore needs to be disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    const-string v4, "backup_inactive"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_factory_reset"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "personal_data_category"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.google.settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "backup_category"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v3

    :catch_0
    move-exception v1

    const-string v4, "PrivacySettings"

    const-string v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "auto_restore"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "configure_account"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "backup_data"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private onBackUpClicked()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.scloud.backup"

    const-string v4, "com.samsung.android.scloud.backup.SamsungBackup"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->samsungAccountExists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onRestoreClicked()V
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/PrivacySettings;->isConnected(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/PrivacySettings;->mIsConnected:Z

    iget-boolean v1, p0, Lcom/android/settings/PrivacySettings;->mIsConnected:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->toastMsg:Landroid/widget/Toast;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a117c

    invoke-virtual {p0, v2}, Lcom/android/settings/PrivacySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->toastMsg:Landroid/widget/Toast;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->toastMsg:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a117d

    invoke-virtual {p0, v2}, Lcom/android/settings/PrivacySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->toastMsg:Landroid/widget/Toast;

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.scloud.backup"

    const-string v4, "com.samsung.android.scloud.backup.ManualRestoreActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->samsungAccountExists()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private onStorageClicked()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/PrivacySettings;->isConnected(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/PrivacySettings;->mIsConnected:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.scloud.quota"

    const-string v4, "com.samsung.android.scloud.quota.StorageList"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->samsungAccountExists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private samsungAccountExists()Z
    .locals 3

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setBackupEnabled(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    if-nez p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a0b77

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 3

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0b84

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0b72

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    return-void
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateConfigureSummary()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "backup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "summary : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->checkSamsungBackupAndStorageAvailble()V

    iget-boolean v7, p0, Lcom/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :cond_0
    :goto_1
    iget-boolean v7, p0, Lcom/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_5

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string v7, "backup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configIntent : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    move v3, v8

    :goto_4
    const-string v7, "backup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configureEnabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_1

    :catch_0
    move-exception v4

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_5
    move v7, v9

    goto/16 :goto_3

    :cond_6
    move v3, v9

    goto :goto_4
.end method


# virtual methods
.method checkSamsungBackupAndStorageAvailble()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.scloud.backup"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.scloud.quota"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iput-boolean v5, p0, Lcom/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    goto :goto_0

    :catch_1
    move-exception v0

    iput-boolean v5, p0, Lcom/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    goto :goto_1
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0a0d48

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "PrivacySettings"

    const-string v1, "Samsung Account added"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "PrivacySettings"

    const-string v1, "Samsung Account Login : cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "PrivacySettings"

    const-string v1, "Samsung Account Login : other reasons"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_0

    if-ne p2, v1, :cond_4

    const-string v0, "PrivacySettings"

    const-string v1, "Succeed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/MasterClear;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0a06c1

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_4
    const-string v0, "PrivacySettings"

    const-string v1, "Failed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateConfigureSummary()V

    :cond_1
    iput v2, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    return-void

    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserHandle;->isOwner()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    :goto_0
    return-void

    :cond_0
    const v20, 0x7f07007a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v20

    if-eqz v20, :cond_1

    if-eqz v2, :cond_1

    const v20, 0x7f0a146b

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    const-string v20, "category_samsungservices"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    const-string v20, "backup"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    const-string v20, "backup_data"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v20, "auto_restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v20, "configure_account"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const-string v20, "pref_backUp"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v20, "pref_restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v20, "pref_storage"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v20, "samsung_backup_inactive"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    const-string v20, "category_restart"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    const-string v20, "pref_auto_clean"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->mSamsungAutoClean:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->mSamsungAutoClean:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v20, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v21, "DISABLEAUTORESTART"

    invoke-static/range {v20 .. v21}, Lcom/android/settings/PrivacySettings;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/PrivacySettings;->sAutoRestart:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/PrivacySettings;->sAutoRestart:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const-string v21, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-static/range {v20 .. v21}, Lcom/android/settings/PrivacySettings;->canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    :cond_2
    const-string v20, "PrivacySettings"

    const-string v21, "Auto reset not support model"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    const-string v20, "settings_reset"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->mResetSettings:Landroid/preference/PreferenceScreen;

    const-string v20, "collect_diagnostics"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v6, 0x1

    :try_start_0
    const-string v20, "com.carrieriq.tmobile.IQToggle"

    const/16 v21, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v7, 0x0

    :try_start_1
    const-string v20, "com.tmobile.pr.mytmobile"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-object v15, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    const-string v20, "PrivacySettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isSkipMyAccount: rawVersion = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", stringVerson = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", numVersion = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v20, 0x40666666    # 3.6f

    cmpl-float v20, v11, v20

    if-ltz v20, :cond_a

    const/16 v20, 0x1

    :goto_3
    sput-boolean v20, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v7, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const-string v20, "PrivacySettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "hasMyAccountEnabled: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    if-nez v6, :cond_4

    sget-boolean v20, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    if-eqz v20, :cond_5

    :cond_4
    if-nez v7, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v20

    const-string v21, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_RESET_SETTINGS"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_7

    const-string v20, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PrivacySettings;->mResetSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    :goto_5
    if-ltz v8, :cond_b

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    const/4 v6, 0x0

    const-string v20, "PrivacySettings"

    const-string v21, "Package not found : IQToggle"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_3

    :catch_1
    move-exception v5

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    const-string v20, "PrivacySettings"

    const-string v21, "NameNotFoundException : MyAccount"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_2
    move-exception v10

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    const-string v20, "PrivacySettings"

    const-string v21, "NumberFormatException : MyAccount version"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_b
    const-string v20, "backup_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v8, v4, -0x1

    :goto_6
    if-ltz v8, :cond_d

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-virtual {v3, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "master_clear"

    invoke-virtual {p0, v2}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "jp.softbank.mb.passwordmanager"

    const-string v3, "jp.softbank.mb.passwordmanager.Pwdmanager"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "FuncCode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ResultString"

    const-string v3, "fghigklmn087"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/PrivacySettings;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    const/4 v9, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v4, "backup"

    const-string v7, "onResume : "

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v8, "isBackupAllowed"

    invoke-static {v4, v7, v8, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v8, "isFactoryResetAllowed"

    invoke-static {v4, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    if-eq v1, v9, :cond_0

    if-ne v1, v6, :cond_4

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v7, "master_clear"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    if-eq v2, v9, :cond_1

    if-ne v2, v6, :cond_5

    :cond_1
    :goto_1
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    :cond_3
    iget-object v6, p0, Lcom/android/settings/PrivacySettings;->mSamsungAutoClean:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "sec_silent_auto_reset"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f0a0e2d

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setSummary(I)V

    return-void

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    move v6, v5

    goto :goto_1

    :cond_6
    const v4, 0x7f0a0e2e

    goto :goto_2
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

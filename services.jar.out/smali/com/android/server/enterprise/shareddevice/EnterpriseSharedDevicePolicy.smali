.class public Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
.super Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy$Stub;
.source "EnterpriseSharedDevicePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;,
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;,
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;,
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;
    }
.end annotation


# static fields
.field public static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field public static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final PERMISSION_SD_KEYGUARD:Ljava/lang/String; = "com.sec.knox.permission.KEYGUARD_SERVICE"

.field private static final PERMISSION_SHARED_DEVICES:Ljava/lang/String; = "android.permission.sec.MDM_SHARED_DEVICE"

.field private static final SD_KEYGUARD_PACKAGE:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.keyguard"

.field private static final SD_KEYGUARD_RECEIVER_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardReceiver"

.field private static final SD_PACKAGE:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice"

.field private static final SD_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice"

.field private static final TAG:Ljava/lang/String;

.field private static mSharedDevicesStateInternal:Z


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mELM:Landroid/app/enterprise/license/EnterpriseLicenseManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mKeyStore:Landroid/security/KeyStore;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mSDAgentInstallerPackage:Ljava/lang/String;

.field private mSDAgentInstallerPackageUid:I

.field private mSharedDevicesState:Z

.field private mValues:Landroid/content/ContentValues;

.field private mWhere:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesStateInternal:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPersonaManager:Landroid/os/PersonaManager;

    new-instance v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyguardConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isKnoxVersionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSharedDevicesState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSharedDevicesState()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesStateInternal:Z

    new-instance v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Registering broadcast SDAgentPackageStateReceiver!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "This KNOX Version is not supported!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->removeAppliedPolicies()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->disableSDKeyguard()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    return p1
.end method

.method static synthetic access$1402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesStateInternal:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/internal/policy/IKeyguardService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->enableSD()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->showProgressDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->findSDAgentInstallerPackageUid()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;[Landroid/app/enterprise/license/LicenseInfo;)[Landroid/app/enterprise/license/LicenseInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackage:Ljava/lang/String;

    return-object p1
.end method

.method private applyPolicies()V
    .locals 5

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Applying Policies!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/enterprise/PasswordPolicy;->setMaximumFailedPasswordsForDeviceDisable(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policies Applied? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to apply policies. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static checkCallerUID()Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkSDSignature()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is SD Agent platform signed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearAllNotifications(I)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->clearAllNotificationsAsUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x1

    :goto_0
    return v4

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed to clear notification bar"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private clearClipboardData()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "clearClipboardData in Service!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/MiscPolicy;->clearClipboardData()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearRecentTasks()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "cleartask in Service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteAndroidKeystoreCertificates()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "deleteAndroidKeystoreCertificates in Service!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->reset()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Android Keystore Reset Successful!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Android Keystore Reset Failed!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disableSDKeyguard()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Dismissing SD Keyguard!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPersonaManager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v0}, Landroid/os/PersonaManager;->hideScrim()V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersonaManager;->notifyKeyguardShow(IZ)V

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Disabling SD Keyguard!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.keyguard.KeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private enableSD()V
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Enabling Shared Devices!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isKeyguardLaunched"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->applyPolicies()V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->enableSDKeyguard()V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->startSDKeyguard()V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sendNotificationToKLMSAgent()V

    return-void
.end method

.method private enableSDKeyguard()V
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Enabling SD Keyguard!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    return-void
.end method

.method private enforceSharedDevicePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SHARED_DEVICE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private findSDAgentInstallerPackageUid()I
    .locals 5

    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackage:Ljava/lang/String;

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Trying to find installer package UID for SD Agent!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installer package for SD Agent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isActiveMDM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installer package \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with UID \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' found for SD Agent!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private forceStopApp(Ljava/lang/String;I)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "forceStopApp is called"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException on force stop"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getELM()Landroid/app/enterprise/license/EnterpriseLicenseManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mELM:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/license/EnterpriseLicenseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mELM:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mELM:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    return-object v0
.end method

.method private getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method private getKeyStore()Landroid/security/KeyStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyStore:Landroid/security/KeyStore;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyStore:Landroid/security/KeyStore;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private getMiscPolicy()Landroid/app/enterprise/MiscPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    return-object v0
.end method

.method private getPersonaManager()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPersonaManager:Landroid/os/PersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSharedDevicesState()Z
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSharedDevicesState in Service"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    const-string v4, "SHAREDDEVICE"

    const-string v5, "enabled"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isActiveMDM(Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getELM()Landroid/app/enterprise/license/EnterpriseLicenseManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking license for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is Active MDM!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isActiveMDMPresent()Z
    .locals 13

    const/4 v11, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getELM()Landroid/app/enterprise/license/EnterpriseLicenseManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_0

    move v6, v5

    :goto_0
    return v6

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    if-eqz v10, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Checking license for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    array-length v7, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v8, v2, v4

    invoke-virtual {v8}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is Active MDM!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_1

    :cond_3
    move v6, v5

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private isKnoxVersionSupported()Z
    .locals 4

    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v0

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is current KNOX Version supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isSharedDeviceEnabledInternal()Z
    .locals 1

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesStateInternal:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeAppliedPolicies()V
    .locals 5

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Removing applied policies!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/enterprise/PasswordPolicy;->setMaximumFailedPasswordsForDeviceDisable(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policies Removed? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to apply policies. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetTheme()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.themecenter.APPLY_DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendNotificationToKLMSAgent()V
    .locals 5

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Sending Broadcast to KLMSAgent"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.knox.B2B_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "packageName"

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "musd"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v4, "com.sec.knox.permission.KLMS_AGENT"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send intent to KLMS Agent. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showProgressDialog(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Creating ProgressDialog!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    const v2, 0x1040a2d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Displaying ProgressDialog!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private startSDKeyguard()V
    .locals 4

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Launching SD Keyguard!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "SharedDeviceKeyguardEventFlag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.enterprise.knox.shareddevice.keyguard"

    const-string v3, "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public bindTodeviceKeyguard()V
    .locals 6

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Binding to Normal Keyguard!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.keyguard.KeyguardService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->enableSD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancelProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public clearData(I)I
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData in Service called by: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    and-int/lit8 v3, p1, 0x1

    if-lez v3, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->deleteAndroidKeystoreCertificates()Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    and-int/lit8 v3, p1, 0x10

    if-lez v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->clearRecentTasks()Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x10

    :cond_1
    and-int/lit8 v3, p1, 0x2

    if-lez v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->clearClipboardData()Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x2

    :cond_2
    and-int/lit8 v3, p1, 0x4

    if-lez v3, :cond_3

    const-string v3, "com.android.phone"

    const/16 v6, 0x3e9

    invoke-direct {p0, v3, v6}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->forceStopApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x4

    :cond_3
    and-int/lit8 v3, p1, 0x8

    if-lez v3, :cond_4

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->resetTheme()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/lit8 v2, v2, 0x8

    :cond_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_5
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData failure due to invalid calling package: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSharedDeviceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    return v0
.end method

.method public notifyUserSignedIn(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "notifyUserSignedIn in Service"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->clearRecentTasks()Z

    new-instance v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public performUserAuthentication(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)I
    .locals 6

    const/4 v0, -0x1

    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "performUserAuthentication in Service"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v2, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->start()V

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->getAuthStatus()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendIntentforBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentforBroadcast in Service called by: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Intent! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setSharedDeviceState(Landroid/app/enterprise/ContextInfo;IZ)I
    .locals 12

    const v11, 0x7fffffff

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isKnoxVersionSupported()Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setSharedDeviceState in Service: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget v8, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    if-ne v8, v11, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isActiveMDMPresent()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_5

    :cond_0
    move v1, v7

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Active MDM Present: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    if-ne v6, v11, :cond_1

    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v8, "Packages is Installed by User! so setting SDAgent as Default ID"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v8, "com.sec.enterprise.knox.shareddevice"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    if-eqz p3, :cond_2

    if-nez v1, :cond_2

    const/4 p3, 0x0

    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting Shared Device state to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x2

    :cond_2
    const/4 v2, 0x0

    :try_start_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iput-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const-string v8, "adminUid"

    iget v9, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_6

    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const-string v8, "enabled"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iput-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    const-string v8, "adminUid"

    iget v9, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v8, "SHAREDDEVICE"

    iget-object v9, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    iget-object v10, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Put Result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    :cond_3
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz v2, :cond_8

    if-eqz p3, :cond_8

    const/4 v6, 0x1

    :try_start_3
    iput-boolean v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesStateInternal:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.keyguard.KeyguardService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/server/pm/PackageManagerService;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v6

    if-ne v6, v7, :cond_7

    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v7, "Normal Keyguard component still enabled!"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->bindTodeviceKeyguard()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :goto_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_6
    return v3

    :cond_5
    move v1, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :catch_1
    move-exception v0

    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    :try_start_5
    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const-string v8, "enabled"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    :try_start_6
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v7, "Normal Keyguard component is disabled!"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->enableSD()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_7
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :cond_8
    if-eqz v2, :cond_4

    if-nez p3, :cond_4

    :try_start_8
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->disableSDKeyguard()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesStateInternal:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_9
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v7, "This KNOX Version is not supported!"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public signOutUser(Z)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "signOutUser in Service\nUser Switch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;

    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v6, v1, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Z)V

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;->start()V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;->isSuccessful()Z

    move-result v4

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->clearAllNotifications(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v7, "clear all notification is successful"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 6

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "systemReady called!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->enableSDKeyguard()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    const-string v3, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "This KNOX Version is not supported!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

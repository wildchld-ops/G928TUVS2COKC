.class public Lcom/android/server/enterprise/application/ApplicationPolicy;
.super Landroid/app/enterprise/IApplicationPolicy$Stub;
.source "ApplicationPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationPolicy$5;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDeleteObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDataObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    }
.end annotation


# static fields
.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final APPS_TO_RECONCILE:Ljava/lang/String; = "appToReconcile"

.field private static final BACKUP_RESTORE_TIMEOUT:J = 0x493e0L

.field private static final BBC_AGENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.bbc.bbcagent"

.field private static final COMPONENTS_TO_RECONCILE:Ljava/lang/String; = "componentsToReconcile"

.field private static final EXTRA_APPSTATE:Ljava/lang/String; = "application_state_disable_enable"

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final INTENT_SAMSUNG_WIDGET_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

.field private static final INTENT_SAMSUNG_WIDGET_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

.field private static final INTENT_SURFACE_WIDGET_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

.field private static final INTENT_SURFACE_WIDGET_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET"

.field private static final MY_PID:I

.field private static final PERMISSION_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PermissionInstallationBlacklist"

.field private static final PKGNAME_CLEARCACHE_BLACKLIST:Ljava/lang/String; = "PackageNameClearCacheBlacklist"

.field private static final PKGNAME_CLEARCACHE_WHITELIST:Ljava/lang/String; = "PackageNameClearCacheWhitelist"

.field private static final PKGNAME_CLEARDATA_BLACKLIST:Ljava/lang/String; = "PackageNameClearDataBlacklist"

.field private static final PKGNAME_CLEARDATA_WHITELIST:Ljava/lang/String; = "PackageNameClearDataWhitelist"

.field private static final PKGNAME_CLIPBOARD_BLACKLIST:Ljava/lang/String; = "PackageNameDisableClipboardBlackList"

.field private static final PKGNAME_CLIPBOARD_WHITELIST:Ljava/lang/String; = "PackageNameDisableClipboardWhitelist"

.field private static final PKGNAME_FOCUSMONITORING_LIST:Ljava/lang/String; = "PackageNameFocusMonitoringList"

.field private static final PKGNAME_FOCUSMONITORING_WHITELIST:Ljava/lang/String; = "PackageNameFocusMonitoringWhiteList"

.field private static final PKGNAME_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PackageNameInstallationBlacklist"

.field private static final PKGNAME_INSTALLATION_WHITELIST:Ljava/lang/String; = "PackageNameInstallationWhitelist"

.field private static final PKGNAME_NOTIFICATION_BLACKLIST:Ljava/lang/String; = "PackageNameNotificationBlacklist"

.field private static final PKGNAME_NOTIFICATION_WHITELIST:Ljava/lang/String; = "PackageNameNotificationWhitelist"

.field private static final PKGNAME_OCSP_CHECK:Ljava/lang/String; = "OcspCheck"

.field private static final PKGNAME_REVOCATION_CHECK:Ljava/lang/String; = "RevocationCheck"

.field private static final PKGNAME_START_BLACKLIST:Ljava/lang/String; = "PackageNameStartBlacklist"

.field private static final PKGNAME_START_WHITELIST:Ljava/lang/String; = "PackageNameStartWhitelist"

.field private static final PKGNAME_STOP_BLACKLIST:Ljava/lang/String; = "PackageNameStopBlacklist"

.field private static final PKGNAME_STOP_WHITELIST:Ljava/lang/String; = "PackageNameStopWhitelist"

.field private static final PKGNAME_UPDATE_BLACKLIST:Ljava/lang/String; = "PackageNameUpdateBlacklist"

.field private static final PKGNAME_UPDATE_WHITELIST:Ljava/lang/String; = "PackageNameUpdateWhitelist"

.field private static final PKGNAME_WIDGET_BLACKLIST:Ljava/lang/String; = "PackageNameWidgetBlacklist"

.field private static final PKGNAME_WIDGET_WHITELIST:Ljava/lang/String; = "PackageNameWidgetWhitelist"

.field private static final SCHEME_MMS:Ljava/lang/String; = "mms"

.field private static final SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static final SIGNATURE_INSTALLATION_BLACKLIST:Ljava/lang/String; = "SignatureInstallationBlacklist"

.field private static final SIGNATURE_INSTALLATION_WHITELIST:Ljava/lang/String; = "SignatureInstallationWhitelist"

.field private static SMS_SCHEMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ApplicationPolicy"

.field private static final UNINSTALLATION_BLACKLIST:Ljava/lang/String; = "UninstallationBlacklist"

.field private static final UNINSTALLATION_WHITELIST:Ljava/lang/String; = "UninstallationWhitelist"

.field private static final UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field private static addHomeShorcutRequested:Z

.field private static mAppControlState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static mAppIconChangedPkgNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mAppNameChangedPkgNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mAppStartOnUserSwitch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

.field private static volatile packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private final addingShortcut:Ljava/lang/Object;

.field private volatile isBackupRunning:Z

.field private volatile isRestoreRunning:Z

.field private final mAppControlStateLock:Ljava/lang/Object;

.field private mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

.field private mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

.field final mBackupLock:Ljava/lang/Object;

.field private mBackupManagerService:Landroid/app/backup/IBackupManager;

.field private mBackupReturnCode:I

.field mContext:Landroid/content/Context;

.field private mCurrentBackupPackage:Ljava/lang/String;

.field private mCurrentRestorePackage:Ljava/lang/String;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Landroid/os/Handler;

.field private mNotificationMode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

.field final mRefreshWidgetStatusLock:Ljava/lang/Object;

.field final mRestoreLock:Ljava/lang/Object;

.field private mRestoreReturnCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    sput-boolean v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->addHomeShorcutRequested:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "sms"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "smsto"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "mms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "mmsto"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->SMS_SCHEMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->addingShortcut:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaObservers:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    new-instance v1, Lcom/android/server/enterprise/application/ProcessStats;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->registerPackageChangeReceiver()V

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationIconDb;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ApplicationIconDb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationIconChangedMap()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationNameChangedMap()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "edm.intent.action.backup.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "edm.intent.action.restore.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->registerBootCompletedListener()V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->registerUserSwitchedReceiver()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private PkgResCache(Landroid/content/Context;)I
    .locals 10

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x1050229

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/high16 v7, 0x1050000

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "in PkgResCache targetIconSize("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") stdIconSize("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-ne v6, v3, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    return v1

    :cond_0
    int-to-float v7, v6

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v5, v7

    const/16 v7, 0x78

    if-gt v5, v7, :cond_1

    const/16 v1, 0x78

    goto :goto_0

    :cond_1
    const/16 v7, 0xa0

    if-gt v5, v7, :cond_2

    const/16 v1, 0xa0

    goto :goto_0

    :cond_2
    const/16 v7, 0xf0

    if-gt v5, v7, :cond_3

    const/16 v1, 0xf0

    goto :goto_0

    :cond_3
    const/16 v7, 0x140

    if-gt v5, v7, :cond_4

    const/16 v1, 0x140

    goto :goto_0

    :cond_4
    const/16 v7, 0x1e0

    if-gt v5, v7, :cond_5

    const/16 v1, 0x1e0

    goto :goto_0

    :cond_5
    const/16 v1, 0x280

    goto :goto_0
.end method

.method private _installApplication(ILjava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 26

    const/16 v21, 0x0

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ApplicationPolicy"

    const-string/jumbo v4, "installApplication : External Storage Emulated"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_installApplication : apkFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callingUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move/from16 v3, v21

    goto :goto_0

    :cond_2
    const/16 v18, 0x82

    if-eqz p3, :cond_4

    or-int/lit8 v18, v18, 0x8

    :goto_1
    new-instance v19, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    const/16 v25, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "package_verifier_enable"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "package_verifier_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v25, 0x1

    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Landroid/content/pm/VerificationParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, v19

    move/from16 v6, v18

    move/from16 v7, v24

    move-object v9, v2

    invoke-virtual/range {v3 .. v10}, Landroid/content/pm/PackageManager;->installPackageForMDM(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;IILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    monitor-enter v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    :try_start_1
    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_5

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_4
    or-int/lit8 v18, v18, 0x10

    goto :goto_1

    :cond_5
    :try_start_3
    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->result:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    const/16 v21, 0x1

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->pkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->pkgName:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->pkgName:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installExistingApplication(Ljava/lang/String;I)I

    move-result v20

    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_b

    const/16 v21, 0x1

    :cond_6
    :goto_3
    if-eqz p4, :cond_7

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "packageName"

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3ee

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-interface {v0, v3, v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    :cond_7
    :goto_4
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v21, :cond_8

    const/4 v3, -0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->pkgName:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->pkgName:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    :cond_8
    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "package_verifier_enable"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_5
    if-eqz v21, :cond_a

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x1

    sget v12, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has installed application from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_11

    const-string v3, " on SdCard."

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-static/range {v9 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_a
    move/from16 v3, v21

    goto/16 :goto_0

    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_3

    :cond_c
    const/16 v21, 0x0

    if-eqz p4, :cond_7

    :try_start_4
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "pmerrorcode"

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->result:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v3, 0x3ef

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-interface {v0, v3, v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v3

    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v17

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v21, :cond_d

    const/4 v3, -0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_d

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->pkgName:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->pkgName:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    :cond_d
    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "package_verifier_enable"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_e
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    :catchall_1
    move-exception v3

    if-eqz v21, :cond_f

    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_f

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->pkgName:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->pkgName:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    :cond_f
    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "package_verifier_enable"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_10
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_11
    const-string v3, "."

    goto/16 :goto_6
.end method

.method private _setApplicationInstallationDisabled(ILjava/lang/String;Z)V
    .locals 9

    const/4 v0, 0x1

    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, p2, p1, v1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v1, 0x8

    if-nez p3, :cond_2

    :goto_1
    invoke-direct {p0, p2, p1, v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    if-nez p3, :cond_3

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    sget v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has allowed to install application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    const-string v0, "Application"

    const-string/jumbo v1, "setApplicationInstallationDisabled"

    invoke-virtual {v8, v0, v1, p2, p3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetStringAndBooleanTypePolicy pkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disableAppInstallation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_1
    sget v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has disallowed to install application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private _setApplicationUninstallationDisabled(ILjava/lang/String;Z)V
    .locals 5

    const/4 v2, 0x1

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p2, p1, v3, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v3, 0x400

    if-nez p3, :cond_2

    :goto_1
    invoke-direct {p0, p2, p1, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    const-string v2, "Application"

    const-string/jumbo v3, "setApplicationUninstallationDisabled"

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetStringAndBooleanTypePolicy : packageName =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " disableAppUninstallation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private _uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplicationInternal(IILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private _uninstallApplicationInternal(IILjava/lang/String;Z)Z
    .locals 8

    invoke-static {p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v4, 0x0

    if-eqz p4, :cond_1

    const/4 v4, 0x1

    :cond_1
    const/4 v1, 0x0

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_uninstallApplication : userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_uninstallApplication : callingUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v5, p3, p2, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemAppDisableState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getProvidersFromPackage(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$2000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->startCachedAppsForActiveUser(JI)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/application/ApplicationPolicy;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaObservers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/PersonaManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPersonaService()Landroid/os/PersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    return p1
.end method

.method static synthetic access$2902(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    return v3

    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p4, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->arrangePackageList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v0, p3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0
.end method

.method private addUsbDeviceForDefaultAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/UsbDeviceConfig;)Z
    .locals 6

    if-eqz p3, :cond_0

    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDevice: USBD vendorId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", product Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "usbDeviceProductId"

    iget v4, p3, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "usbDeviceVendorId"

    iget v4, p3, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "UsbApplicationPermissionDetailsTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDevice: Failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private arrangePackageList(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p2, :cond_0

    :cond_1
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private buildSetFromString(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private buildStringFromSet(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private changeApplicationIconForUser(Ljava/lang/String;[BI)Z
    .locals 12

    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeApplicationIcon:packageName "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "called from :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    :cond_0
    const-string v9, "ApplicationPolicy"

    const-string v10, "changeApplicationIcon: packageName can\'t be null :"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v5

    :goto_0
    return v9

    :cond_1
    if-nez p2, :cond_4

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v9, p1, p3}, Lcom/android/server/enterprise/application/ApplicationIconDb;->deleteApplicationIcon(Ljava/lang/String;I)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_a

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    if-nez v9, :cond_2

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    :cond_2
    if-nez p2, :cond_5

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "ApplicationPolicy"

    const-string v10, "changeApplicationIcon: package doesn\'t be installed."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v9, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationIconDb;->updateApplicationIcon(Ljava/lang/String;[BI)Z

    move-result v5

    goto :goto_1

    :cond_5
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    const-string/jumbo v10, "package"

    const/4 v11, 0x0

    invoke-static {v10, p1, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, -0x1

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10, p3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_8
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v10, "android"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const-string v9, "android.intent.extra.user_handle"

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_9

    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v1, v9

    const-string v9, "android.intent.extra.changed_component_name"

    invoke-virtual {v3, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "android.intent.extra.UID"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v9

    if-nez v9, :cond_9

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    const-string v10, "com.android.settings"

    invoke-interface {v9, v10, p3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_3
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_a
    move v9, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail getting ActivityManager "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private changeApplicationNameForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeApplicationName:packageName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "called from :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    const-string v5, "ApplicationPolicy"

    const-string v6, "changeApplicationName: packageName can\'t be null"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    :goto_0
    return v3

    :cond_1
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v1, v0, v5

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ApplicationPolicy"

    const-string v6, "changeApplicationName: package doesn\'t be installed."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_6

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v5, p1, p3}, Lcom/android/server/enterprise/application/ApplicationIconDb;->deleteApplicationName(Ljava/lang/String;I)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_5

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    :cond_3
    if-nez p2, :cond_7

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->notifyApplicationChanged(Ljava/lang/String;I)V

    :cond_5
    move v3, v2

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationIconDb;->updateApplicationName(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    goto :goto_1

    :cond_7
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private checkApplicationsStateToBeReconciled(I)V
    .locals 11

    const/4 v1, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "appToReconcile"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "APPLICATION"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "controlState"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "packageName"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "controlState"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v6, "ApplicationPolicy"

    const-string v7, "error in changeUidOnAppReconcileNeeded"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "appToReconcile"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6
.end method

.method private checkComponentsStateToBeReconciled(I)V
    .locals 11

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "componentsToReconcile"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "APPLICATION_COMPONENT"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "component"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "componentControlState"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "component"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "componentControlState"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    const-string v6, "ApplicationPolicy"

    const-string v7, "error in changeUidOnComponentReconcileNeeded"

    invoke-static {v6, v7, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "componentsToReconcile"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6
.end method

.method private checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    monitor-exit v2

    :goto_0
    return v1

    :cond_1
    monitor-exit v2

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cleanCmdline(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    const-string p1, "<invalid>"

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private clearApplicationIconDbForUser(I)V
    .locals 5

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUserManagedByEnterpriseAdmin(I)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->changeApplicationIconForUser(Ljava/lang/String;[BI)Z

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationNameForUid(I)V

    return-void
.end method

.method private clearApplicationNameForUid(I)V
    .locals 7

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->clearChangedApplicationName(I)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    :cond_0
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->notifyApplicationChanged(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z
    .locals 17

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x1

    invoke-static {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    sget-object v14, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_1

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    :cond_1
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v13

    :cond_2
    return v13
.end method

.method private clearApplicationStateList(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private clearUsbDevicesForDefaultAccessAsUser(ILjava/lang/String;)Z
    .locals 11

    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearUsbDevicesforDefaultAccessAsUser for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", userId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "adminUid"

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v8, "packageName"

    invoke-virtual {v3, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UsbApplicationPermissionDetailsTable"

    invoke-virtual {v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    if-lez v2, :cond_0

    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearUsbDevicesforDefaultAccessAsUser for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "has got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " results"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UsbApplicationPermissionDetailsTable"

    invoke-virtual {v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lez v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v8, "ApplicationPolicy"

    const-string v9, "clearUsbDevicesforDefaultAccessAsUser failed!!"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v7
.end method

.method private createAdminMap(J)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "PackageNameInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameInstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PermissionInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SignatureInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SignatureInstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UninstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UninstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameStopBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameStopWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameWidgetBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameWidgetWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameNotificationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameNotificationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RevocationCheck"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OcspCheck"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameClearDataBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameClearDataWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameClearCacheBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameClearCacheWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameUpdateBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameUpdateWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameStartBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameStartWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameDisableClipboardBlackList"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameDisableClipboardWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameFocusMonitoringList"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameFocusMonitoringWhiteList"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createContextForCurrentUser(Ljava/lang/String;I)Landroid/content/Context;
    .locals 8

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, p1, p2, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v5, "ApplicationPolicy"

    const-string v6, "Couldn\'t create user context"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    const-string v5, "ApplicationPolicy"

    const-string v6, "Couldn\'t get user info"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, p2, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v4, "ApplicationPolicy"

    const-string v5, "Couldn\'t create user context"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private createIntent(Landroid/content/ContentValues;)Landroid/content/Intent;
    .locals 10

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    const-string/jumbo v9, "intentAction"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "intentCategory"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "intentData"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "intentType"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->buildSetFromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    if-nez v6, :cond_1

    :goto_1
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    return-object v3

    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v3, v8

    goto :goto_2
.end method

.method private createIntentFilter(Landroid/content/ContentValues;)Landroid/content/IntentFilter;
    .locals 5

    if-eqz p1, :cond_0

    const-string/jumbo v4, "intentAction"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "intentCategory"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "intentScheme"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "intentType"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createIntentFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private createIntentFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 15

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->buildSetFromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->buildSetFromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->buildSetFromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->buildSetFromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v12, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Malformed mimetype "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    return-object v4
.end method

.method private enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    return-object p1
.end method

.method private enforceBackupAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_BACKUP"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    return-object p1
.end method

.method private enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    return-object p1
.end method

.method private enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getActualApplicationComponentStateEnabled(ILandroid/content/ComponentName;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return v6

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v7, p2, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    move v1, v6

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getActualApplicationComponentStateEnabled() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getActualApplicationStateEnabled(ILjava/lang/String;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return v5

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v6, p2, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    move v1, v5

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getActualApplicationStateEnabled() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getAppIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->PkgResCache(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    return-object v1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 8

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAppInfo() : Exception when retrieving package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getApplicationControlState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v7, v4

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_0

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    monitor-exit v8

    :goto_0
    return v7

    :cond_1
    monitor-exit v8

    const/4 v7, 0x0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private getApplicationNotificationModeInternal(I)I
    .locals 10

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v5, 0x2

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    goto :goto_0

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v7

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_0
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    .locals 10

    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;

    invoke-direct {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;-><init>()V

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_0
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_1

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    iget-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v7, "ApplicationPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    if-nez p1, :cond_4

    const-string p1, ""

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1040

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    iput-object p1, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v7, :cond_3

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_3
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_1

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    iget-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v5, p2, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageSizeInfo(Ljava/lang/String;I)Landroid/content/pm/PackageStats;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne p3, v9, :cond_0

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_1
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v9
.end method

.method private getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getApplicationUninstallationEnabledInternal(ILjava/lang/String;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "getApplicationUninstallationEnabled"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v6

    if-nez p2, :cond_0

    :try_start_0
    const-string v7, "ApplicationPolicy"

    const-string/jumbo v8, "getApplicationUninstallationEnabled() : packageName is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    :goto_0
    return v5

    :cond_0
    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v4

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v7, v8

    const v8, 0x186a0

    div-int v0, v7, v8

    if-eq p1, v0, :cond_5

    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  != AdminUserID  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApplicationUninstallationEnabled :  enabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    goto :goto_0

    :cond_5
    :try_start_3
    const-string v7, "UninstallationWhitelist"

    invoke-direct {p0, v2, v7, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v7, "UninstallationBlacklist"

    invoke-direct {p0, v2, v7, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_3

    const-string v5, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getApplicationUninstallationEnabled :  enabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v6

    move v5, v4

    goto/16 :goto_0

    :cond_6
    move v4, v5

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method

.method private getApplicationsListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "packageName"

    aput-object v0, v5, v9

    const-string v0, "applicationInstallationCount"

    aput-object v0, v5, v10

    const/4 v0, 0x2

    const-string v1, "applicationUninstallationCount"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "managedApp"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "install_sourceMDM"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "controlState"

    aput-object v1, v5, v0

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string/jumbo v3, "packageName"

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v6, Landroid/app/enterprise/ManagedAppInfo;

    invoke-direct {v6}, Landroid/app/enterprise/ManagedAppInfo;-><init>()V

    const-string/jumbo v0, "packageName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    const-string v0, "applicationInstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    const-string v0, "applicationUninstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    const-string/jumbo v0, "managedApp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsEnterpriseApp:I

    const-string/jumbo v0, "install_sourceMDM"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsInstallSourceMDM:I

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    iget-object v1, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    :goto_1
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v9

    :goto_2
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v9

    :goto_3
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v9

    goto :goto_1

    :cond_2
    move v0, v10

    goto :goto_2

    :cond_3
    move v0, v10

    goto :goto_3

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/enterprise/ManagedAppInfo;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    :goto_4
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method private final getDebugMemoryInfo(ILandroid/app/ActivityManager;)J
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p1, v1, v3

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getMutuallyExclusiveDevices(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1

    :cond_2
    const-string v3, "ApplicationPolicy"

    const-string/jumbo v4, "getMutuallyExclusiveDevices"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/UsbDeviceConfig;

    if-eqz v2, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMutuallyExclusiveDevices: Adding to mutually exclusive device list , USBD vendorId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", productId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersonaService()Landroid/os/PersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaManager:Landroid/os/PersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getPidList(I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/io/File;

    const-string v6, "/proc/"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPidList: process count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    const/4 v6, 0x1

    aget-object v7, v1, v0

    const-string v8, "[0-9]+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-ne v6, v7, :cond_2

    aget-object v6, v1, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq p1, v6, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 8

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getProvidersFromPackage(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x80

    invoke-virtual {v8, v3, v9, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private getSamsungWidgets(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x80

    invoke-virtual {v5, v2, v8, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private getService()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-object v0
.end method

.method private getSurfaceWidgets(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.samsung.sec.android.SURFACE_WIDGET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x80

    invoke-virtual {v5, v2, v8, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private getUsbDevicesForDefaultAccessAsUser(ILjava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;"
        }
    .end annotation

    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getUsbDevicesforDefaultAccessAsUser for package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", userId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "adminUid"

    invoke-virtual {v5, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v13, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v5, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x2

    new-array v3, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "usbDeviceVendorId"

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "usbDeviceProductId"

    aput-object v14, v3, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "UsbApplicationPermissionDetailsTable"

    invoke-virtual {v13, v14, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v13, "usbDeviceVendorId"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v13, "usbDeviceProductId"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getUsbDevicesforDefaultAccessAsUser for package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". Found a device with vendorId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", product Id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". Adding to the list"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/app/enterprise/UsbDeviceConfig;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/app/enterprise/UsbDeviceConfig;-><init>(II)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v13, "ApplicationPolicy"

    const-string/jumbo v14, "getUsbDevicesforDefaultAccessAsUser failed!!"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v9, 0x0

    :cond_1
    return-object v9
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getWidgetProviderDisabledList(I)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "disabledWidgetComponents"

    invoke-virtual {v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v6
.end method

.method private installExistingApplication(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->installExistingPackageAsUserForMDM(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private isActiveAdmin(Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v0, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isActiveAdmin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z
    .locals 24

    const/4 v13, 0x1

    const-string v20, "ApplicationPolicy"

    const-string/jumbo v21, "isApplicationInstallationEnabled"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string v20, "com.samsung.android.bbc.bbcagent"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string v20, "ApplicationPolicy"

    const-string/jumbo v21, "isApplicationInstallationEnabled disabled as proxy admin exists"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p4, :cond_1

    if-nez v13, :cond_1

    const v20, 0x1040b0a

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_1
    move v14, v13

    :goto_0
    return v14

    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p4, :cond_3

    if-nez v13, :cond_3

    const v20, 0x1040b0a

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_1
    sget-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v20, :cond_4

    sget-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_6

    :cond_4
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v14, v13

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p4, :cond_3

    if-nez v13, :cond_3

    const v20, 0x1040b0a

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_1

    :catchall_0
    move-exception v20

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p4, :cond_5

    if-nez v13, :cond_5

    const v21, 0x1040b0a

    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_5
    throw v20

    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    :try_start_4
    sget-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_7
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v20, v0

    const v22, 0x186a0

    div-int v4, v20, v22

    move/from16 v0, p1

    if-eq v0, v4, :cond_a

    const-string v20, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "isApplicationInstallationEnabled() :  userID :   "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  != AdminUserID  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v9

    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    const-string v20, "ApplicationPolicy"

    const-string v22, "Could not retrieve permissions & signature for package"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p4, :cond_8

    if-nez v13, :cond_8

    const v20, 0x1040b0a

    :try_start_6
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_8
    :goto_3
    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v8

    if-eqz v8, :cond_9

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isNonTrustedAppInstallBlocked(I)Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageSignatureTrusted(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-nez v20, :cond_9

    const/4 v13, 0x0

    const-string v20, "ApplicationPolicy"

    const-string/jumbo v21, "isApplicationInstallationEnabled :  Installation blocked by NonTrustedApp policy"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v20, "ApplicationPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v14, v13

    goto/16 :goto_0

    :cond_a
    :try_start_7
    const-string v20, "PackageNameInstallationWhitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    const-string v20, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "isApplicationInstallationEnabled :  Checking PKG WL - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_7

    const-string v20, "PackageNameInstallationBlacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_c

    const/4 v13, 0x1

    :goto_4
    const-string v20, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "isApplicationInstallationEnabled :  Checking PKG BL - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_d

    const-string v20, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p4, :cond_b

    if-nez v13, :cond_b

    const v20, 0x1040b0a

    :try_start_8
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_b
    monitor-exit v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v14, v13

    goto/16 :goto_0

    :cond_c
    const/4 v13, 0x0

    goto :goto_4

    :cond_d
    :try_start_9
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    const-string v22, "PermissionInstallationBlacklist"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v13

    const-string v20, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "isApplicationInstallationEnabled :  Checking PERM BL - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_f

    const-string v20, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz p4, :cond_e

    if-nez v13, :cond_e

    const v20, 0x1040b0a

    :try_start_a
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_e
    monitor-exit v21
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move v14, v13

    goto/16 :goto_0

    :cond_f
    :try_start_b
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    const-string v22, "SignatureInstallationWhitelist"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    sget-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    const-string v22, "SignatureInstallationWhitelist"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    const-string v22, "*"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_7

    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    const-string v22, "SignatureInstallationBlacklist"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    sget-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    const-string v22, "SignatureInstallationBlacklist"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    const-string v22, "*"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_11

    :cond_10
    const/4 v13, 0x0

    :cond_11
    const-string v20, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "isApplicationInstallationEnabled :  Checking SIG BL - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_7

    const-string v20, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz p4, :cond_12

    if-nez v13, :cond_12

    const v20, 0x1040b0a

    :try_start_c
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_12
    monitor-exit v21

    move v14, v13

    goto/16 :goto_0

    :cond_13
    if-eqz p4, :cond_8

    if-nez v13, :cond_8

    const v20, 0x1040b0a

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto/16 :goto_3

    :catchall_1
    move-exception v20

    monitor-exit v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v20

    :catchall_2
    move-exception v20

    if-eqz p4, :cond_14

    if-nez v13, :cond_14

    const v22, 0x1040b0a

    :try_start_d
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_14
    throw v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method

.method private isApplicationInstalledInternal(Ljava/lang/String;I)Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v1

    :catch_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 16

    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isApplicationStateBlocked userId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " pkgname "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "sec_container_"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "com.sec.knox.containeragent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "com.sec.android.app.knoxlauncher"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    :try_start_0
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "KNOX 1.0 not supported so blocking it: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_1
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-nez v13, :cond_2

    const/4 v2, 0x0

    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    :cond_2
    :try_start_2
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    const/4 v2, 0x0

    if-eqz v12, :cond_9

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_3

    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v13, "*"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_5
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v13, "*"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x1

    :cond_9
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isGlobalAction(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSmsOrMmsTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private isPackageSignatureTrusted(Landroid/content/pm/PackageParser$Package;)Z
    .locals 6

    const/4 v4, 0x1

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isCaCertificateTrusted([BZ)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_0
    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isSmsOrMmsTask(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isUserManagedByEnterpriseAdmin(I)Z
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v4, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    :catch_0
    move-exception v2

    const-string v4, "ApplicationPolicy"

    const-string v5, "Failed talking with enterprise policy service"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isWidgetAllowed(Ljava/lang/String;I)Z
    .locals 2

    const-string v0, "PackageNameWidgetBlacklist"

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadApplicationBlacklistWhitelist()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    sput-object v17, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string/jumbo v19, "packageName"

    aput-object v19, v5, v17

    const/16 v17, 0x1

    const-string v19, "controlState"

    aput-object v19, v5, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string/jumbo v19, "signature"

    aput-object v19, v8, v17

    const/16 v17, 0x1

    const-string v19, "controlState"

    aput-object v19, v8, v17

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v14

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v9

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v17, "PackageNameInstallationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameInstallationWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PermissionInstallationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "SignatureInstallationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "SignatureInstallationWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "UninstallationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "UninstallationWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameStopBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameStopWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameWidgetWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameWidgetBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameNotificationWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameNotificationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "RevocationCheck"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "OcspCheck"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameClearDataBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameClearDataWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameClearCacheBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameClearCacheWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameUpdateBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameUpdateWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameStartBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameStartWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameDisableClipboardBlackList"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameDisableClipboardWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameFocusMonitoringList"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "PackageNameFocusMonitoringWhiteList"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v19, "APPLICATION"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_17

    :cond_0
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_16

    const-string/jumbo v17, "packageName"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v17, "controlState"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v17, 0x4

    and-int/lit8 v19, v10, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const-string v17, "PackageNameInstallationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v17, 0x8

    and-int/lit8 v19, v10, 0x8

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const-string v17, "PackageNameInstallationWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v17, 0x1

    and-int/lit8 v19, v10, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const-string v17, "UninstallationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v17, 0x400

    and-int/lit16 v0, v10, 0x400

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const-string v17, "UninstallationWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v17, 0x10

    and-int/lit8 v19, v10, 0x10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const-string v17, "PackageNameStopBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v17, 0x20

    and-int/lit8 v19, v10, 0x20

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const-string v17, "PackageNameStopWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v17, 0x40

    and-int/lit8 v19, v10, 0x40

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const-string v17, "PackageNameWidgetBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v17, 0x80

    and-int/lit16 v0, v10, 0x80

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const-string v17, "PackageNameWidgetWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    const/16 v17, 0x100

    and-int/lit16 v0, v10, 0x100

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const-string v17, "PackageNameNotificationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    const/16 v17, 0x200

    and-int/lit16 v0, v10, 0x200

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const-string v17, "PackageNameNotificationWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    const/16 v17, 0x800

    and-int/lit16 v0, v10, 0x800

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const-string v17, "RevocationCheck"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    const/16 v17, 0x1000

    and-int/lit16 v0, v10, 0x1000

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const-string v17, "OcspCheck"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    const/16 v17, 0x2000

    and-int/lit16 v0, v10, 0x2000

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const-string v17, "PackageNameClearDataBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d
    const/16 v17, 0x4000

    and-int/lit16 v0, v10, 0x4000

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const-string v17, "PackageNameClearDataWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e
    const v17, 0x8000

    const v19, 0x8000

    and-int v19, v19, v10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const-string v17, "PackageNameClearCacheBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    const/high16 v17, 0x10000

    const/high16 v19, 0x10000

    and-int v19, v19, v10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const-string v17, "PackageNameClearCacheWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_10
    const/high16 v17, 0x20000

    const/high16 v19, 0x20000

    and-int v19, v19, v10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    const-string v17, "PackageNameUpdateBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_11
    const/high16 v17, 0x40000

    const/high16 v19, 0x40000

    and-int v19, v19, v10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    const-string v17, "PackageNameUpdateWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_12
    const/high16 v17, 0x80000

    const/high16 v19, 0x80000

    and-int v19, v19, v10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    const-string v17, "PackageNameStartBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_13
    const/high16 v17, 0x200000

    const/high16 v19, 0x200000

    and-int v19, v19, v10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    const-string v17, "PackageNameDisableClipboardBlackList"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_14
    const/high16 v17, 0x400000

    const/high16 v19, 0x400000

    and-int v19, v19, v10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    const-string v17, "PackageNameDisableClipboardWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_15
    const/high16 v17, 0x800000

    const/high16 v19, 0x800000

    and-int v19, v19, v10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const-string v17, "PackageNameFocusMonitoringList"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    :cond_16
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v19, "APPLICATION_PERMISSION"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "permission"

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v14, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_19

    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_18

    const-string v17, "PermissionInstallationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    const-string/jumbo v19, "permission"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_18
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v19, "APPLICATION_SIGNATURE2"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14, v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_1d

    :cond_1a
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_1c

    const-string/jumbo v17, "signature"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v17, "controlState"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v17, 0x1

    and-int/lit8 v19, v10, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b

    const-string v17, "SignatureInstallationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1b
    const/16 v17, 0x2

    and-int/lit8 v19, v10, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    const-string v17, "SignatureInstallationWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "APPLICATION_MISC"

    const-string v22, "appNotificationMode"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v9, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    :try_start_3
    sget-object v17, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1e
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v17

    goto :goto_4
.end method

.method private manageHomeShorcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 33

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v29

    new-instance v18, Landroid/content/Intent;

    const-string v31, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v31, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    const/16 v31, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v31

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v21

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    move-object/from16 v19, v13

    const/16 v22, 0x1

    :cond_1
    if-eqz v22, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-object/from16 v31, v0

    const/16 v32, 0x80

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    move/from16 v2, v32

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    if-nez v5, :cond_3

    const/16 v22, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2
    :goto_0
    return v22

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    move/from16 v2, v32

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v28

    if-nez v28, :cond_4

    const/16 v22, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v31, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v4

    const/16 v31, 0x80

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v31

    move-object/from16 v0, v31

    iget v15, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v15, :cond_9

    const-string v31, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->addingShortcut:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v31, 0x1

    :try_start_3
    sput-boolean v31, Lcom/android/server/enterprise/application/ApplicationPolicy;->addHomeShorcutRequested:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :cond_5
    const/16 v31, 0x0

    sput-boolean v31, Lcom/android/server/enterprise/application/ApplicationPolicy;->addHomeShorcutRequested:Z

    monitor-exit v32
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_6

    :try_start_4
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    const-string v31, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_6
    const-string v31, "duplicate"

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p3, :cond_a

    new-instance v11, Landroid/content/Intent;

    const-string v31, "android.intent.action.MAIN"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v31, "android.intent.category.HOME"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v31, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v29

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v16

    const/4 v10, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v10, 0x1

    :cond_8
    if-nez v10, :cond_a

    const/16 v22, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_9
    :try_start_5
    const-string v31, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v9

    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v31

    :try_start_7
    monitor-exit v32
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v31
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v31

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v31

    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/UserHandle;

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method private notifyApplicationChanged(Ljava/lang/String;I)V
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-string v8, "ApplicationPolicy"

    const-string/jumbo v9, "notifyApplicationChanged"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    if-eqz p1, :cond_0

    const-string/jumbo v9, "package"

    invoke-static {v9, p1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    :cond_0
    invoke-direct {v3, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v8, "android"

    invoke-static {v7, v8, v10, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/String;

    aput-object p1, v1, v10

    const-string v7, "android.intent.extra.user_handle"

    invoke-virtual {v3, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "android.intent.extra.changed_component_name"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v7, p1, v10, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v7, "android.intent.extra.UID"

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v7

    if-nez v7, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    const-string v8, "com.android.settings"

    invoke-interface {v7, v8, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fail getting ActivityManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putWidgetProviderDisabledList(Ljava/util/Set;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "disabledWidgetComponents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private queryAllDefaultAppIntents(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v3, 0x8

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v0, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "packageName"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "activityName"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "intentAction"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "intentCategory"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "intentScheme"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "intentType"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "intentData"

    aput-object v4, v0, v3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#SelectClause#"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ApplicationDefault"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private readAppMemoryInfo(ZI)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    const-string v23, "ApplicationPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "readAppMemoryInfo start bShowAllProcess:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "activity"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const/4 v14, 0x0

    if-nez p1, :cond_4

    const-string v23, "ApplicationPolicy"

    const-string/jumbo v24, "readAppMemoryInfo : show only installed application"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v14, v0, [I

    const/4 v8, 0x0

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v8

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/Process;->getUidForPid(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    add-int/lit8 v8, v9, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v23, v0

    aput v23, v14, v9

    move v9, v8

    goto :goto_0

    :cond_1
    move v8, v9

    :goto_1
    invoke-virtual {v4, v14}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v12

    if-eqz v12, :cond_2

    if-eqz v14, :cond_2

    const-string v23, "ApplicationPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "memory length : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v12

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "pids length"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v14

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v12, :cond_5

    const/4 v6, 0x0

    :goto_2
    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/proc/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget v24, v14, v6

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/cmdline"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aget-object v11, v12, v6

    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v23

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v18, v0

    new-instance v23, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPidList(I)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v14, v0, [I

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v8

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v8, v9, 0x1

    aput v13, v14, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v8

    goto :goto_3

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    const-string v23, "ApplicationPolicy"

    const-string/jumbo v24, "readAppMemoryInfo end"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v21

    :cond_6
    move v8, v9

    goto/16 :goto_1
.end method

.method private readAppSizeInfo(I)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    const-string v9, "ApplicationPolicy"

    const-string/jumbo v14, "readAppSizeInfo start"

    invoke-static {v9, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-virtual {v9, v14, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    new-instance v7, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v0, p1

    invoke-virtual {v9, v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    iget-boolean v9, v7, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_1

    :cond_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v9, v7, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v9, :cond_0

    iget-object v9, v7, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v9, :cond_0

    iget-object v9, v7, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v14, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v9, v7, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v0, v9, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iget-object v9, v7, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v0, v9, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v16, v0

    add-long v10, v14, v16

    new-instance v9, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    invoke-direct {v9, v6, v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    const-string v9, "ApplicationPolicy"

    const-string/jumbo v14, "readAppSizeInfo end"

    invoke-static {v9, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :catchall_0
    move-exception v9

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v9

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2
.end method

.method private readData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x1f4

    invoke-direct {v1, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    const/4 v2, 0x0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File access error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read error on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    const/4 v2, 0x0

    :cond_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v1, 0x0

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    const/4 v2, 0x0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v1, 0x0

    :cond_4
    :goto_1
    throw v3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private reconcileApplicationsState(I)V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "appToReconcile"

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    array-length v10, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v1, v7, v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "appToReconcile"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v8

    const-string v0, "ApplicationPolicy"

    const-string v2, "error in reconcileApplicationsState"

    invoke-static {v0, v2, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private reconcileComponentsState(I)V
    .locals 11

    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "componentsToReconcile"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationComponentStateEnabled(ILandroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v10, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "componentsToReconcile"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v3

    const-string v8, "ApplicationPolicy"

    const-string v9, "error in reconcileComponentsState"

    invoke-static {v8, v9, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private refreshWidgetStatus(I)V
    .locals 21

    const-string v17, "ApplicationPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "refresh widget status for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledWidgetProviders(I)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    :goto_0
    if-nez v12, :cond_0

    :try_start_2
    const-string v17, "ApplicationPolicy"

    const-string/jumbo v19, "providerInfoList == null"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v18

    :goto_1
    return-void

    :catch_0
    move-exception v7

    const/4 v12, 0x0

    const-string v17, "ApplicationPolicy"

    const-string v19, "Failed to get widget providers"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    :cond_0
    :try_start_3
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSamsungWidgets(I)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSurfaceWidgets(I)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList(I)Ljava/util/Set;

    move-result-object v6

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    invoke-interface {v13, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v6, v13}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 v8, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;I)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-object/from16 v17, v0

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;I)V

    if-eqz v8, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    new-instance v10, Landroid/content/Intent;

    const-string v17, "edm.intent.action.FORCE_LAUNCHER_REFRESH"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method private refreshWidgetStatus(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;I)V

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private registerBootCompletedListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$4;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPackageChangeReceiver()V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$2;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "ApplicationPolicy"

    const-string/jumbo v1, "registerPackageChangeReceiver() : Done"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerUserSwitchedReceiver()V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$3;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v4, v6

    :cond_1
    return v4

    :cond_2
    const/4 v4, 0x0

    if-eqz p4, :cond_5

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v0, p3, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_1
.end method

.method private removeDefaultSmsTask(ILandroid/content/ComponentName;)Z
    .locals 10

    const/4 v4, 0x1

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->SMS_SCHEMES:[Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->toContentValues(ILandroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ContentValues;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ApplicationDefault"

    invoke-virtual {v7, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_1
    and-int/2addr v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    return v4
.end method

.method private retrieveActionFromDb(Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v6, 0x4

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v6, "intentAction"

    aput-object v6, v3, v8

    const/4 v6, 0x1

    const-string/jumbo v7, "intentCategory"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "intentScheme"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "intentType"

    aput-object v7, v3, v6

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "#SelectClause#"

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "packageName"

    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ApplicationDefault"

    invoke-virtual {v6, v7, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createIntentFilter(Landroid/content/ContentValues;)Landroid/content/IntentFilter;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private retrieveDefaultAppFromDb(Landroid/content/Intent;I)Landroid/content/ContentValues;
    .locals 12

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->queryAllDefaultAppIntents(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createIntentFilter(Landroid/content/ContentValues;)Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    const-string v6, "ApplicationPolicy"

    invoke-virtual/range {v0 .. v6}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_1

    :goto_1
    return-object v7

    :cond_1
    packed-switch v9, :pswitch_data_0

    const-string/jumbo v10, "unknown reason"

    :goto_2
    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter did not match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v10, "action"

    goto :goto_2

    :pswitch_1
    const-string v10, "category"

    goto :goto_2

    :pswitch_2
    const-string v10, "data"

    goto :goto_2

    :pswitch_3
    const-string/jumbo v10, "type"

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized setApplicationComponentNameControlState(ILandroid/content/ComponentName;IZ)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_COMPONENT"

    const-string v3, "component"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "componentControlState"

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    const/4 v6, 0x0

    :cond_0
    if-eqz p4, :cond_1

    or-int/2addr v6, p3

    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "componentControlState"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_COMPONENT"

    const-string v3, "component"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_1
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v6, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setApplicationPermissionControlState(Ljava/lang/String;IZ)Z
    .locals 7

    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v4

    if-eqz p3, :cond_0

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PermissionInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "permission"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_PERMISSION"

    invoke-virtual {v3, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    monitor-exit v4

    :goto_0
    return v3

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PermissionInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_PERMISSION"

    const-string/jumbo v6, "permission"

    invoke-virtual {v3, v5, p2, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    .locals 12

    int-to-long v8, p2

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string/jumbo v3, "packageName"

    const-string v5, "controlState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    const/4 v7, 0x0

    :cond_0
    invoke-direct {p0, v8, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v10

    sparse-switch p3, :sswitch_data_0

    :goto_0
    :sswitch_0
    :try_start_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_17

    or-int/2addr v7, p3

    :goto_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "controlState"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string/jumbo v3, "packageName"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0

    :sswitch_1
    if-eqz p4, :cond_1

    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    if-eqz p4, :cond_2

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_3
    if-eqz p4, :cond_3

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UninstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UninstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_4
    if-eqz p4, :cond_4

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UninstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UninstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    if-eqz p4, :cond_5

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStopBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStopBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    if-eqz p4, :cond_6

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStopWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStopWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    if-eqz p4, :cond_7

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    if-eqz p4, :cond_8

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameWidgetBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameWidgetBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    if-eqz p4, :cond_9

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameNotificationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameNotificationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    if-eqz p4, :cond_a

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameNotificationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameNotificationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_b
    if-eqz p4, :cond_b

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "RevocationCheck"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    sget v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin id "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " has enabled certificate revocation check for "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "RevocationCheck"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    sget v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin id "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " has disabled certificate revocation check for "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_c
    if-eqz p4, :cond_c

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    sget v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin id "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " has enabled OCSP for "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "OcspCheck"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    sget v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin id "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " has disabled OCSP for "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "OcspCheck"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_d
    if-eqz p4, :cond_d

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameClearDataBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameClearDataBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_e
    if-eqz p4, :cond_e

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameClearDataWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameClearDataWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_f
    if-eqz p4, :cond_f

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameClearCacheBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameClearCacheBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_10
    if-eqz p4, :cond_10

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameClearCacheWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameClearCacheWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_11
    if-eqz p4, :cond_11

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameUpdateBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameUpdateBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_12
    if-eqz p4, :cond_12

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameUpdateWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameUpdateWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_13
    if-eqz p4, :cond_13

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStartBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStartBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_14
    if-eqz p4, :cond_14

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameDisableClipboardBlackList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameDisableClipboardBlackList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_15
    if-eqz p4, :cond_15

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameDisableClipboardWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameDisableClipboardWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_16
    if-eqz p4, :cond_16

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameFocusMonitoringList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_16
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameFocusMonitoringList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_17
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v7, v0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_5
        0x20 -> :sswitch_6
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x100 -> :sswitch_9
        0x200 -> :sswitch_a
        0x400 -> :sswitch_4
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
        0x20000 -> :sswitch_11
        0x40000 -> :sswitch_12
        0x80000 -> :sswitch_13
        0x100000 -> :sswitch_0
        0x200000 -> :sswitch_14
        0x400000 -> :sswitch_15
        0x800000 -> :sswitch_16
    .end sparse-switch
.end method

.method private setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string/jumbo v3, "signature"

    const-string v5, "controlState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_1
    const/4 v0, -0x1

    if-ne v8, v0, :cond_2

    const/4 v8, 0x0

    :cond_2
    if-nez p4, :cond_3

    and-int v0, v8, p3

    if-eq v0, p3, :cond_3

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    int-to-long v6, p2

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v1

    packed-switch p3, :pswitch_data_0

    :goto_1
    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_6

    or-int/2addr v8, p3

    :goto_2
    const/4 v9, 0x1

    if-lez v8, :cond_7

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "controlState"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string/jumbo v3, "signature"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9

    goto :goto_0

    :pswitch_0
    if-eqz p4, :cond_4

    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-eqz p4, :cond_5

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_6
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v8, v0

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string/jumbo v2, "signature"

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDefaultSmsTask(ILandroid/content/ComponentName;Z)Z
    .locals 18

    const/4 v9, 0x1

    sget-object v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->SMS_SCHEMES:[Ljava/lang/String;

    array-length v8, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v10, v4, v6

    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.SENDTO"

    const-string v15, ""

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v10, v15, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v14, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->toContentValues(ILandroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ContentValues;

    move-result-object v5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v14}, Lcom/android/server/enterprise/application/ApplicationPolicy;->toContentValues(ILandroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ContentValues;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ApplicationDefault"

    invoke-virtual {v14, v15, v5, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v14

    if-lez v14, :cond_0

    const/4 v14, 0x1

    :goto_1
    and-int/2addr v9, v14

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->toContentValues(ILandroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ApplicationDefault"

    invoke-virtual {v14, v15, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    const/4 v14, 0x1

    :goto_3
    and-int/2addr v9, v14

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    if-eqz v9, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "sms_default_application"

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    and-int/2addr v9, v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_4
    return v9

    :catchall_0
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
.end method

.method private setInstallSourceMDM(ILjava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x1

    if-ne p3, v6, :cond_0

    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "install_sourceMDM"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string/jumbo v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private setManagedApp(ILjava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x1

    if-ne p3, v6, :cond_0

    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "managedApp"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string/jumbo v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private startCachedAppsForActiveUser(JI)V
    .locals 15

    const-string v12, "ApplicationPolicy"

    const-string/jumbo v13, "startCachedAppsForActiveUser"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_2

    const/4 v11, 0x0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v11, :cond_0

    const-wide/16 v12, 0x1f4

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v11, 0x0

    :cond_0
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/16 v12, 0x2f

    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_1

    move-object v9, v4

    :goto_2
    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getContainerIdFromLUID(J)I

    move-result v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, p3

    invoke-direct {v6, v0, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v6, v9, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->startApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v12, "ApplicationPolicy"

    const-string v13, "InterruptedException while sleeping"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v4, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method private storeAppInfoForLateStart(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object v1, p3

    if-eqz p4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    :cond_1
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private toContentValues(ILandroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ContentValues;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->toContentValues(ILandroid/content/Intent;Landroid/content/ComponentName;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private toContentValues(ILandroid/content/Intent;Landroid/content/ComponentName;Z)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v1, "packageName"

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "activityName"

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "intentAction"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "intentCategory"

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->buildStringFromSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "intentScheme"

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "intentType"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "intentData"

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method private updateCount(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string/jumbo v3, "packageName"

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string/jumbo v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    return-void

    :cond_0
    add-int/lit8 v0, v6, 0x1

    goto :goto_0
.end method

.method private updateSystemAppDisableState(Ljava/lang/String;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    if-eqz v9, :cond_0

    invoke-virtual {v9, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    :cond_0
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addAppNotificationBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppNotificationWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppPackageNameToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const-string v0, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppPackageNameToBlackList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v2, 0x4

    invoke-direct {p0, p2, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x5

    sget v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " has prevented installation of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public addAppPackageNameToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "ApplicationPolicy"

    const-string v1, "addAppPackageNameToWhiteList"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public addAppPermissionToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public addAppSignatureToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p2, v0, v1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public addAppSignatureToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-eqz p2, :cond_0

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addHomeShortcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->manageHomeShorcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addPackageToInstallWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 9

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v6, "ApplicationPolicy"

    const-string v7, "addPackageToInstallList :  pkgName: "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, "ApplicationPolicy"

    const-string v7, "addPackageToInstallList() Package name is invalid"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    invoke-virtual {v2, p2, v1}, Landroid/os/PersonaManager;->addPackageToInstallWhiteList(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPackageToInstallList() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public addPackagesToClearCacheBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearCacheBlacklist"

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearCacheWhitelist"

    const/high16 v1, 0x10000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearDataBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearDataBlacklist"

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearDataWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearDataWhitelist"

    const/16 v1, 0x4000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToDisableClipboardBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameDisableClipboardBlackList"

    const/high16 v1, 0x200000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToDisableClipboardWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameDisableClipboardWhitelist"

    const/high16 v1, 0x400000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToDisableUpdateBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "PackageNameUpdateBlacklist"

    const/high16 v2, 0x20000

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToDisableUpdateWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "PackageNameUpdateWhitelist"

    const/high16 v2, 0x40000

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToFocusMonitoringList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameFocusMonitoringList"

    const/high16 v1, 0x800000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToForceStopBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToForceStopWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToPreventStartBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v0, p2

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->arrangePackageList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p2

    const-string v6, "PackageNameStartBlacklist"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/high16 v6, 0x80000

    invoke-direct {p0, v4, v2, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->stopApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public addPackagesToWidgetBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    return v0
.end method

.method public addPackagesToWidgetWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    return v0
.end method

.method public addUsbDevicesForDefaultAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addUsbDevicesforDefaultAccess for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getUsbDevicesForDefaultAccessAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_4

    const-string v7, "ApplicationPolicy"

    const-string v8, "addUsbDevicesforDefaultAccess: Storeddevices exist already. So store only the ones which are mutually exclusive among both lists"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getMutuallyExclusiveDevices(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/UsbDeviceConfig;

    iget v7, v4, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    if-ltz v7, :cond_3

    iget v7, v4, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    if-gez v7, :cond_2

    :cond_3
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addUsbDeviceforDefaultAccess: failure stored USBD name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v7, "ApplicationPolicy"

    const-string v8, "addUsbDevicesforDefaultAccess: Storeddevices doesnt exist"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p3

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/UsbDeviceConfig;

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addUsbDeviceForDefaultAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/UsbDeviceConfig;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addUsbDeviceforDefaultAccess: Successfully stored USBD name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    move v6, v2

    goto/16 :goto_0
.end method

.method public backupApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->backupEncryptedApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public backupEncryptedApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 25

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceBackupAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, -0x2

    :goto_0
    return v4

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, -0x3

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v19, Ljava/lang/SecurityManager;

    invoke-direct/range {v19 .. v19}, Ljava/lang/SecurityManager;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v20

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v4, :cond_4

    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v4, :cond_4

    const-string v4, "ApplicationPolicy"

    const-string/jumbo v5, "failed to get backup manager service"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v4, -0x2

    const/4 v5, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    new-instance v16, Landroid/content/Intent;

    const-string v5, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v24

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    :catch_0
    move-exception v15

    const-string v4, "ApplicationPolicy"

    const-string v5, "can\'t write to file descriptor"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x2

    goto/16 :goto_0

    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v5, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    move/from16 v2, v22

    invoke-interface {v4, v5, v0, v1, v2}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;Ljava/lang/String;I)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, -0x3

    const/4 v5, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    new-instance v16, Landroid/content/Intent;

    const-string v5, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x1

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    const/4 v4, -0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object/from16 v5, p3

    invoke-interface/range {v4 .. v13}, Landroid/app/backup/IBackupManager;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    const-wide/32 v6, 0x493e0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v4, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    new-instance v16, Landroid/content/Intent;

    const-string v4, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    monitor-exit v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v14

    :try_start_a
    const-string v4, "ApplicationPolicy"

    const-string v5, "backupApplicationData interrupted"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v4, -0x2

    const/4 v5, 0x0

    :try_start_b
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    new-instance v16, Landroid/content/Intent;

    const-string v5, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v24
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    :catch_2
    move-exception v15

    :try_start_c
    const-string v4, "ApplicationPolicy"

    const-string v5, "Failed to get backup manager service"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v4, -0x2

    const/4 v5, 0x0

    :try_start_d
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    new-instance v16, Landroid/content/Intent;

    const-string v5, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v24

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    new-instance v16, Landroid/content/Intent;

    const-string v5, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method

.method public changeApplicationIcon(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[B)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->changeApplicationIconForUser(Ljava/lang/String;[BI)Z

    move-result v1

    return v1
.end method

.method public changeApplicationName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->changeApplicationNameForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method checkKNOXSystemStatus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clearDisableClipboardBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2

    const-string v0, "PackageNameDisableClipboardBlackList"

    const/high16 v1, 0x200000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearDisableClipboardWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2

    const-string v0, "PackageNameDisableClipboardWhitelist"

    const/high16 v1, 0x400000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearDisableUpdateBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "PackageNameUpdateBlacklist"

    const/high16 v2, 0x20000

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearDisableUpdateWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "PackageNameUpdateWhitelist"

    const/high16 v2, 0x40000

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearFocusMonitoringList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2

    const-string v0, "PackageNameFocusMonitoringList"

    const/high16 v1, 0x800000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearPreventStartBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2

    const-string v0, "PackageNameStartBlacklist"

    const/high16 v1, 0x80000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearUsbDevicesForDefaultAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearDevices for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearUsbDevicesForDefaultAccessAsUser(ILjava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createIntentFilter(Landroid/content/Intent;)Landroid/content/IntentFilter;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->buildStringFromSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createIntentFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public deleteHomeShortcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->manageHomeShorcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    iget v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v1, p2, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    :cond_1
    const/4 v3, 0x4

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v3, 0x8

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    invoke-direct {p0, p2, v0, v4, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v3, 0x400

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v3, 0x10

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v3, 0x20

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v3, 0x40

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v3, 0x80

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v3, 0x100

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v3, 0x200

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    const/16 v3, 0x800

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v3, 0x1000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v3, 0x2000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v3, 0x4000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const v3, 0x8000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/high16 v3, 0x10000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/high16 v3, 0x20000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/high16 v3, 0x40000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/high16 v3, 0x80000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/high16 v3, 0x200000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/high16 v3, 0x400000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/high16 v3, 0x800000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION"

    const-string/jumbo v4, "packageName"

    invoke-virtual {v2, v3, v0, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public deletePackageFromAppUsageDb(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/application/ApplicationUsage;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableOcspCheck(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v2, 0x1000

    invoke-direct {p0, p2, v1, v2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public enableRevocationCheck(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v2, 0x800

    invoke-direct {p0, p2, v1, v2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public getAddHomeShorcutRequested()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->addHomeShorcutRequested:Z

    return v0
.end method

.method public getAllAppLastUsage(Landroid/app/enterprise/ContextInfo;)[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAllAppLastUsage(I)[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v1

    return-object v1
.end method

.method public getAllDefaultApplications(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/DefaultAppConfiguration;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAllDefaultApplicationsInternal(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAllDefaultApplicationsInternal(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/DefaultAppConfiguration;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->queryAllDefaultAppIntents(I)Ljava/util/List;

    move-result-object v7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_0

    const-string/jumbo v8, "packageName"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "activityName"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createIntent(Landroid/content/ContentValues;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/app/enterprise/DefaultAppConfiguration;

    invoke-direct {v8, v5, v1}, Landroid/app/enterprise/DefaultAppConfiguration;-><init>(Landroid/content/Intent;Landroid/content/ComponentName;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public getAllWidgets(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/Map;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v29

    const/16 v24, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    :goto_0
    if-nez v24, :cond_0

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p2, :cond_2

    const-string v8, "com.sec.android.app.launcher"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const-string v10, "com.sec.android.app.launcher.settings/"

    const-string/jumbo v12, "favorites"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "appWidgetId"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "intent"

    aput-object v9, v6, v8

    const-string/jumbo v7, "itemType = 900 OR itemType = 901 OR itemType = 1000 OR itemType = 1001 OR itemType = 1002 OR itemType = 7"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v9, "android"

    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v29

    invoke-static {v8, v9, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v28

    if-nez v28, :cond_3

    :cond_2
    :goto_1
    return-object v24

    :catch_0
    move-exception v17

    const-string v8, "ApplicationPolicy"

    const-string v9, "error in getAllWidgets"

    move-object/from16 v0, v17

    invoke-static {v8, v9, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-nez v15, :cond_4

    const-string v11, "com.sec.android.app.launcher.providers.LauncherProvider/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    :cond_4
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_5
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_b

    new-instance v22, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v22 .. v22}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    const/4 v8, 0x0

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    const/4 v8, 0x1

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v25

    const/16 v21, 0x0

    const/4 v8, 0x0

    :try_start_2
    move-object/from16 v0, v25

    invoke-static {v0, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v21

    :try_start_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v31, 0x3

    move/from16 v0, v31

    move/from16 v1, v29

    invoke-static {v8, v9, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v16

    if-eqz v16, :cond_5

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v0, v22

    iput-object v8, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v26

    const/16 v23, 0x0

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "plug_in_name"

    const-string/jumbo v31, "string"

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v8, v9, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v31, 0x80

    move/from16 v0, v31

    invoke-virtual {v8, v9, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    if-eqz v23, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    move-object/from16 v0, v22

    iput-object v8, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v19, 0x0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v14, :cond_6

    iget-object v8, v14, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v8, :cond_6

    iget-object v8, v14, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v17

    goto/16 :goto_2

    :cond_7
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v8

    goto :goto_3

    :catch_2
    move-exception v20

    :try_start_7
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :catch_3
    move-exception v17

    :try_start_8
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "getAllWidgets Ex: "

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_4
    move-exception v20

    :try_start_9
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v8

    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v8

    :catchall_1
    move-exception v8

    :try_start_a
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_9
    if-nez v19, :cond_a

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    :cond_b
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method public getAppInstallToSdCard(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_GENERAL"

    const-string/jumbo v6, "installToSdCard"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v1, v2

    :cond_1
    return v1
.end method

.method public getAppInstallationMode(Landroid/app/enterprise/ContextInfo;)I
    .locals 10

    const/4 v6, 0x1

    const-string v5, "ApplicationPolicy"

    const-string/jumbo v7, "getAppInstallationMode :  mode start: "

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v1, 0x1

    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    monitor-exit v7

    move v5, v6

    :goto_0
    return v5

    :cond_1
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v5, v8

    const v8, 0x186a0

    div-int v0, v5, v8

    if-eq v4, v0, :cond_3

    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAppInstallationMode() :  userID :   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  != AdminUserID  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "PackageNameInstallationBlacklist"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    const-string v8, ".*"

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "PackageNameInstallationWhitelist"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    const-string v8, ".*"

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v1, 0x0

    :cond_4
    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAppInstallationMode :  mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    move v5, v6

    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public getAppNotificationBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameNotificationBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppNotificationWhiteList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameNotificationWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageNamesAllBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    const-string v8, "ApplicationPolicy"

    const-string/jumbo v9, "getAppPackageNamesAllBlackLists "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v3, 0x0

    monitor-exit v9

    :goto_0
    return-object v3

    :cond_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    if-eq v7, v0, :cond_3

    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_3
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "PackageNameInstallationBlacklist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "PackageNameInstallationBlacklist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getAppPackageNamesAllWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    const-string v8, "ApplicationPolicy"

    const-string/jumbo v9, "getAppPackageNamesAllWhiteLists "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v7, 0x0

    monitor-exit v9

    :goto_0
    return-object v7

    :cond_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    if-eq v6, v0, :cond_3

    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_3
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "PackageNameInstallationWhitelist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "PackageNameInstallationWhitelist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getAppPermissionsAllBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    const-string v8, "ApplicationPolicy"

    const-string/jumbo v9, "getAppPermissionAllBlackLists:"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v3, 0x0

    monitor-exit v9

    :goto_0
    return-object v3

    :cond_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    if-eq v7, v0, :cond_3

    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAppPermissionsAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_3
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "PermissionInstallationBlacklist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "PermissionInstallationBlacklist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getAppPermissionsBlackList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 8

    const-string v3, "ApplicationPolicy"

    const-string/jumbo v4, "getAppPermissionsBlackList:"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "APPLICATION_PERMISSION"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "permission"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "permission"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAppSignatureBlackList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const-string v3, "ApplicationPolicy"

    const-string/jumbo v5, "getAppSignatureBlackList()"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v4

    :goto_0
    return-object v3

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v1, 0x0

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "SignatureInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v3, v4

    goto :goto_0
.end method

.method public getAppSignaturesAllBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    const-string v8, "ApplicationPolicy"

    const-string/jumbo v9, "getAppSignatureAllBlackLists:"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v3, 0x0

    monitor-exit v9

    :goto_0
    return-object v3

    :cond_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    if-eq v7, v0, :cond_3

    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_3
    :try_start_1
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAppSignaturesAllBlackLists() :  uid  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "SignatureInstallationBlacklist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "SignatureInstallationBlacklist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getAppSignaturesAllWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    const-string v8, "ApplicationPolicy"

    const-string/jumbo v9, "getAppSignaturesAllWhiteLists:"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v7, 0x0

    monitor-exit v9

    :goto_0
    return-object v7

    :cond_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    if-eq v6, v0, :cond_3

    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_3
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "SignatureInstallationWhitelist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "SignatureInstallationWhitelist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getAppSignaturesWhiteList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const-string v3, "ApplicationPolicy"

    const-string/jumbo v5, "getAppSignaturesWhiteList:"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    monitor-exit v5

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v1, 0x0

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v6, "SignatureInstallationWhitelist"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    goto :goto_0
.end method

.method public getApplicationCacheSize(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-wide/16 v4, -0x1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v3, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v4, v2, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    const-string v3, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApplicationCacheSize() : Exception when retrieving package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationCodeSize(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-wide/16 v4, -0x1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v4, v2, Landroid/content/pm/PackageStats;->codeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationComponentState(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Landroid/content/ComponentName;I)Z

    move-result v1

    return v1
.end method

.method public getApplicationComponentState(Landroid/content/ComponentName;I)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_1

    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getApplicationComponentState : ComponentName is null , userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getApplicationComponentState : pkg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " userId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v9, "containerID"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v9, "userID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "component"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-array v6, v12, [Ljava/lang/String;

    const-string v9, "componentControlState"

    aput-object v9, v6, v8

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "APPLICATION_COMPONENT"

    invoke-virtual {v8, v9, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_2

    const-string v8, "componentControlState"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getApplicationComponentState : state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-ne v12, v8, :cond_2

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public getApplicationCpuUsage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 10

    const-wide/16 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    const-wide/16 v6, -0x1

    :cond_1
    :goto_0
    return-wide v6

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationRunningInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_1

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    invoke-virtual {v8}, Lcom/android/server/enterprise/application/ProcessStats;->update()V

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    invoke-virtual {v8}, Lcom/android/server/enterprise/application/ProcessStats;->countWorkingStats()I

    move-result v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/application/ProcessStats;->getWorkingStats(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;

    move-result-object v3

    iget v8, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    if-ne v8, v2, :cond_5

    :cond_3
    if-eqz v3, :cond_1

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    invoke-virtual {v8}, Lcom/android/server/enterprise/application/ProcessStats;->getLastUserTime()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    invoke-virtual {v9}, Lcom/android/server/enterprise/application/ProcessStats;->getLastSystemTime()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    invoke-virtual {v9}, Lcom/android/server/enterprise/application/ProcessStats;->getLastIrqTime()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    invoke-virtual {v9}, Lcom/android/server/enterprise/application/ProcessStats;->getLastIdleTime()I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v4, v8

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    const-wide/16 v4, 0x1

    :cond_4
    iget v6, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v7, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x64

    int-to-long v6, v6

    div-long/2addr v6, v4

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getApplicationDataSize(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-wide/16 v4, -0x1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v3, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v4, v2, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    const-string v3, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApplicationCacheSize() : Exception when retrieving package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationIconFromDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[B
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDbAsUser(Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1
.end method

.method public getApplicationIconFromDbAsUser(Ljava/lang/String;I)[B
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationIcon(Ljava/lang/String;I)[B

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getApplicationInstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v1

    return v1
.end method

.method public getApplicationMemoryUsage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 16

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-wide/16 v10, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-wide/16 v12, -0x1

    :goto_0
    return-wide v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v12}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    const-string v9, "ApplicationPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getApplicationMemoryUsage() : apkID =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v9, v3, :cond_1

    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDebugMemoryInfo(ILandroid/app/ActivityManager;)J

    move-result-wide v12

    iget-object v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v9, v9

    int-to-long v14, v9

    div-long/2addr v12, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v10, v12

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v10, -0x1

    :cond_2
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-ltz v9, :cond_4

    move-wide v12, v10

    goto :goto_0

    :cond_3
    const-wide/16 v10, -0x1

    goto :goto_2

    :cond_4
    const-wide/16 v12, -0x1

    goto :goto_0
.end method

.method public getApplicationName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "ApplicationPolicy"

    const-string/jumbo v2, "getApplicationNameFromDb : package name is null! "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppName for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getApplicationNotificationMode(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 3

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ApplicationPolicy"

    const-string v2, " getApplicationNotificationMode calls from Profile return default value"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationModeInternal(I)I

    move-result v1

    goto :goto_0
.end method

.method public getApplicationNotificationModeAsUser(I)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationModeInternal(I)I

    move-result v0

    return v0
.end method

.method public getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const v1, 0x1040497

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    return v0
.end method

.method public getApplicationStateEnabledAsUser(Ljava/lang/String;I)Z
    .locals 12

    const/4 v8, 0x0

    const/4 v4, 0x1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getApplicationStateEnabled : pkg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " userId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v9, "containerID"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v9, "userID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v9, "packageName"

    invoke-virtual {v2, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const-string v9, "controlState"

    aput-object v9, v6, v8

    const-string/jumbo v9, "sec_container_"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "com.sec.knox.containeragent"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "com.sec.android.app.knoxlauncher"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkKNOXSystemStatus()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KNOX system is not ready, blocked : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v8

    :cond_0
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KNOX system is ready, start : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "APPLICATION"

    invoke-virtual {v8, v9, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_2

    const-string v8, "controlState"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getApplicationStateEnabled : state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-ne v8, v9, :cond_2

    const/4 v4, 0x0

    :cond_3
    :goto_2
    move v8, v4

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z
    .locals 2

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const v1, 0x1040497

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    return v0
.end method

.method public getApplicationStateList(Landroid/app/enterprise/ContextInfo;Z)[Ljava/lang/String;
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getApplicationStateList:state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    aget-object v4, v0, v1

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v3

    if-ne v3, p2, :cond_1

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    goto :goto_0
.end method

.method public getApplicationTotalSize(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-wide/16 v4, -0x1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v8, v2, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v6, v8

    iget-wide v8, v2, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long v4, v6, v8

    :cond_0
    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationUid(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationUninstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabledInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;I)Z
    .locals 8

    const/4 v5, 0x0

    if-gez p2, :cond_3

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabledInternal(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabledInternal(ILjava/lang/String;)Z

    move-result v5

    goto :goto_0
.end method

.method public getApplicationUninstallationMode(Landroid/app/enterprise/ContextInfo;)I
    .locals 10

    const/4 v6, 0x1

    const-string v5, "ApplicationPolicy"

    const-string/jumbo v7, "getApplicationUninstallationMode"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v3, 0x1

    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    monitor-exit v7

    move v5, v6

    :goto_0
    return v5

    :cond_1
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v5, v8

    const v8, 0x186a0

    div-int v0, v5, v8

    if-eq v4, v0, :cond_3

    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAppInstallationMode() :  userID :   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  != AdminUserID  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "UninstallationBlacklist"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    const-string v8, ".*"

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    :cond_4
    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAppInstallationMode :  mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_5

    move v5, v6

    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public getApplicationVersion(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationVersionCode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v2, -0x1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationsList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationsListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAvgNoAppUsagePerMonth(Landroid/app/enterprise/ContextInfo;)[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAvgNoAppUsagePerMonth(I)[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultApplication(Landroid/app/enterprise/ContextInfo;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isGlobalAction(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :goto_0
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_0
.end method

.method public getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;
    .locals 5

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->retrieveDefaultAppFromDb(Landroid/content/Intent;I)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "packageName"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "activityName"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDisabledPackages(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "APPLICATION"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "packageName"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "controlState"

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, p1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "packageName"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "controlState"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v2, v3

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_1
    :try_start_2
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disabled Package List "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v3

    :cond_2
    return-object v2

    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public getHomeShortcuts(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v8, "com.sec.android.app.launcher.settings/"

    const-string/jumbo v6, "zero"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "marine"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "noble"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "philippeltezm"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "getHomeShortcuts: Next home laucher. Auth is changed..."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "com.sec.android.app.launcher.providers.LauncherProvider/"

    :cond_1
    const-string/jumbo v13, "favorites"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v11, "itemType"

    const-string/jumbo v12, "title"

    const-string/jumbo v10, "intent"

    const-string v9, "container"

    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v12, v4, v6

    const/4 v6, 0x1

    aput-object v10, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "zero"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "marine"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "noble"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "philippeltezm"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "getHomeShortcuts: Next home laucher1.."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    const/16 v16, 0x0

    if-eqz p2, :cond_5

    if-eqz p2, :cond_4

    const-string v6, "com.sec.android.app.launcher"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-eqz p2, :cond_f

    const-string v6, "com.sec.android.kiosk"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v19

    if-nez p2, :cond_6

    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    if-eqz p2, :cond_8

    const-string v6, "com.sec.android.kiosk"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    const-string v8, "com.sec.android.kiosk.settings/"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "getHomeShortcuts: FOR KIOSK  "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v25

    invoke-static {v6, v7, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v24

    if-nez v24, :cond_9

    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "getHomeShortcuts: userContext null! "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    :goto_0
    return-object v20

    :cond_9
    if-nez p3, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!=-101"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "zero"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "marine"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "noble"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "getHomeShortcuts: Next home laucher2.."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_11

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_11

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    :cond_c
    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    :try_start_1
    move-object/from16 v0, v21

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    :goto_1
    if-eqz v14, :cond_d

    :try_start_2
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-nez v6, :cond_c

    :goto_2
    if-eqz v17, :cond_e

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_e
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_f
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "getHomeShortcuts: pkgName : "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v28, "include hot seat: "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v28, " return..."

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v18

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v17, :cond_10

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_10
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_11
    :try_start_4
    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "getHomeShortcuts: get cursor failed. "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public getInstalledApplicationsIDList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Landroid/app/enterprise/ContextInfo;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInstalledApplicationsIDListExtended(Landroid/app/enterprise/ContextInfo;Z)[Ljava/lang/String;
    .locals 11

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getInstalledApplicationsIDListExtended : userid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-eqz p2, :cond_0

    const/16 v8, 0x2000

    :goto_0
    invoke-virtual {v9, v8, v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    add-int/lit8 v4, v5, 0x1

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v8, v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v6
.end method

.method public getInstalledManagedApplicationsList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 17

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x2

    :try_start_0
    new-array v5, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "packageName"

    aput-object v16, v5, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "managedApp"

    aput-object v16, v5, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "APPLICATION"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_3

    const-string/jumbo v15, "managedApp"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    and-int/lit8 v16, v14, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v11, 0x1

    :goto_1
    const/4 v15, 0x1

    if-ne v11, v15, :cond_0

    const-string/jumbo v15, "packageName"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    move-object v12, v13

    :goto_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    check-cast v15, [Ljava/lang/String;

    :goto_4
    return-object v15

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v12, v13

    :cond_4
    if-eqz v12, :cond_1

    :try_start_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v15, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Landroid/app/enterprise/ContextInfo;Z)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    array-length v15, v7

    if-lez v15, :cond_5

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    :cond_5
    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v10, v15, :cond_9

    if-eqz v8, :cond_7

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v9

    move-object v2, v3

    goto :goto_2

    :cond_8
    const/4 v15, 0x0

    goto :goto_4

    :catch_2
    move-exception v9

    goto :goto_2

    :cond_9
    move-object v2, v3

    goto :goto_3
.end method

.method public getMySinglePackageName(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "MySinglePackageName"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMySinglePackageName : pkgName =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNetworkStats(Landroid/app/enterprise/ContextInfo;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getAppLevelDataUsage(I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getNetworkStats(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getNetworkStats(Landroid/app/enterprise/ContextInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearCacheBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameClearCacheBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameClearCacheWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearDataBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameClearDataBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearDataWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameClearDataWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromDisableClipboardBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameDisableClipboardBlackList"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromDisableClipboardWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameDisableClipboardWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromDisableUpdateBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v1, "PackageNameUpdateBlacklist"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromDisableUpdateWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v1, "PackageNameUpdateWhitelist"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromFocusMonitoringList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameFocusMonitoringList"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameStopBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameStopWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromInstallWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    invoke-virtual {v2, v1}, Landroid/os/PersonaManager;->getPackagesFromInstallWhiteList(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addPackageToInstallList() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPackagesFromPreventStartBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameStartBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWidgetBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameWidgetBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWidgetWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameWidgetWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopNCPUUsageApp(Landroid/app/enterprise/ContextInfo;IZ)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/enterprise/application/ProcessStats;->update()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/enterprise/application/ProcessStats;->countWorkingStats()I

    move-result v6

    if-lez p2, :cond_0

    move/from16 v0, p2

    if-ge v6, v0, :cond_1

    :cond_0
    move/from16 p2, v6

    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/enterprise/application/ProcessStats;->getLastUserTime()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/enterprise/application/ProcessStats;->getLastSystemTime()I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/enterprise/application/ProcessStats;->getLastIrqTime()I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/enterprise/application/ProcessStats;->getLastIdleTime()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v22, 0x0

    cmp-long v21, v16, v22

    if-nez v21, :cond_2

    const-wide/16 v16, 0x1

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "activity"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v20

    const/4 v8, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v8, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/application/ProcessStats;->getWorkingStats(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;

    move-result-object v13

    if-eqz v13, :cond_5

    if-nez p3, :cond_4

    iget v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    :cond_4
    const/16 v18, -0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    iget-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    :goto_2
    iget v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/os/Process;->getUidForPid(I)I

    move-result v19

    const-string v21, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getTopNCPUUsageApp() : uidFromName="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " uidFromPid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    new-instance v10, Landroid/app/enterprise/AppInfo;

    invoke-direct {v10}, Landroid/app/enterprise/AppInfo;-><init>()V

    iget-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v10, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    iget v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    move/from16 v21, v0

    iget v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    move/from16 v22, v0

    add-int v21, v21, v22

    mul-int/lit8 v21, v21, 0x64

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    div-long v22, v22, v16

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v10, Landroid/app/enterprise/AppInfo;->mUsage:D

    const-string v21, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getTopNCPUUsageApp() : mPackageName="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mUsage="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-wide v0, v10, Landroid/app/enterprise/AppInfo;->mUsage:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v7

    const-string v21, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getTopNCPUUsageApp() : cannot getPackageUid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_7

    :goto_3
    return-object v12

    :cond_7
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public getTopNDataUsageApp(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "getTopNDataUsageApp start"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readAppSizeInfo(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-lez p2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, p2, :cond_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1800(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1900(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v6

    long-to-double v6, v6

    iput-wide v6, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "getTopNDataUsageApp end"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public getTopNMemoryUsageApp(Landroid/app/enterprise/ContextInfo;IZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "getTopNMemoryUsageApp start"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    invoke-direct {p0, p3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readAppMemoryInfo(ZI)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-lez p2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, p2, :cond_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1800(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1900(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v6

    long-to-double v6, v6

    iput-wide v6, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1800(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " memory usage:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1900(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "getTopNMemoryUsageApp end"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public getUsbDevicesForDefaultAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDevices for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getUsbDevicesForDefaultAccessAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installAppWithCallback(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v0

    return v0
.end method

.method public installApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v0

    return v0
.end method

.method public installApplicationBySystem(ILjava/lang/String;Z)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v0

    return v0
.end method

.method public installExistingApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 16

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installExistingApplication(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    const/4 v2, 0x1

    if-ne v11, v2, :cond_2

    const/4 v12, 0x1

    :goto_0
    if-eqz v12, :cond_0

    const/4 v2, -0x1

    if-eq v9, v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    :cond_0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v12, :cond_1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin id "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " has installed application "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    move v2, v12

    :goto_1
    return v2

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v12, :cond_3

    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v12, :cond_4

    const/4 v3, -0x1

    if-eq v9, v3, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    :cond_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z
    .locals 2

    const-string v0, "PackageNameClearCacheBlacklist"

    const-string v1, "PackageNameClearCacheWhitelist"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ApplicationPolicy"

    const-string/jumbo v1, "isApplicationClearCacheDisabled: matches"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const v0, 0x1040afa

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z
    .locals 2

    const-string v0, "PackageNameClearDataBlacklist"

    const-string v1, "PackageNameClearDataWhitelist"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ApplicationPolicy"

    const-string/jumbo v1, "isApplicationClearDataDisabled: matches"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const v0, 0x1040af9

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationFocusMonitoredAsUser(Ljava/lang/String;I)Z
    .locals 2

    const-string v0, "PackageNameFocusMonitoringList"

    const-string v1, "PackageNameFocusMonitoringWhiteList"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 15

    const-string v12, "PackageNameStopBlacklist"

    const-string v13, "PackageNameStopWhitelist"

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {p0, v12, v13, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "ApplicationPolicy"

    const-string/jumbo v13, "isApplicationForceStopDisabled: matches"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v9, p2

    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v12, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v8

    if-eq v8, v5, :cond_1

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    new-instance v7, Landroid/content/Intent;

    const-string v12, "edm.intent.application.action.prevent.stop"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "application_package_name"

    move-object/from16 v0, p1

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "user_id"

    move/from16 v0, p2

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_2

    const-string v12, "error_type"

    move-object/from16 v0, p3

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p5, :cond_3

    const-string v12, "error_reason"

    move-object/from16 v0, p5

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz p4, :cond_4

    const-string v12, "error_class"

    move-object/from16 v0, p4

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v12, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sending broadcast to user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " containing: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (packageName), "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (userId)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string v14, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v12, v7, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v12, 0x1

    :goto_0
    return v12

    :cond_5
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .locals 3

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v2

    return v2
.end method

.method public isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez p3, :cond_3

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p1, p2, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v7

    if-nez v7, :cond_1

    :goto_0
    return v5

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3, p1, p2, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v5

    goto :goto_0
.end method

.method public isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isApplicationInstalled : pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isApplicationInstalled : pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationInstalled(Ljava/lang/String;I)Z
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isApplicationInstalled : pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isApplicationInstalled : pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationRunning(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationRunningInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationRunningInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 13

    const/4 v4, -0x1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p2, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isApplicationRunningInternal() : apkID =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isApplicationRunningInternal() : runningApplicationInfo - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v10, v1, :cond_0

    iget v4, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_0
    move-exception v2

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isApplicationSetToDefault(Ljava/lang/String;I)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->retrieveActionFromDb(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z
    .locals 13

    const-string v10, "PackageNameStartBlacklist"

    const-string v11, "PackageNameStartWhitelist"

    invoke-direct {p0, v10, v11, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isApplicationStartDisabledAsUser ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") : matches"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, p2

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    if-ne p2, v10, :cond_0

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v10, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v6

    if-eq v6, v3, :cond_1

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    new-instance v5, Landroid/content/Intent;

    const-string v10, "edm.intent.application.action.prevent.start"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "application_package_name"

    invoke-virtual {v5, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "user_id"

    invoke-virtual {v5, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sending broadcast to user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " containing: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (packageName), "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (userId)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v7}, Landroid/os/UserHandle;-><init>(I)V

    const-string v12, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v10, v5, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public isChangeSmsDefaultAppAllowed(Ljava/lang/String;I)Z
    .locals 9

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v6, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v6, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const v6, 0x1040b56

    invoke-static {v6}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    const/4 v5, 0x0

    :cond_2
    return v5
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 13

    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isIntentDisabled start :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v11, 0x200

    invoke-virtual {v10, p1, v11, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-direct {p0, v7, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_1

    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    const-string v11, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isIntentDisabled return :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v3, :cond_5

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_6

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    goto :goto_0
.end method

.method isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;
    .locals 7

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationsListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object p3

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    move-object v0, p3

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    iget-object v4, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsManagedAppInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isMetaKeyEventRequested(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    const-string v2, "ApplicationPolicy"

    const-string/jumbo v3, "isMetaKeyEventRequested  in service  "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "ApplicationPolicy"

    const-string/jumbo v3, "isMetaKeyEventRequested"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p2}, Landroid/view/IWindowManager;->isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "ApplicationPolicy"

    const-string v3, "Failed talking with Kiosk mode service"

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "ApplicationPolicy"

    const-string v3, "Failed to get wm "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "OcspCheck"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackageClipboardAllowed(Ljava/lang/String;I)Z
    .locals 2

    const-string v0, "PackageNameDisableClipboardBlackList"

    const-string v1, "PackageNameDisableClipboardWhitelist"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPackageInInstallWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 9

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "isPackageInInstallWhiteList() Package name is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    invoke-virtual {v2, p2, v1}, Landroid/os/PersonaManager;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPackageToInstallList() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isPackageUpdateAllowed(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "PackageNameUpdateBlacklist"

    const-string v2, "PackageNameUpdateWhitelist"

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ApplicationPolicy"

    const-string/jumbo v2, "isPackageUpdateAllowed: matches"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const v1, 0x1040b0b

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "RevocationCheck"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isStatusBarNotificationAllowedAsUser: packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.google.android.gms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "PackageNameNotificationBlacklist"

    const-string v2, "PackageNameNotificationWhitelist"

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .locals 6

    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsbDevicePermittedForPackage vendorId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", productId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getUsbDevicesForDefaultAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v0, Landroid/app/enterprise/UsbDeviceConfig;

    invoke-direct {v0}, Landroid/app/enterprise/UsbDeviceConfig;-><init>()V

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    iput v3, v0, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    iput v3, v0, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ApplicationPolicy"

    const-string/jumbo v4, "isUsbDevicePermittedForPackage returning true"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isWidgetAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    new-instance v3, Lcom/android/server/enterprise/application/ApplicationPolicy$1;

    invoke-direct {v3, p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    invoke-virtual {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->start()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState(I)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationIconDbForUser(I)V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileComponentsState(I)V

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v0

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 3

    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 5

    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApplicationPolicy.onContainerRemoved("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v0

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkApplicationsStateToBeReconciled(I)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkComponentsStateToBeReconciled(I)V

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 3

    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationPolicy.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeAppNotificationBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppNotificationWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppPackageNameFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ApplicationPolicy"

    const-string/jumbo v2, "removeAppPackageNameFromBlackList "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v2, 0x4

    invoke-direct {p0, p2, v1, v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public removeAppPackageNameFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ApplicationPolicy"

    const-string/jumbo v2, "removeAppPackageNameFromWhiteList"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v2, 0x8

    invoke-direct {p0, p2, v1, v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public removeAppPermissionFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public removeAppSignatureFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public removeAppSignatureFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public removeDefaultApplication(Landroid/app/enterprise/ContextInfo;Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isGlobalAction(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->toContentValues(ILandroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSmsOrMmsTask(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeDefaultSmsTask(ILandroid/content/ComponentName;)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ApplicationDefault"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v1, 0x1

    :goto_2
    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public removeManagedApplications(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public bridge synthetic removeManagedApplications(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeManagedApplications(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public removePackageFromInstallWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 9

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, "ApplicationPolicy"

    const-string/jumbo v7, "removePackageFromInstallWhiteList() Package name is invalid"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    invoke-virtual {v2, p2, v1}, Landroid/os/PersonaManager;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPackageToInstallList() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removePackagesFromClearCacheBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearCacheBlacklist"

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearCacheWhitelist"

    const/high16 v1, 0x10000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearDataBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearDataBlacklist"

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearDataWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearDataWhitelist"

    const/16 v1, 0x4000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromDisableClipboardBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameDisableClipboardBlackList"

    const/high16 v1, 0x200000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromDisableClipboardWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameDisableClipboardWhitelist"

    const/high16 v1, 0x400000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromDisableUpdateBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "PackageNameUpdateBlacklist"

    const/high16 v2, 0x20000

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromDisableUpdateWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "PackageNameUpdateWhitelist"

    const/high16 v2, 0x40000

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromFocusMonitoringList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameFocusMonitoringList"

    const/high16 v1, 0x800000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromForceStopBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromForceStopWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromPreventStartBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameStartBlacklist"

    const/high16 v1, 0x80000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromWidgetBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    return v0
.end method

.method public removePackagesFromWidgetWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    return v0
.end method

.method public requestMetaKeyEvent(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;Z)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    const-string v2, "ApplicationPolicy"

    const-string/jumbo v3, "requestMetaKeyEvent in service "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "ApplicationPolicy"

    const-string/jumbo v3, "requestMetaKeyEvent"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p2, p3}, Landroid/view/IWindowManager;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "ApplicationPolicy"

    const-string v3, "Failed talking with Kiosk mode service"

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v2, "ApplicationPolicy"

    const-string v3, "Failed to get wm "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->restoreEncryptedApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public restoreEncryptedApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 14

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceBackupAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    const/4 v10, -0x2

    :goto_0
    return v10

    :cond_1
    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    const/4 v10, -0x3

    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_3
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v5, Ljava/lang/SecurityManager;

    invoke-direct {v5}, Ljava/lang/SecurityManager;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/SecurityManager;->checkRead(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v6

    const/4 v10, -0x2

    :try_start_4
    iput v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v10, :cond_4

    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v10, :cond_4

    const-string v10, "ApplicationPolicy"

    const-string/jumbo v12, "failed to get backup manager service"

    invoke-static {v10, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v10, -0x2

    const/4 v12, 0x0

    :try_start_5
    iput-boolean v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    new-instance v4, Landroid/content/Intent;

    const-string v12, "edm.intent.action.backup.service.available"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v11

    goto :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v10

    :catch_0
    move-exception v3

    const-string v10, "ApplicationPolicy"

    const-string v11, "can\'t read from file descriptor"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x2

    goto :goto_0

    :cond_4
    :try_start_6
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-interface {v10, v12, v9, v0, v8}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;Ljava/lang/String;I)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, -0x3

    const/4 v12, 0x0

    :try_start_7
    iput-boolean v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    new-instance v4, Landroid/content/Intent;

    const-string v12, "edm.intent.action.backup.service.available"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x1

    :try_start_8
    iput-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    iput-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    move-object/from16 v0, p3

    invoke-interface {v10, v0}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    const-wide/32 v12, 0x493e0

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v10, 0x0

    :try_start_9
    iput-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    new-instance v4, Landroid/content/Intent;

    const-string v10, "edm.intent.action.backup.service.available"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    monitor-exit v11

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const/4 v10, -0x2

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    new-instance v4, Landroid/content/Intent;

    const-string v12, "edm.intent.action.backup.service.available"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catch_2
    move-exception v3

    :try_start_a
    const-string v10, "ApplicationPolicy"

    const-string v12, "Failed to get backup manager service"

    invoke-static {v10, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v10, -0x2

    const/4 v12, 0x0

    :try_start_b
    iput-boolean v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    new-instance v4, Landroid/content/Intent;

    const-string v12, "edm.intent.action.backup.service.available"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v11

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    new-instance v4, Landroid/content/Intent;

    const-string v12, "edm.intent.action.backup.service.available"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method public setAppInstallToSdCard(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ApplicationPolicy"

    const-string/jumbo v3, "setAppInstallToSdCard : External Storage Emulated"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "APPLICATION_GENERAL"

    const-string/jumbo v5, "installToSdCard"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppInstallationMode(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne v2, p2, :cond_1

    const-string v2, ".*"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeAppPackageNameFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    const-string v2, "Application"

    const-string/jumbo v3, "setAppInstallationMode"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetIntTypePolicy aInstallationMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getAppInstallationMode(cxtInfo) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-nez p2, :cond_0

    const-string v2, ".*"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addAppPackageNameToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setApplicationComponentState(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;Z)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v4, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setApplicationComponentState :  compName :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " callingUid :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " enableComponent :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-direct {p0, v2, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isActiveAdmin(Ljava/lang/String;I)Z

    move-result v9

    if-ne v9, v8, :cond_2

    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setApplicationComponentState() : can not disable Admin app"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " userID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v9, 0x1

    if-nez p3, :cond_3

    move v5, v8

    :cond_3
    :try_start_0
    invoke-direct {p0, v0, p2, v9, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationComponentNameControlState(ILandroid/content/ComponentName;IZ)Z

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p0, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Landroid/content/ComponentName;I)Z

    move-result v3

    const-string v5, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "state : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-eqz v3, :cond_5

    move v5, v8

    :goto_1
    const/4 v8, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v9, p2, v5, v8, v10}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_4
    :goto_2
    move v5, v4

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public setApplicationInstallationDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    return-void
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    return-void
.end method

.method public setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    return-void
.end method

.method public setApplicationNotificationMode(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setApplicationNotificationMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION_MISC"

    const-string v4, "appNotificationMode"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setApplicationNotificationMode: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 18

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v15, 0x0

    new-instance v13, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v13, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    const-string v2, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setApplicationState :  pkgName :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callingUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enableApp :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ApplicationPolicy"

    const-string v4, " isApplicationInstalled() = false"

    invoke-static {v2, v4}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isActiveAdmin(Ljava/lang/String;I)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const-string v2, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setApplicationState() : can not disable Admin app"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v15

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const-string v2, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callingUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-nez p3, :cond_4

    const/4 v2, 0x1

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v4, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;I)Z

    move-result v14

    const-string v2, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-eqz v14, :cond_5

    const/4 v4, 0x1

    :goto_2
    const/4 v5, 0x0

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    if-eqz v15, :cond_3

    if-nez p3, :cond_3

    const-string v2, "com.android.vending"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.google.android.finsky"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin id "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " has blocked access to Google Playstore ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    const-string v2, "Application"

    const-string/jumbo v4, "setApplicationState"

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v2, v4, v0, v1}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v2, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetStringAndBooleanTypePolicy pkgName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enableApp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v15

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x2

    goto/16 :goto_2

    :catch_0
    move-exception v12

    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setApplicationStateList(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setApplicationStateList:operation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    array-length v4, p2

    if-gez v4, :cond_1

    :cond_0
    move-object v4, v0

    :goto_0
    return-object v4

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v4, p2

    if-ge v1, v4, :cond_3

    aget-object v4, p2, v1

    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    aget-object v4, p2, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setApplicationStateList:pkgList[i]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    return-void
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    return-void
.end method

.method public setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    return-void
.end method

.method public setApplicationUninstallationMode(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v2, 0x0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    if-ne v5, p2, :cond_1

    const-string v3, ".*"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v5, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v2

    :cond_0
    :goto_0
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAppInstallationMode : returns : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Application"

    const-string/jumbo v4, "setApplicationUninstallationMode"

    invoke-virtual {v1, v3, v4, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    return v2

    :cond_1
    if-nez p2, :cond_0

    const-string v3, ".*"

    invoke-direct {p0, v3, v0, v5, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v2

    goto :goto_0
.end method

.method public setAsManagedApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAsManagedApp():pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v0, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    if-nez v5, :cond_1

    const-string v5, "applicationInstallationCount"

    invoke-direct {p0, v0, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    const-string v5, "ApplicationPolicy"

    const-string v6, "App install count incremented"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDefaultApplication(Landroid/app/enterprise/ContextInfo;Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isGlobalAction(Landroid/content/Intent;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_0
    const/4 v10, 0x0

    :goto_1
    return v10

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    :try_start_0
    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->retrieveDefaultAppFromDb(Landroid/content/Intent;I)Landroid/content/ContentValues;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v14, "adminUid"

    invoke-virtual {v5, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_4

    const/4 v10, 0x0

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v14, "ApplicationPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Malformed mimetype "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSmsOrMmsTask(Landroid/content/Intent;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1, v14}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setDefaultSmsTask(ILandroid/content/ComponentName;Z)Z

    move-result v10

    goto :goto_1

    :cond_5
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v14, v9, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->toContentValues(ILandroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ContentValues;

    move-result-object v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1, v14, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->toContentValues(ILandroid/content/Intent;Landroid/content/ComponentName;Z)Landroid/content/ContentValues;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ApplicationDefault"

    invoke-virtual {v14, v15, v5, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v14

    if-lez v14, :cond_6

    const/4 v10, 0x1

    :goto_2
    goto/16 :goto_1

    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSmsOrMmsTask(Landroid/content/Intent;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1, v14}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setDefaultSmsTask(ILandroid/content/ComponentName;Z)Z

    move-result v10

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->toContentValues(ILandroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ApplicationDefault"

    invoke-virtual {v14, v15, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_9

    const/4 v10, 0x1

    :goto_3
    goto/16 :goto_1

    :cond_9
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public setMySinglePackageName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    const-string v2, "ApplicationPolicy"

    const-string/jumbo v3, "setMySinglePackageName : caller is not system"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_0
    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMySinglePackageName : pkgName =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MySinglePackageName"

    invoke-virtual {v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public startApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 29

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v23

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "android"

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v13

    if-nez v13, :cond_1

    const-string v25, "ApplicationPolicy"

    const-string v26, "Could not create context for current user!"

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    :cond_0
    :goto_0
    return v19

    :cond_1
    const/16 v19, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "user"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    if-eqz v18, :cond_a

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_9

    const/16 v25, 0x0

    const-string v26, "PackageNameStartBlacklist"

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v10

    const/16 v16, 0x0

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_6

    move-object/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v8, v0

    sget-object v25, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_5

    const-string v25, "PackageNameStartBlacklist"

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_3

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    :cond_3
    const-string v25, "ApplicationPolicy"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Package name "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "is at prevent black list,"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " but has not been added by admin "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Prevent this package from starting"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0x0

    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v19, v25

    goto/16 :goto_0

    :cond_4
    :try_start_2
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v25, "edm:startedByAdmin"

    const/16 v27, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v16, v17

    :cond_5
    :try_start_4
    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    if-nez p3, :cond_7

    :try_start_5
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v15

    if-nez v15, :cond_8

    const/16 v19, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v25

    :goto_1
    :try_start_6
    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v25
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_0
    move-exception v14

    :try_start_8
    const-string v25, "ApplicationPolicy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "could not start app"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_7
    :try_start_9
    new-instance v15, Landroid/content/Intent;

    const-string v25, "android.intent.action.MAIN"

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_8
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    new-instance v26, Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/16 v19, 0x1

    :cond_9
    :goto_2
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_a
    :try_start_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->storeAppInfoForLateStart(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/16 v19, 0x1

    goto :goto_2

    :catchall_1
    move-exception v25

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v25

    :catchall_2
    move-exception v25

    move-object/from16 v16, v17

    goto/16 :goto_1
.end method

.method public stopApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p2, v4}, Landroid/app/IActivityManager;->forceStopPackageByAdmin(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    :goto_1
    move v5, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not stop app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .locals 6

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    invoke-virtual {v4}, Lcom/android/server/enterprise/application/ProcessStats;->init()V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState(I)V

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileComponentsState(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 8

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v0, 0x5

    sget v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " has removed application "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_1

    const-string v2, " keeping data and cache."

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return v7

    :cond_1
    const-string v2, "."

    goto :goto_0
.end method

.method public uninstallApplicationBySystem(ILjava/lang/String;Z)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    sget v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public uninstallApplicationInternalBySystem(ILjava/lang/String;Z)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    sget v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplicationInternal(IILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public updateApplicationTable(III)Z
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "adminUid"

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adminUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApplicationPolicy"

    const-string v3, "Updating the Application Table DB  "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateApplicationTable(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public updateDataUsageDb()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateNetworkUsageDb()V

    return-void
.end method

.method public updateWidgetStatus(Landroid/content/ComponentName;I)V
    .locals 8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledWidgetProviders(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v6, "ApplicationPolicy"

    const-string v7, "Failed to get widget providers"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSamsungWidgets(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSurfaceWidgets(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList(I)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method public wipeApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v3, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wipeApplicationData : callingUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const-string v3, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wipeApplicationData : Binder.getCallingUid() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v3, p2, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearUserData(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public writeData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BZI)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v19, "ApplicationPolicy"

    const-string v20, "WriteData"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_1
    const/4 v14, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const/4 v7, 0x0

    const/4 v10, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/system/container/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    if-nez p5, :cond_3

    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v19

    if-nez v19, :cond_3

    const/4 v14, 0x0

    if-eqz v10, :cond_2

    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    const/4 v10, 0x0

    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v8, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v11, Ljava/io/FileOutputStream;

    move/from16 v0, p5

    invoke-direct {v11, v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    const-string v19, "ApplicationPolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes are written to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v10, 0x0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v14, 0x1

    move/from16 v0, p6

    int-to-long v0, v0

    move-wide/from16 v20, v0

    :try_start_7
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-nez v19, :cond_5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "persona"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PersonaManager;

    if-eqz v12, :cond_4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/data/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Landroid/os/PersonaManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v13

    if-eqz v13, :cond_4

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v21, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v13, v0, v1, v2, v5}, Landroid/content/IRCPInterface;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v18

    if-nez v18, :cond_4

    const/4 v14, 0x1

    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_5
    if-eqz v10, :cond_6

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_2
    const/4 v10, 0x0

    :cond_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v7, v8

    goto/16 :goto_0

    :catchall_0
    move-exception v19

    :goto_3
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v19
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_0
    move-exception v6

    :goto_4
    :try_start_b
    const-string v19, "ApplicationPolicy"

    const-string v20, "IOException createsystemfile command failed "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v10, :cond_7

    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :goto_5
    const/4 v10, 0x0

    :cond_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catch_1
    move-exception v6

    :goto_6
    :try_start_d
    const-string v19, "ApplicationPolicy"

    const-string v20, "Failed at EnterpriseContainerPolicy API writeData "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v10, :cond_8

    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    :goto_7
    const/4 v10, 0x0

    :cond_8
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_1
    move-exception v19

    :goto_8
    if-eqz v10, :cond_9

    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    :goto_9
    const/4 v10, 0x0

    :cond_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19

    :catch_2
    move-exception v19

    goto/16 :goto_1

    :catch_3
    move-exception v19

    goto :goto_2

    :catch_4
    move-exception v19

    goto :goto_5

    :catch_5
    move-exception v19

    goto :goto_7

    :catch_6
    move-exception v20

    goto :goto_9

    :catchall_2
    move-exception v19

    move-object v7, v8

    goto :goto_8

    :catch_7
    move-exception v6

    move-object v7, v8

    goto :goto_6

    :catch_8
    move-exception v6

    move-object v7, v8

    goto :goto_4

    :catchall_3
    move-exception v19

    move-object v7, v8

    goto :goto_3

    :catchall_4
    move-exception v19

    move-object v10, v11

    move-object v7, v8

    goto :goto_3
.end method

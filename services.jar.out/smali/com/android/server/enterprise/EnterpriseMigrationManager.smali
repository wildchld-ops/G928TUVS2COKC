.class public Lcom/android/server/enterprise/EnterpriseMigrationManager;
.super Ljava/lang/Object;
.source "EnterpriseMigrationManager.java"


# static fields
.field private static final BROWSER_PROXY_TABLE:Ljava/lang/String; = "BROWSER_PROXY"

.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static final CONTAINER_SETTINGS_TABLE:Ljava/lang/String; = "ContainerSettings"

.field private static final DEFAULT_ALL_PACKAGES:Ljava/lang/String; = ".*"

.field private static final EMAIL_POLICY_TABLE:Ljava/lang/String; = "ADMIN_REF"

.field private static final KNOX_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.knoxlauncher"

.field public static final NEW_CONTAINER_ID:J = 0x0L

.field private static NEW_CONTAINER_USER_ID:J = 0x0L

.field private static OLD_CONTAINER_ID:J = 0x0L

.field public static final OLD_CONTAINER_USER_ID:J = 0x0L

.field private static final PREFIX_OF_CONTAINERIZED_APP:Ljava/lang/String; = "sec_container_1."

.field private static final TAG:Ljava/lang/String; = "EnterpriseMigrationManager"

.field private static final WHITE_LIST_INSTALL_APPS_TABLE:Ljava/lang/String; = "WhiteListInstallApps"

.field private static final deleteOldContainerIDRowTableNames:[Ljava/lang/String;

.field private static mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

.field private static migrationResult:Z

.field private static final updateAdminUIDTableNames:[Ljava/lang/String;

.field private static final updateDefaultValuesTableNames:[Ljava/lang/String;

.field private static final updatePackageNameTableNames:[Ljava/lang/String;


# instance fields
.field private mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

.field private mBrowserPolicyService:Landroid/app/enterprise/IBrowserPolicy;

.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mRCPService:Lcom/sec/enterprise/knox/container/IRCPPolicy;

.field private mRestrictionPolicyService:Landroid/app/enterprise/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    sput-boolean v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccountBlackWhiteList"

    aput-object v1, v0, v4

    const-string v1, "ADMIN_REF"

    aput-object v1, v0, v3

    const-string v1, "APPLICATION_COMPONENT"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "APPLICATION_GENERAL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "APPLICATION_MISC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "APPLICATION_PERMISSION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "APPLICATION_PERMISSIONCONTROL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "APPLICATION_SIGNATURE2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BROWSER"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EmailSettingsTable"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ExchangeAccountTable"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SmartCardAccessTable"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SmartCardAccessWhitelistTable"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SmartCardBrowserCertAliasTable"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "SmartCardBrowserTable"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SmartCardEmailTable"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "WebFilterTable"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WebFilterSettingsTable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "APPLICATION"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "RESTRICTION"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "CONTAINER"

    aput-object v1, v0, v4

    const-string v1, "ADMIN"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    const-string v0, "browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mBrowserPolicyService:Landroid/app/enterprise/IBrowserPolicy;

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRestrictionPolicyService:Landroid/app/enterprise/IRestrictionPolicy;

    const-string/jumbo v0, "mum_container_rcp_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/container/IRCPPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/container/IRCPPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRCPService:Lcom/sec/enterprise/knox/container/IRCPPolicy;

    return-void
.end method

.method private deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseMigrationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not execute delete() for tablename : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "EnterpriseMigrationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not execute delete() for tablename : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v2, ""

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check permission for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    if-eqz v0, :cond_0

    const-string v5, "com.sec.knox.containeragent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Container Migration Permission to calling Package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v1

    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to getPackageFromAppProcesses : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getAdminID()J
    .locals 8

    const-wide/16 v4, -0x1

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "containerID!=?"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "userID"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "adminID"

    invoke-virtual {v3, v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    :cond_0
    :goto_0
    return-wide v4

    :catch_0
    move-exception v2

    const-string v3, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getAdminID()"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getAdminID()"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;
    .locals 2

    const-class v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNewConatinerAdminUID()J
    .locals 8

    const-wide/16 v2, -0x1

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "containerID"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "userID"

    sget-wide v6, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "adminUid"

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v1

    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getNewConatinerAdminUID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getNewConatinerAdminUID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOldConatinerAdminUID()J
    .locals 8

    const-wide/16 v2, -0x1

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "containerID!=?"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "userID"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "adminUid"

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v1

    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getOldConatinerAdminUID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getOldConatinerAdminUID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOldContainerID()J
    .locals 8

    const-wide/16 v2, -0x1

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "containerID!=?"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "userID"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "containerID"

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v1

    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getOldContainerID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getOldContainerID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateBrowserProxy(Ljava/lang/String;JJ)Z
    .locals 8

    const/4 v4, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    long-to-int v5, p4

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    :try_start_0
    const-string v5, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "proxyServer"

    invoke-virtual {v5, p1, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mBrowserPolicyService:Landroid/app/enterprise/IBrowserPolicy;

    invoke-interface {v5, v2, v3}, Landroid/app/enterprise/IBrowserPolicy;->setHttpProxy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update BrowserProxy done with retrun : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v1

    const-string v5, "EnterpriseMigrationManager"

    const-string/jumbo v6, "update BrowserProxy could not be executed"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateContainerSettingsTable(Ljava/lang/String;JJ)Z
    .locals 10

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x1

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    long-to-int v6, p4

    invoke-direct {v2, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    :try_start_0
    const-string v6, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "allowContactInfoToNonKnox"

    invoke-virtual {v6, p1, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "Contacts"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRCPService:Lcom/sec/enterprise/knox/container/IRCPPolicy;

    const-string/jumbo v7, "knox-export-data"

    invoke-interface {v6, v2, v0, v7, v4}, Lcom/sec/enterprise/knox/container/IRCPPolicy;->setAllowChangeDataSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    return v5

    :catch_0
    move-exception v3

    const-string v6, "EnterpriseMigrationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occured during updateContainerSettingsTable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private updateDefaultContainerApplications(J)Z
    .locals 13

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    long-to-int v9, p1

    invoke-direct {v2, v9}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v7, 0x1

    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/ContainerStorageProvider;

    move-result-object v9

    sget-wide v10, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getPackageNames(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_1

    :cond_0
    const-string v9, "EnterpriseMigrationManager"

    const-string/jumbo v10, "getPackageNames() for Application Table Update returned empty list"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_1
    return v9

    :catch_0
    move-exception v3

    const-string v9, "EnterpriseMigrationManager"

    const-string/jumbo v10, "getPackageNames() for Application Table Update could not be executed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const-string v9, "com.sec.android.app.knoxlauncher"

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "com.sec.knox.app.container"

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    const-string v10, "EnterpriseMigrationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDefaultContainerApplications : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v9, "packageName"

    invoke-virtual {v1, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "APPLICATION"

    const-string v11, "controlState"

    invoke-virtual {v9, v10, v11, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v9, "controlState"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-ne v9, v10, :cond_2

    :try_start_2
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v10, 0x0

    invoke-interface {v9, v2, v6, v10}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_3
    const-string v9, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not execute putValues() for tablename : APPLICATION package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_3

    :catch_2
    move-exception v3

    const-string v9, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not execute putValues() for tablename : APPLICATION package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v7, 0x0

    goto :goto_3

    :catch_3
    move-exception v3

    const-string v9, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not execute getValue() for tablename : APPLICATION package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_3

    :catch_4
    move-exception v3

    const-string v9, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not execute getValue() for tablename : APPLICATION package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move v9, v7

    goto/16 :goto_1
.end method

.method private updateEmailPolicyPkgName(Ljava/lang/String;J)Z
    .locals 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v5, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "policyName"

    invoke-virtual {v5, p1, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "adminUid =? "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "policyName"

    invoke-static {v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    :goto_0
    return v5

    :catch_0
    move-exception v2

    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not execute update() for tablename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not execute update() for tablename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updatePkgNameInApplicationTable(Ljava/lang/String;Ljava/lang/String;JJJ)Z
    .locals 15

    const/4 v8, 0x1

    const/4 v7, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move-wide/from16 v0, p7

    long-to-int v10, v0

    sget-wide v12, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    long-to-int v11, v12

    invoke-direct {v5, v10, v11}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    new-instance v4, Landroid/app/enterprise/ContextInfo;

    move-wide/from16 v0, p5

    long-to-int v10, v0

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v8, 0x1

    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v5}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromClearDataBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v6

    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackagesFromClearDataBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ".*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "getPackagesFromClearDataBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToClearDataBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v9

    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackagesToClearDataBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    const/4 v7, 0x1

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v8, 0x1

    :try_start_2
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v5}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromClearDataWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v6

    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackagesFromClearDataWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    :try_start_3
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToClearDataWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v9

    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackagesToClearDataWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    const/4 v7, 0x1

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v8, 0x1

    :try_start_4
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v5}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromClearCacheBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v6

    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackagesFromClearCacheBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_7
    const/4 v3, 0x0

    :goto_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ".*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :catch_1
    move-exception v2

    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "addPackagesToClearDataBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_3

    :catch_2
    move-exception v2

    const-string v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "getPackagesFromClearDataWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_4

    :catch_3
    move-exception v2

    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "addPackagesToClearDataWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    goto :goto_6

    :catch_4
    move-exception v2

    const-string v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "getPackagesFromClearCacheBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_7

    :cond_5
    :try_start_5
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToClearCacheBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v9

    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackagesToClearCacheBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_9
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    const/4 v7, 0x1

    :goto_a
    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v8, 0x1

    :try_start_6
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v5}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v6

    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackagesFromClearCacheWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_b
    :try_start_7
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v9

    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackagesToClearCacheWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_c
    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    const/4 v7, 0x1

    :goto_d
    invoke-interface {v6}, Ljava/util/List;->clear()V

    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    const/4 v10, 0x1

    :goto_e
    return v10

    :catch_5
    move-exception v2

    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "addPackagesToClearCacheBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_9

    :cond_6
    const/4 v7, 0x0

    goto :goto_a

    :catch_6
    move-exception v2

    const-string v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "getPackagesFromClearCacheWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_b

    :catch_7
    move-exception v2

    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "addPackagesToClearCacheWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_c

    :cond_7
    const/4 v7, 0x0

    goto :goto_d

    :cond_8
    const/4 v10, 0x0

    goto :goto_e
.end method

.method private updateTableAdminUid(Ljava/lang/String;JJ)Z
    .locals 6

    const-string v3, "ADMIN_REF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateEmailPolicyPkgName(Ljava/lang/String;J)Z

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v3, "adminUid =? "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "adminUid"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not execute update() for tablename : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not execute update() for tablename : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateTableDefaultValues(Ljava/lang/String;JJ)Z
    .locals 8

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    move v4, v3

    :goto_1
    return v4

    :catch_0
    move-exception v2

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not execute getCount() for tablename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not execute getCount() for tablename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "adminUid"

    invoke-direct {p0, p1, v4, p4, p5}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateTableAdminUid(Ljava/lang/String;JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateWhitelistInstallApp(Ljava/lang/String;JJ)Z
    .locals 10

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x1

    :try_start_0
    const-string v7, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "packageName"

    invoke-virtual {v7, p1, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    sget-wide v8, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    long-to-int v7, v8

    invoke-virtual {v5, v3, v7}, Landroid/os/PersonaManager;->addPackageToInstallWhiteList(Ljava/lang/String;I)V

    const-string v7, "EnterpriseMigrationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackageToInstallWhiteList() for Persona Manager Policy Update for package : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v7, "EnterpriseMigrationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackageToInstallWhiteList() for Application Policy Update could not be executed for package : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v6, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v7, "EnterpriseMigrationManager"

    const-string v8, "addPackageToInstallWhiteList() for Application Policy Update could not be executed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_0
    return v6
.end method


# virtual methods
.method public blockAdminToReceivePolicy(Z)Z
    .locals 7

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->enforceMigrationAgentSecurityCheck()V

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "migrationState"

    const-string/jumbo v6, "nok"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_0
    move-exception v0

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured during set migration STATE_NOK : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "migrationState"

    const-string/jumbo v6, "ok"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured during set migration STATE_OK : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEnterpriseMigrationResult()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    return v0
.end method

.method public migrateApplicationDisablePolicy(I)Z
    .locals 26

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->enforceMigrationAgentSecurityCheck()V

    const/16 v18, 0x1

    const/16 v21, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldContainerID()J

    move-result-wide v22

    sput-wide v22, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sput-wide v22, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldConatinerAdminUID()J

    move-result-wide v14

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getNewConatinerAdminUID()J

    move-result-wide v12

    const-string v20, "APPLICATION"

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Landroid/app/enterprise/ContextInfo;

    long-to-int v0, v12

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v22, "adminUid"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string/jumbo v23, "packageName"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    :goto_0
    const/4 v11, 0x0

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_1

    const-string v23, "EnterpriseMigrationManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "check application disabled : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v22, "adminUid"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v22, "packageName"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "controlState"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v22, "controlState"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    const/16 v22, 0x2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v23

    and-int/lit8 v23, v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    move-object/from16 v22, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v9, v1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v21

    const-string v22, "EnterpriseMigrationManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "setApplicationState(false) for Application Policy Update package name : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " returned : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v10

    const-string v22, "EnterpriseMigrationManager"

    const-string v23, "could not execute getStringList() in Disable Application Policy"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v10

    const-string v22, "EnterpriseMigrationManager"

    const-string v23, "could not execute getStringList() in Disable Application Policy"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v10

    :try_start_3
    const-string v22, "EnterpriseMigrationManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "setApplicationState(false) for Application Policy Update could not be executed for package name : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/16 v18, 0x0

    goto :goto_2

    :catch_3
    move-exception v10

    const-string v22, "EnterpriseMigrationManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "could not execute getValue() for tablename : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " package name : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    goto :goto_2

    :catch_4
    move-exception v10

    const-string v22, "EnterpriseMigrationManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "could not execute getValue() for tablename : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " package name : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_3
    sget-object v22, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_3

    sget-object v22, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v22, v22, v11

    const-string v23, "containerID"

    sget-wide v24, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v21

    const-string v22, "EnterpriseMigrationManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "deleteTableRow() for TableName : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v24, v24, v11

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " returned : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v18, :cond_2

    if-eqz v21, :cond_2

    const/16 v18, 0x1

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    const/16 v18, 0x0

    goto :goto_4

    :cond_3
    return v18
.end method

.method public migrateEnterpriseDB(IZ)J
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->enforceMigrationAgentSecurityCheck()V

    const/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v22, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldContainerID()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    move/from16 v0, p1

    int-to-long v4, v0

    sput-wide v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldConatinerAdminUID()J

    move-result-wide v6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getNewConatinerAdminUID()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getAdminID()J

    move-result-wide v18

    new-instance v10, Landroid/app/enterprise/ContextInfo;

    long-to-int v4, v8

    const/4 v5, 0x0

    invoke-direct {v10, v4, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-lez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_0

    sget-wide v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_0

    if-nez v10, :cond_2

    :cond_0
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in Enterprise Container migration "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v12, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, -0x1

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    :goto_0
    return-wide v8

    :cond_2
    const/4 v4, 0x1

    :try_start_1
    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz p2, :cond_d

    const/16 v21, 0x0

    :goto_1
    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_4

    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    aget-object v5, v4, v21

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateTableDefaultValues(Ljava/lang/String;JJ)Z

    move-result v23

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateTableDefaultValues() for TableName : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    aget-object v11, v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_3

    sget-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    if-eqz v23, :cond_5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRestrictionPolicyService:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v5, 0x0

    invoke-interface {v4, v10, v5}, Landroid/app/enterprise/IRestrictionPolicy;->setScreenCapture(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    const/16 v21, 0x0

    :goto_4
    :try_start_3
    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_7

    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    aget-object v5, v4, v21

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateTableAdminUid(Ljava/lang/String;JJ)Z

    move-result v23

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateTableAdminUid() for TableName : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    aget-object v11, v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_6

    sget-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_5
    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    :catch_0
    move-exception v20

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Some unknown exception occured in Restriction Policy setScreenCapture() call!!! "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v20

    :try_start_4
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Some unknown exception occured in enterprise DB migration!!! "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_6
    if-eqz p2, :cond_1

    if-eqz v22, :cond_1

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRestrictionPolicyService:Landroid/app/enterprise/IRestrictionPolicy;

    sget-wide v12, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    long-to-int v5, v12

    invoke-interface {v4, v5}, Landroid/app/enterprise/IRestrictionPolicy;->onUserMigrated(I)V

    const-string v4, "EnterpriseMigrationManager"

    const-string v5, "Restriction Policy onUserMigrated() called for TableName : RESTRICTION"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v20

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Some unknown exception occured in Restriction Policy onUserMigrated() call!!! "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    goto/16 :goto_0

    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_7
    const/16 v21, 0x0

    :goto_7
    :try_start_6
    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_8

    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    aget-object v12, v4, v21

    const-string/jumbo v13, "packageName"

    move-object/from16 v11, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePkgNameInApplicationTable(Ljava/lang/String;Ljava/lang/String;JJJ)Z

    move-result v23

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updatePkgNameInApplicationTable() for TableName : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    aget-object v11, v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    :cond_8
    const-string v5, "WhiteListInstallApps"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateWhitelistInstallApp(Ljava/lang/String;JJ)Z

    move-result v23

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateWhitelistInstallApp() for TableName : WhiteListInstallApps returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_a

    sget-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    :goto_8
    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    const-string v5, "BROWSER_PROXY"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateBrowserProxy(Ljava/lang/String;JJ)Z

    move-result v23

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateBrowserProxy() for TableName : BROWSER_PROXY returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_b

    sget-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_9
    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    const-string v5, "ContainerSettings"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateContainerSettingsTable(Ljava/lang/String;JJ)Z

    move-result v23

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateContainerSettingsTable() for TableName : ContainerSettings returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_c

    sget-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    :goto_a
    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultContainerApplications(J)Z

    move-result v23

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDefaultContainerApplications() for TableName : packageName returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_9
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_b
    const/4 v4, 0x0

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    goto :goto_a

    :cond_d
    :try_start_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultContainerApplications(J)Z

    move-result v23

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDefaultContainerApplications() for TableName : packageName returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x0

    :goto_b
    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_9

    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v4, v4, v21

    const-string v5, "containerID"

    sget-wide v12, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v12, v13}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteTableRow() for TableName : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v11, v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v11, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    :catchall_0
    move-exception v4

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method removePrefixPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sec_container_1."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

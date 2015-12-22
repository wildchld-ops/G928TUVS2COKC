.class public Lcom/sec/sdp/SdpLicenseManager;
.super Ljava/lang/Object;
.source "SdpLicenseManager.java"


# static fields
.field public static final ACTION_LICENSE_REGISTRATION:Ljava/lang/String; = "edm.intent.action.license.registration.internal"

.field public static final ACTION_LICENSE_STATUS:Ljava/lang/String; = "edm.intent.action.license.status"

.field public static final ERROR_INTERNAL:I = 0x12d

.field public static final ERROR_INTERNAL_SERVER:I = 0x191

.field public static final ERROR_INVALID_LICENSE:I = 0xc9

.field public static final ERROR_INVALID_PACKAGE_NAME:I = 0xcc

.field public static final ERROR_LICENSE_TERMINATED:I = 0xcb

.field public static final ERROR_NETWORK_DISCONNECTED:I = 0x1f5

.field public static final ERROR_NETWORK_GENERAL:I = 0x1f6

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_CURRENT_DATE:I = 0xcd

.field public static final ERROR_NO_MORE_REGISTRATION:I = 0xca

.field public static final ERROR_NULL_PARAMS:I = 0x65

.field public static final ERROR_UNKNOWN:I = 0x66

.field public static final ERROR_USER_DISAGREES_LICENSE_AGREEMENT:I = 0x259

.field public static final EXTRA_LICENSE_DATA_LICENSE_PERMISSIONS:Ljava/lang/String; = "edm.intent.extra.license.data.license_permissions"

.field public static final EXTRA_LICENSE_DATA_PACKAGENAME:Ljava/lang/String; = "edm.intent.extra.license.data.pkgname"

.field public static final EXTRA_LICENSE_DATA_PACKAGEVERSION:Ljava/lang/String; = "edm.intent.extra.license.data.pkgversion"

.field public static final EXTRA_LICENSE_ERROR_CODE:Ljava/lang/String; = "edm.intent.extra.license.errorcode"

.field public static final EXTRA_LICENSE_PERM_GROUP:Ljava/lang/String; = "edm.intent.extra.license.perm_group"

.field public static final EXTRA_LICENSE_RESULT_TYPE:Ljava/lang/String; = "edm.intent.extra.license.result_type"

.field public static final EXTRA_LICENSE_STATUS:Ljava/lang/String; = "edm.intent.extra.license.status"

.field public static final LICENSE_LOG_API:Ljava/lang/String; = "api_call"

.field public static final LICENSE_LOG_DATE:Ljava/lang/String; = "log_date"

.field public static final LICENSE_PERMISSIONS:Ljava/lang/String; = "Permissions"

.field public static final LICENSE_RESULT_TYPE_ACTIVATION:I = 0x320

.field public static final LICENSE_RESULT_TYPE_VALIDATION:I = 0x321

.field private static final TAG:Ljava/lang/String; = "SdpLicenseManager"

.field private static _instance:Lcom/sec/sdp/SdpLicenseManager;

.field private static lService:Landroid/app/enterprise/license/IEnterpriseLicense;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Landroid/app/enterprise/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/sdp/SdpLicenseManager;->_instance:Lcom/sec/sdp/SdpLicenseManager;

    sput-object v0, Lcom/sec/sdp/SdpLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    return-void
.end method

.method private constructor <init>(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/sdp/SdpLicenseManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/sdp/SdpLicenseManager;->mContextInfo:Landroid/app/enterprise/ContextInfo;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Lcom/sec/sdp/SdpLicenseManager;
    .locals 2

    const-class v1, Lcom/sec/sdp/SdpLicenseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/sdp/SdpLicenseManager;->_instance:Lcom/sec/sdp/SdpLicenseManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/sdp/SdpLicenseManager;

    invoke-direct {v0, p0, p1}, Lcom/sec/sdp/SdpLicenseManager;-><init>(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)V

    sput-object v0, Lcom/sec/sdp/SdpLicenseManager;->_instance:Lcom/sec/sdp/SdpLicenseManager;

    :cond_0
    sget-object v0, Lcom/sec/sdp/SdpLicenseManager;->_instance:Lcom/sec/sdp/SdpLicenseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/sdp/SdpLicenseManager;
    .locals 3

    const-class v2, Lcom/sec/sdp/SdpLicenseManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sec/sdp/SdpLicenseManager;->_instance:Lcom/sec/sdp/SdpLicenseManager;

    if-nez v1, :cond_0

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    new-instance v1, Lcom/sec/sdp/SdpLicenseManager;

    invoke-direct {v1, v0, p0}, Lcom/sec/sdp/SdpLicenseManager;-><init>(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/sec/sdp/SdpLicenseManager;->_instance:Lcom/sec/sdp/SdpLicenseManager;

    :cond_0
    sget-object v1, Lcom/sec/sdp/SdpLicenseManager;->_instance:Lcom/sec/sdp/SdpLicenseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private declared-synchronized getService()Landroid/app/enterprise/license/IEnterpriseLicense;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/sdp/SdpLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    if-nez v0, :cond_0

    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v0

    sput-object v0, Lcom/sec/sdp/SdpLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    :cond_0
    sget-object v0, Lcom/sec/sdp/SdpLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activateLicense(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/sec/sdp/SdpLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/sdp/SdpLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/sdp/SdpLicenseManager;->mContextInfo:Landroid/app/enterprise/ContextInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Landroid/app/enterprise/license/IEnterpriseLicense;->activateLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SdpLicenseManager"

    const-string v2, "Failed to talk with License policy service..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public activateLicense(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/sec/sdp/SdpLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/sdp/SdpLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/sdp/SdpLicenseManager;->mContextInfo:Landroid/app/enterprise/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Landroid/app/enterprise/license/IEnterpriseLicense;->activateLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SdpLicenseManager"

    const-string v2, "Failed to talk with License policy service..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

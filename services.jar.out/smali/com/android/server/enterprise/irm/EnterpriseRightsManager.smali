.class public Lcom/android/server/enterprise/irm/EnterpriseRightsManager;
.super Lcom/sec/enterprise/knox/irm/IEnterpriseRightsManager$Stub;
.source "EnterpriseRightsManager.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/irm/EnterpriseRightsManager$1;,
        Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;,
        Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;,
        Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseIRMpolicyReciever;,
        Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final ENTERPRISE_IRM_PERMISSION:Ljava/lang/String; = "com.samsung.permission.knox.KNOX_IRM"

.field private static final IRM_ACTIVE_STATUS:I = 0x1

.field private static final IRM_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.IRM_SERVICE_BIND_ACTION"

.field private static final IRM_DEFAULT_STATUS:I = 0x0

.field private static final IRM_ISV_PERMISSION:Ljava/lang/String; = "com.samsung.permission.knox.KNOX_IRM_ISV"

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x30d40L

.field private static TAG:Ljava/lang/String;

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static irmAgentsInDB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIRMConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

.field private irmUtil:Lcom/sec/enterprise/knox/irm/IRMUtils;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIrmCCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;

.field private mIrmPCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;

.field private receiver:Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseIRMpolicyReciever;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z

    const-string v0, "EnterpriseRightsManagerService"

    sput-object v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIRMConnectionMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmAgentsInDB:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/irm/IEnterpriseRightsManager$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    iput-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmPCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;

    iput-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmCCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;

    iput-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmUtil:Lcom/sec/enterprise/knox/irm/IRMUtils;

    iput-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->receiver:Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseIRMpolicyReciever;

    sget-boolean v1, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v2, "EnterpriseIRMPolicy Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    :try_start_0
    new-instance v1, Lcom/sec/enterprise/knox/irm/IRMUtils;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/irm/IRMUtils;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmUtil:Lcom/sec/enterprise/knox/irm/IRMUtils;

    invoke-virtual {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->registerEnterpriseIRMpolicyReciever()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v2, "EnterpriseIRMPolicy Constructor >> Exception Occured"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private _addPackagesToAllowIRMBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->addBlacklistApps(ILjava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method private _addPackagesToAllowIRMWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->addWhitelistApps(ILjava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method private _getAvailableIRMVendors(Landroid/app/enterprise/ContextInfo;I)[Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v3, "In _getAvailableIRMVendors: IRMHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getIRMVendors(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method private _getIRMConfig(Landroid/app/enterprise/ContextInfo;I)Landroid/os/Bundle;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getIRMConfig(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private _getPackagesFromAllowIRMBlackList(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getBlacklistApps(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private _getPackagesFromAllowIRMWhiteList(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getWhitelistApps(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private _removePackagesFromAllowIRMBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->removeBlacklistApps(ILjava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method private _removePackagesFromAllowIRMWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->removeWhitelistApps(ILjava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method private _setActiveIRMVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v2, "In _setActiveIRMVendor: IRMHelper is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->setIRMAgentStatus(ILjava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private _setIRMConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->setIRMConfig(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIRMConnectionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmPCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmCCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/sec/enterprise/knox/irm/IRMUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmUtil:Lcom/sec/enterprise/knox/irm/IRMUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;I)Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIRMInterface(I)Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->bindToIRMService(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmAgentsInDB:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->isIRMPackage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getPackageMetaData(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private bindToIRMService(I)V
    .locals 22

    sget-boolean v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z

    if-eqz v17, :cond_0

    sget-object v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "In bindToIRMService: uId is: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v5, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;

    move/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;-><init>(I)V

    new-instance v9, Landroid/content/Intent;

    const-string v17, "com.samsung.android.IRM_SERVICE_BIND_ACTION"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-boolean v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z

    if-eqz v17, :cond_1

    sget-object v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "In bindToIRMService: action is: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v18, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v18

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    if-eqz v12, :cond_4

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v12, v9, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_2

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    sget-object v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "In bindToService: serviceInfo : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v19, "In bindToService: Got the component name, Binding to the service..."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v9, v5, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v17

    if-eqz v17, :cond_3

    sget-object v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v19, "In bindToService: Success >>> Bind IRM service"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v17, Ljava/util/concurrent/CountDownLatch;

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v20, 0x30d40

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v19, "In bindToService: CoutnDownLatch return false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v18

    return-void

    :catch_0
    move-exception v7

    sget-object v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v19, "In bindToService: InterruptedException"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    :cond_3
    :try_start_3
    sget-object v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v19, "In bindToService: Fail to bind to IRM service"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    sget-object v17, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v19, "In bindToService: PackageManager : Null"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private enforceIRMISVPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 1

    const-string v0, "com.samsung.permission.knox.KNOX_IRM_ISV"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceKnoxIRMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.samsung.permission.knox.KNOX_IRM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    if-nez p1, :cond_0

    new-instance p1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {p1, v4}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v3, v5, :cond_2

    :cond_1
    return-object p1

    :cond_2
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    or-int/lit8 v2, v2, 0x1

    :cond_3
    sget-object v5, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "is permission granted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v2, :cond_1

    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "does not have "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v1

    sget-object v5, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v6, "could not check calling permission"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getIRMInterface(I)Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIRMConnectionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIRMConnectionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->getIRMService()Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    return-object v0
.end method

.method private getPackageMetaData(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 7

    const/4 v3, 0x0

    sget-boolean v4, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackageMetaData: Get Installed packages for the userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x2080

    invoke-virtual {v4, v5, p2}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    sget-boolean v4, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackageMetaData: UserId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Number of Packages Installed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackageMetaData: Installed package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_6

    sget-boolean v3, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageMetaData: Application Meta data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_5
    :goto_0
    return-object v3

    :cond_6
    sget-boolean v4, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackageMetaData: Application info Null for Package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in UserID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCallingPackageBlackListed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v18

    const/16 v19, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    sget-object v18, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v19, "In isCallingPackageBlackListed callingPackage : SYSTEM_UID"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x0

    aget-object v6, v8, v18

    if-nez v6, :cond_1

    const/16 v18, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v16, v0

    const/4 v14, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    const/16 v19, 0x40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v6, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :goto_1
    if-eqz v14, :cond_2

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->_getPackagesFromAllowIRMWhiteList(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/enterprise/AppIdentity;

    invoke-virtual {v13}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v15

    const-string v18, "*"

    invoke-virtual {v13}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_4
    invoke-virtual {v13}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    if-eqz v15, :cond_5

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->_getPackagesFromAllowIRMBlackList(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/enterprise/AppIdentity;

    invoke-virtual {v13}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v15

    const-string v18, "*"

    invoke-virtual {v13}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/4 v11, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v13}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    if-eqz v15, :cond_a

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_a
    const/4 v12, 0x1

    goto :goto_2

    :cond_b
    if-nez v11, :cond_c

    if-nez v12, :cond_c

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_c
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method private isIRMPackage(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v3, "In isIRMPackage: IRMHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    return v1

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmAgentsInDB:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmAgentsInDB:Ljava/util/List;

    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v4, "In isIRMPackage: Retrieving List from DB"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getIRMVendors(I)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmAgentsInDB:Ljava/util/List;

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmAgentsInDB:Ljava/util/List;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmAgentsInDB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmAgentsInDB:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In isIRMPackage: DB contains Package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v3, "In isIRMPackage: No IRM vendors in the DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public addPackagesToAllowIRMBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->enforceKnoxIRMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v3, "In addPackagesToAllowIRMBlackList: IRMHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->_addPackagesToAllowIRMBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v1

    goto :goto_0
.end method

.method public addPackagesToAllowIRMWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->enforceKnoxIRMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v3, "In addPackagesToAllowIRMWhiteList: IRMHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->_addPackagesToAllowIRMWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v1

    goto :goto_0
.end method

.method public consume(Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;Landroid/os/Bundle;Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x0

    const/16 v8, 0x1010

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    sget-object v5, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " In consume : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :goto_1
    new-instance v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;-><init>(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)V

    iput-object p4, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmCCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;

    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmCCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;

    invoke-interface {v5, p2, v8}, Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;->onError(Landroid/net/Uri;I)V

    sget-object v5, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v6, "In consume: IRMHelper is not initialized"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v5, "Caller"

    invoke-virtual {p3, v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->isCallingPackageBlackListed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmCCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;

    const/16 v6, 0x101

    invoke-interface {v5, p2, v6}, Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;->onError(Landroid/net/Uri;I)V

    sget-object v5, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v6, "In consume: The calling package is blacklisted"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIRMInterface(I)Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    move-result-object v3

    if-nez v3, :cond_4

    sget-object v5, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v6, "In consume:  Consumption IRMInterface= Null, trying to bind the service......."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->bindToIRMService(I)V

    :cond_4
    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v6, "In consume: IRMHelper is not initialized"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIRMInterface(I)Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v5, "App_Office"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CALLER_PACKAGE_NAME"

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-interface {v3, p2, p3, v2}, Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;->doConsume(Landroid/net/Uri;Landroid/os/Bundle;Lcom/sec/enterprise/knox/irm/IIRMServiceAgentCallback;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmCCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;

    invoke-interface {v5, p2, v8}, Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;->onError(Landroid/net/Uri;I)V

    sget-object v5, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v6, "In consume:  Consumption IRMInterface = Null, could not bind "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x2

    const/16 v6, 0x10

    invoke-virtual {v2, v5, v9, v6}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->onError(ILandroid/net/Uri;I)V

    sget-object v5, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v6, "In consume: No file chosen!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getActiveIRMVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v1, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v2, " In getActiveIRMVendor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v2, "In getActiveIRMVendor: IRMHelper is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getActiveIRMVendor(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAvailableIRMVendors(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->enforceKnoxIRMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->_getAvailableIRMVendors(Landroid/app/enterprise/ContextInfo;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIRMConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->enforceKnoxIRMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v4, "In getIRMConfig: IRMHelper is not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->_getIRMConfig(Landroid/app/enterprise/ContextInfo;I)Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v0

    goto :goto_0
.end method

.method public getPackagesFromAllowIRMBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->enforceKnoxIRMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v3, "In getPackagesFromAllowIRMBlackList: IRMHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->_getPackagesFromAllowIRMBlackList(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getPackagesFromAllowIRMWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->enforceKnoxIRMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v3, "In getPackagesFromAllowIRMWhiteList: IRMHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->_getPackagesFromAllowIRMWhiteList(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
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

.method public protect(Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;Landroid/os/Bundle;Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    sget-object v12, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " In doProtect : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct/range {p3 .. p3}, Landroid/os/Bundle;-><init>()V

    :goto_1
    iget-object v12, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    sget-object v12, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Caller : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " and callingApp: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;-><init>(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)V

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmPCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->isCallingPackageBlackListed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmPCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;

    const/4 v13, 0x0

    const/16 v14, 0x101

    invoke-interface {v12, v13, v14}, Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;->onError(Landroid/net/Uri;I)V

    sget-object v12, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v13, "In doProtect: The calling package is blacklisted"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v12, "Caller"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIRMInterface(I)Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    move-result-object v6

    if-nez v6, :cond_3

    sget-object v12, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v13, "In doProtect:  Protection IRMInterface= Null, trying to bind the service......."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->bindToIRMService(I)V

    :cond_3
    if-eqz p2, :cond_c

    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v12

    if-nez v12, :cond_4

    sget-object v12, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v13, "In doProtect: IRMHelper is not initialized"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v12, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v12, v11}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getActiveIRMVendor(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v12, "com.samsung.android.irm.agent"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v12, v11}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getDefaultRightsInfo(I)Lcom/sec/enterprise/knox/irm/RightsInfo;

    move-result-object v9

    sget-object v12, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "In doProtect: Default Rights = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    const-string/jumbo v12, "rights"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_5
    if-eqz p3, :cond_7

    const-string/jumbo v12, "fileUri"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    const-string v12, "action"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "IRM_REPLY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "action"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "IRM_COMPOSE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    const-string/jumbo v12, "fileUri"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v12, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "doProtect:on Reply/Forward >>> Retrieving template Id from DB for File: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_a

    iget-object v12, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v12, v8}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getTemplateIdForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v12, v8}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getTemplateIdForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    invoke-virtual {v12, v8}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getIsOwner(Ljava/lang/String;)Z

    move-result v7

    sget-object v12, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "doProtect: on Reply/Forward >>> Template Id"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from DB for File: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for the orginal File: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with isOwner: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "templateId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "isOwner"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    :goto_2
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIRMInterface(I)Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v12, "App_Office"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "CALLER_PACKAGE_NAME"

    const/4 v13, 0x0

    aget-object v13, v3, v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v6, v0, v1, v5}, Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;->doProtect(Landroid/net/Uri;Landroid/os/Bundle;Lcom/sec/enterprise/knox/irm/IIRMServiceAgentCallback;)Z

    goto/16 :goto_0

    :cond_9
    sget-object v12, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v13, "doProtect: onReply/Forward >>> Custom protection, will be done Later"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    sget-object v12, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v13, "doProtect: onReply/Forward >>> Consumed file entry missing in DB"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    iget-object v12, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmPCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;

    const/16 v13, 0x1010

    move-object/from16 v0, p2

    invoke-interface {v12, v0, v13}, Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;->onError(Landroid/net/Uri;I)V

    sget-object v12, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v13, "In doProtect:  Protection IRMInterface= Null, Service could not bind"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    iget-object v12, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmPCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;

    const/4 v13, 0x0

    const/16 v14, 0x10

    invoke-interface {v12, v13, v14}, Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;->onError(Landroid/net/Uri;I)V

    sget-object v12, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v13, "In doProtect: No file chosen!!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public registerEnterpriseIRMpolicyReciever()V
    .locals 6

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEnterpriseIRMpolicyReciever - Binding the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseIRMpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseIRMpolicyReciever;-><init>(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)V

    iput-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->receiver:Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseIRMpolicyReciever;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->receiver:Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseIRMpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public removePackagesFromAllowIRMBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->enforceKnoxIRMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v3, "In removePackagesFromAllowIRMBlackList: IRMHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->_removePackagesFromAllowIRMBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v1

    goto :goto_0
.end method

.method public removePackagesFromAllowIRMWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->enforceKnoxIRMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v3, "In removePackagesFromAllowIRMWhiteList: IRMHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->_removePackagesFromAllowIRMWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v1

    goto :goto_0
.end method

.method public setActiveIRMVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->enforceKnoxIRMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->_setActiveIRMVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method

.method public setIRMConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->enforceKnoxIRMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;

    const-string v4, "In setIRMConfig: IRMHelper is not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->_setIRMConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;I)Z

    move-result v0

    move v2, v0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

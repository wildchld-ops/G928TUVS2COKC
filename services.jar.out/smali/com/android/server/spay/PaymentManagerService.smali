.class public Lcom/android/server/spay/PaymentManagerService;
.super Landroid/spay/IPaymentManager$Stub;
.source "PaymentManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final MOBI_CORE_INSTALL_PATH:Ljava/lang/String; = "/data/app/mcRegistry"

.field public static final PAYMENT_SERVICE_VERSION:I = 0x1

.field public static final SPAYFW_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.spayfw"

.field public static final TAG:Ljava/lang/String; = "PaymentManagerService"

.field public static final TA_TYPE_MOBICORE:I = 0x1

.field public static final TA_TYPE_QUALCOMM:I = 0x2

.field static final TIMA_MSR_FILE_NAME:Ljava/lang/String; = "/system/tima_measurement_info"

.field private static mContext:Landroid/content/Context; = null

.field public static mTAInstallPath:Ljava/lang/String; = null

.field public static final mTAType:I = 0x1


# instance fields
.field private mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const-string/jumbo v1, "ro.product_ship"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    const-string v0, "/data/app/mcRegistry"

    sput-object v0, Lcom/android/server/spay/PaymentManagerService;->mTAInstallPath:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/spay/IPaymentManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PaymentManagerService"

    const-string v1, "PaymentManagerService() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object p1, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/spay/PaymentManagerService;Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
    .locals 0

    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    return-object p1
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5

    const-string v1, "PaymentManagerService"

    sget-object v2, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const-string v2, "PaymentManagerService"

    const-string v3, "PaymentManagerService() - Invalid Caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_0
    const-string v2, "PaymentManagerService"

    const-string v3, "PaymentManagerService() - Valid Caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private disablePaymentFrameworkUpdateRemoval()V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v1, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v1

    const-string v4, "com.samsung.android.spayfw"

    invoke-virtual {v1, v4}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method


# virtual methods
.method public getMeasurementFile()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "getMeasurementFile"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "/system/tima_measurement_info"

    invoke-static {v0}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public installTA(Landroid/os/ParcelFileDescriptor;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v4, "installTA"

    invoke-static {v4}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    sget-object v4, Lcom/android/server/spay/PaymentManagerService;->mTAInstallPath:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/server/spay/Utils;->unzip(Ljava/io/FileInputStream;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v4, "PaymentManagerService"

    const-string v5, "Not able to install TA - unzip failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerSPayFW(Landroid/spay/PaymentTZServiceConfig;)Landroid/spay/PaymentTZServiceCommnInfo;
    .locals 12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget v0, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPid:I

    if-eq v5, v0, :cond_7

    const-string v0, "PaymentManagerService"

    const-string v1, "Registered Client Died. Need to Rebind"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v0, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    # invokes: Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V
    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->access$100(Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;)V

    :cond_0
    const-string/jumbo v0, "registerSPayFW"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "PaymentManagerService"

    const-string v1, "Inside registerSPayFW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/spay/PaymentTZServiceCommnInfo;

    invoke-direct {v3}, Landroid/spay/PaymentTZServiceCommnInfo;-><init>()V

    const/4 v0, 0x1

    iput v0, v3, Landroid/spay/PaymentTZServiceCommnInfo;->mServiceVersion:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v11, Lcom/android/server/spay/VisaTAController;

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Lcom/android/server/spay/VisaTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    iget-object v0, v3, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v9, Lcom/android/server/spay/MasterTAController;

    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Lcom/android/server/spay/MasterTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    iget-object v0, v3, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v6, Lcom/android/server/spay/AmexTAController;

    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/android/server/spay/AmexTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    iget-object v0, v3, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v10, Lcom/android/server/spay/PlccTAController;

    const/4 v0, 0x4

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Lcom/android/server/spay/PlccTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    iget-object v0, v3, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v8, Lcom/android/server/spay/KrccTAController;

    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lcom/android/server/spay/KrccTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    iget-object v0, v3, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v7, Lcom/android/server/spay/TAController;

    const/16 v0, 0x101

    const/16 v1, 0x101

    invoke-virtual {p1, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/android/server/spay/TAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    iget-object v0, v3, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-direct {p0}, Lcom/android/server/spay/PaymentManagerService;->disablePaymentFrameworkUpdateRemoval()V

    new-instance v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;-><init>(Lcom/android/server/spay/PaymentManagerService;Landroid/spay/PaymentTZServiceConfig;Landroid/spay/PaymentTZServiceCommnInfo;II)V

    iput-object v0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    :goto_0
    return-object v3

    :cond_7
    const-string v0, "PaymentManagerService"

    const-string v1, "Error: Framework App is already registered. Re-Registration not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

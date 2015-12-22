.class public Lcom/android/phone/ims/IMSCapabilityService;
.super Ljava/lang/Object;
.source "IMSCapabilityService.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

.field private static sInstance:Lcom/android/phone/ims/IMSCapabilityService;


# instance fields
.field private final FEATURE_MMTEL_VIDEO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/ims/IMSCapabilityService;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/phone/ims/IMSCapabilityService;->sInstance:Lcom/android/phone/ims/IMSCapabilityService;

    sput-object v0, Lcom/android/phone/ims/IMSCapabilityService;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lcom/android/phone/ims/IMSCapabilityService;->FEATURE_MMTEL_VIDEO:I

    sput-object p1, Lcom/android/phone/ims/IMSCapabilityService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSCapabilityService;->startImsConnection()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;
    .locals 0

    sput-object p0, Lcom/android/phone/ims/IMSCapabilityService;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    return-object p0
.end method

.method public static getInstance()Lcom/android/phone/ims/IMSCapabilityService;
    .locals 1

    sget-object v0, Lcom/android/phone/ims/IMSCapabilityService;->sInstance:Lcom/android/phone/ims/IMSCapabilityService;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/android/phone/ims/IMSCapabilityService;
    .locals 4

    const-class v1, Lcom/android/phone/ims/IMSCapabilityService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/ims/IMSCapabilityService;->sInstance:Lcom/android/phone/ims/IMSCapabilityService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/ims/IMSCapabilityService;

    invoke-direct {v0, p0}, Lcom/android/phone/ims/IMSCapabilityService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/ims/IMSCapabilityService;->sInstance:Lcom/android/phone/ims/IMSCapabilityService;

    :goto_0
    sget-object v0, Lcom/android/phone/ims/IMSCapabilityService;->sInstance:Lcom/android/phone/ims/IMSCapabilityService;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "[IMSCapabilityService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/ims/IMSCapabilityService;->sInstance:Lcom/android/phone/ims/IMSCapabilityService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCapabilities(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/android/phone/ims/IMSCapabilityService;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v1, "[IMSCapabilityService]"

    const-string v2, "Service connection fail.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v1, "[IMSCapabilityService]"

    const-string v2, "getCapabilitiesWithFeature.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/ims/IMSCapabilityService;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    const/16 v2, 0x2000

    invoke-interface {v1, p1, v2}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithFeature(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startImsConnection()V
    .locals 5

    const-string v1, "[IMSCapabilityService]"

    const-string v2, "startImsConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.imsservice.service.CapabilityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/phone/ims/IMSCapabilityService;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/ims/IMSCapabilityService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/phone/ims/IMSCapabilityService$1;

    invoke-direct {v2, p0}, Lcom/android/phone/ims/IMSCapabilityService$1;-><init>(Lcom/android/phone/ims/IMSCapabilityService;)V

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :cond_0
    return-void
.end method

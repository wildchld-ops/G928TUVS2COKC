.class public Lcom/android/server/enterprise/otp/OTPService;
.super Lcom/sec/enterprise/knox/otp/IOTPService$Stub;
.source "OTPService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static OTP_CURRENT_VERSION:Ljava/lang/String; = null

.field private static final OTP_VERSION_1_2_0:Ljava/lang/String; = "1.2.0"

.field private static final SYSTEM_PROP_OTP:Ljava/lang/String; = "sys.enterprise.otp.version"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "1.1.1"

    sput-object v0, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/enterprise/knox/otp/IOTPService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTPService::Constructor: ENTER ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/enterprise/otp/OTPService;->otpLoadServer()I

    invoke-direct {p0}, Lcom/android/server/enterprise/otp/OTPService;->setupIntentFilter()V

    return-void
.end method

.method private checkOTPVersion(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getKnoxVersion()Landroid/os/PersonaManager$KnoxContainerVersion;
    .locals 2

    const-string/jumbo v1, "getKnoxVersion ENTER"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v0

    return-object v0
.end method

.method private handleDBUpgrade()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    return-void
.end method

.method private setOtpVersion()V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOtpVersion OTPSecProdFeatureMonitor.isOTPFeatureSupported(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/otp/OTPService;->getKnoxVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOtpVersion knoxVersion :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_1

    const-string v1, "1.2.0"

    sput-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOtpVersion setting OTP_CURRENT_VERSION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    const-string/jumbo v1, "sys.enterprise.otp.version"

    sget-object v2, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOtpVersion SystemProperties.get(SYSTEM_PROP_OTP, null): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sys.enterprise.otp.version"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_2

    const-string v1, "1.1.1"

    sput-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "1.0.0"

    sput-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "setOtpVersion knoxVersion :  NULL"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    const-string v1, "1.0.0"

    sput-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupIntentFilter()V
    .locals 11

    const/4 v4, 0x0

    const-string v0, "OTPService:: setup intent filter is called"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/otp/PackageRemovalReceiver;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/PackageRemovalReceiver;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v6, Lcom/android/server/enterprise/otp/OTPTimeChangeLogger;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/OTPTimeChangeLogger;-><init>()V

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public createOtpToken(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v6, "OTPService::createOtpToken: ENTER"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/common/Print;->printBundle(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const-string v6, "OTPService::createOtpToken: Invalid input."

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    :goto_0
    return-object v5

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "OTPService::createOtpToken: Skip operation. DB Upgrade active."

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    const-string v7, "OTP_TOKEN_ID"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyCreateAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "OTP_TOKEN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string v6, "ENCRYPTION_KEY_TYPE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x152

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->validateCertificateHash(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "SECRET_ENCRYPTION_ALGO"

    const/16 v7, 0x186

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const-string v6, "OTP_OATH_PROVISIONING_TYPE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x120

    if-ne v4, v6, :cond_6

    new-instance v3, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;-><init>(Landroid/content/Context;)V

    :cond_4
    :goto_1
    if-eqz v3, :cond_9

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v1, v6, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v6, "OTP_TOKEN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x400

    if-le v6, v7, :cond_7

    const-string v6, "OTPService::createOtpToken: The max allowed sixe of Token ID is exceeded"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    const/16 v7, 0x410

    invoke-static {v6, v5, v0, v1, v7}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_5
    const-string v6, "OTP_TOKEN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0x121

    if-ne v4, v6, :cond_4

    new-instance v3, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_8
    if-nez v2, :cond_a

    invoke-interface {v3, p1}, Lcom/android/server/enterprise/otp/engine/provision/IProvision;->doProvision(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::createOtpToken: EXIT ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::createOtpToken: token already exist with tokenId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for calling pkg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    const/16 v7, 0x403

    invoke-static {v6, v5, v0, v1, v7}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0
.end method

.method public generateOtp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::generateOtp ENTER [tokenId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "OTPService::generateOtp: Skip operation. DB Upgrade active."

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v3, :cond_1

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v8, v9, v2, v10, v6}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    move-object v6, v7

    :goto_1
    return-object v6

    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Token is corrupted. Delete the token and try creating it"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v6

    move-object v7, v6

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v3, :cond_c

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v8, v9, v2, v10, v6}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_3
    throw v7

    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::generateOtp: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    :cond_5
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyGenerateAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::generateOtp - verifyCall return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    if-eqz v4, :cond_6

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    :cond_6
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getAlgorithmType()I

    move-result v0

    const-string v6, "OTP_OATH_PROTOCOL"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v6, 0x102

    if-ne v0, v6, :cond_7

    const-string v6, "OTP_PARAM"

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getTimeStep()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "OCRA_PIN"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "OCRA_SESSION"

    invoke-virtual {v1, v6, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "OCRA_CHALLENGE"

    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "SDK_VERSION_DEFINED"

    const-string v7, "1.0.0"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isGenerateOtpInputValid(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::generateOtp - isGnerateOtpInputValid() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    if-eqz v4, :cond_8

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    :cond_8
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->generateOtp(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->incrementTransactionCount(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    :cond_9
    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v3, :cond_b

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v7, v8, v2, v9, v6}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_a
    move-object v6, v3

    goto/16 :goto_1

    :cond_b
    const/4 v6, 0x1

    goto :goto_3

    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_2
.end method

.method public generateOtpEx(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OTPService::generateOtpEx Enter - token Id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "OTPService::generateOtpEx: Skip operation. DB Upgrade active."

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v10, v11, v3, v8, v7}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    move-object v7, v9

    :goto_1
    return-object v7

    :cond_1
    move v7, v8

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Token is corrupted. Delete the token and try creating it"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v9

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    if-nez v4, :cond_e

    :goto_2
    invoke-virtual {v10, v11, v3, v8, v7}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_3
    throw v9

    :cond_4
    :try_start_2
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OTPService::generateOtpEx: Token doesn\'t exist for given vendor TokenId = %s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    :cond_5
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v9, v3}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyGenerateAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OTPService::generateOtpEx - verifyCall return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    if-eqz v5, :cond_6

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    :cond_6
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v9, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getAlgorithmType()I

    move-result v0

    const-string v9, "OTP_OATH_PROTOCOL"

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v9, 0x102

    if-ne v0, v9, :cond_8

    if-nez p2, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OTPService::generateOtpEx - input bundle is null for OCRA return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Bundle passed is null for OCRA. Please pass a proper bundle"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    const-string v9, "OTP_PARAM"

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getTimeStep()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "OCRA_PIN"

    const-string v10, "OCRA_STRING_PIN"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "OCRA_SESSION"

    const-string v10, "OCRA_STRING_SESSION"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v9, "OCRA_HEXSTRING_CHALLENGE"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v9, "OCRA_CHALLENGE"

    invoke-virtual {v1, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v9, "SDK_VERSION_DEFINED"

    sget-object v10, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, v3, v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isGenerateOtpInputValid(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OTPService::generateOtpEx - isGnerateOtpInputValid() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    if-eqz v5, :cond_9

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    :cond_9
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->generateOtp(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->incrementTransactionCount(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    :cond_a
    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    if-nez v4, :cond_d

    :goto_4
    invoke-virtual {v9, v10, v3, v8, v7}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_b
    move-object v7, v4

    goto/16 :goto_1

    :cond_c
    :try_start_3
    const-string v9, "OCRA_CHALLENGE"

    const-string v10, "OCRA_BYTEARRAY_CHALLENGE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_d
    move v7, v8

    goto :goto_4

    :cond_e
    move v7, v8

    goto/16 :goto_2
.end method

.method public getDerivedKey(Ljava/lang/String;Landroid/os/Bundle;)[B
    .locals 6

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v3, "OTPService::getDerivedKey: Invalid input."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OTPService::getDerivedKey: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getDerivedKey Enter [tokenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getDerivedKey Enter [keyParams = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::generateOtp: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "CRYPTO_KDF_TYPE"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v0, v4, v5}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyCryptoAccess(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getDerivedKey(Ljava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getDerivedKey - caller verification failed [Error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getHmac(Ljava/lang/String;I[B)[B
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v3, "OTPService::getHmac: Invalid input."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OTPService::getHmac: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getHmac Enter [type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::generateOtp: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v0, v4, p2}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyCryptoAccess(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getHmac(Ljava/lang/String;I[B)[B

    move-result-object v2

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getHmac - caller verification failed [Error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOtpCertificate()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v2, 0x40e

    const-string v1, "OTPService::getOtpCertificate Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OTPService::getOtpCertificate: Skip operation. DB Upgrade active."

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyProvisionPermission(Landroid/content/Context;)Z

    const-string v1, "1.2.0"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/otp/OTPService;->checkOTPVersion(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getCertificate()[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "OTPService::getOtpCertificate returned null : Throwing UnsupportedOperationException"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    goto :goto_0
.end method

.method public getOtpSDKVersion()Ljava/lang/String;
    .locals 3

    const-string v1, "OTPService::getOtpSDKVersion | Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const-string/jumbo v1, "sys.enterprise.otp.version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OTPService::getOtpSDKVersion | SystemProperties [version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOtpTokenList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/otp/common/OTPToken;",
            ">;"
        }
    .end annotation

    const-string v4, "OTPService::getOtpTokenList Enter"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OTPService::getOtpTokenList: Skip operation. DB Upgrade active."

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v2, v4, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v2}, Lcom/android/server/enterprise/otp/CallerVerification;->fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpTokenList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OTPService::getOtpTokenList: EXIT [Package name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Container Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[Tokens Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTPService::onAdminAdded | Enter [uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved | Enter [uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved | user id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    if-nez v5, :cond_1

    const-string v6, "OTPService::onAdminRemoved Ignoring call for containerId 0"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpTokensInContainer(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved removed token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in TZ"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved removed token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in OTP DB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved remove failed for token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in TZ"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved remove failed for token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v6, "OTPService::onAdminRemoved No OTP Tokens for removed container/vendor"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPreAdminRemoval(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTPService::onPreAdminRemoval | Enter [uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized otpLoadServer()I
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    const-string v1, "OTPService::otpLoadServer Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const-string v1, "OTP"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "OTPService:: otp_server already loaded"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    const-string/jumbo v1, "persist.security.tlc.otp"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OTPService:: Start otp_server for OTP done : setprop"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeOtpToken(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::removeOtpToken: ENTER [tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OTPService::removeOtpToken: Skip operation. DB Upgrade active."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v1, 0x4ff

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyAdminAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    :goto_1
    const/16 v2, 0x40d

    if-ne v2, v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::removeOtpToken: TlcHandler deleteToken [ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    move-result v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::removeOtpToken: EXIT [result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x408

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::removeOtpToken: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resyncOtpToken(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::resyncOtpToken: ENTER [tokenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/otp/engine/common/Print;->printBundle(Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    const-string v3, "OTPService::resyncOtpToken: Invalid input."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v2, 0x401

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OTPService::resyncOtpToken: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v2, 0x4ff

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyAdminAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    :goto_1
    const-string v3, "ENCRYPTION_KEY_TYPE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x152

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->validateCertificateHash(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v3, "SECRET_ENCRYPTION_ALGO"

    const/16 v4, 0x186

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    if-nez v2, :cond_3

    const/4 v1, 0x0

    const-string v3, "OTP_OATH_PROVISIONING_TYPE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x120

    if-ne v3, v4, :cond_5

    new-instance v1, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;-><init>(Landroid/content/Context;)V

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1, v0, p2}, Lcom/android/server/enterprise/otp/engine/provision/IProvision;->doResync(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::resyncOtpToken: EXIT [result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x408

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::resyncOtpToken: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::resyncOtpToken: Not Supported for Provisioning Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OTP_OATH_PROVISIONING_TYPE"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v2, 0x404

    goto :goto_2
.end method

.method public systemReady()V
    .locals 3

    const-string v0, "OTPService::systemReady | Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady OTPSecProdFeatureMonitor.isOTPFeatureSupported(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/otp/OTPService;->setOtpVersion()V

    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sys.enterprise.otp.version"

    sget-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady SystemProperties.get(SYSTEM_PROP_BILLING, null): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sys.enterprise.otp.version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/otp/OTPService;->handleDBUpgrade()V

    :cond_0
    return-void
.end method

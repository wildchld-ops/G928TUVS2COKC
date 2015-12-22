.class public Lcom/android/server/telecom/TelecomService;
.super Landroid/app/Service;
.source "TelecomService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/TelecomService$1;,
        Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;,
        Lcom/android/server/telecom/TelecomService$MainThreadHandler;,
        Lcom/android/server/telecom/TelecomService$MainThreadRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mContext:Landroid/content/Context;

.field private final mMainThreadHandler:Lcom/android/server/telecom/TelecomService$MainThreadHandler;

.field private mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

.field private mServiceImpl:Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/TelecomService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/TelecomService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/server/telecom/TelecomService$MainThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/TelecomService$MainThreadHandler;-><init>(Lcom/android/server/telecom/TelecomService;Lcom/android/server/telecom/TelecomService$1;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomService;->mMainThreadHandler:Lcom/android/server/telecom/TelecomService$MainThreadHandler;

    return-void
.end method

.method private acceptRingingCallInternal()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v1, v3, [I

    const/4 v2, 0x4

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v0, "acceptRingingCall...sendBroadcast intent"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.skt.prod.phone.intent.action.HOME_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/TelecomService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->answer(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "answerRingingCallInUI "

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecInCallController;->answerRingingCallInUI()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/TelecomService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/CallsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/TelecomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->enforceModifyPermission()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/telecom/TelecomService;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomService;->filterForAccountsVisibleToCaller(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccount;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccount;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/telecom/TelecomService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomService;->enforcePhoneAccountModificationForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/telecom/TelecomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->enforceRegisterCallProviderPermission()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/telecom/TelecomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->enforceRegisterSimSubscriptionPermission()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/telecom/TelecomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->enforceRegisterConnectionManagerPermission()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/telecom/TelecomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->enforceRegisterMultiUser()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomService;->enforceUserHandleMatchesCaller(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/TelecomService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomService;->showCallScreenInternal(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/telecom/TelecomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->enforceReadPermissionOrDefaultDialer()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/telecom/TelecomService;)Landroid/telephony/TelephonyManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/telecom/TelecomService;II)Lcom/android/server/telecom/TelecomService$MainThreadRequest;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/TelecomService;->sendRequestAsync(II)Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/telecom/TelecomService;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomService;->sendRequest(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/telecom/TelecomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->enforceModifyPermissionOrDefaultDialer()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/telecom/TelecomService;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/telecom/TelecomService;IILjava/lang/Object;)Lcom/android/server/telecom/TelecomService$MainThreadRequest;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/telecom/TelecomService;->sendRequestAsync(IILjava/lang/Object;)Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/TelecomService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->endCallInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/TelecomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->acceptRingingCallInternal()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/MissedCallNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/telecom/TelecomService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/TelecomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->enforceReadPermission()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    return-object v0
.end method

.method private endCallInternal()Z
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "endCallInternal "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/telecom/Call;->reject(ZLjava/lang/String;)V

    :goto_0
    return v0

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 4
        0x5
        0x3
        0x4
        0x6
    .end array-data
.end method

.method private enforceCallingPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void
.end method

.method private enforceConnectionServiceFeature()V
    .locals 1

    const-string v0, "android.software.connectionservice"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomService;->enforceFeature(Ljava/lang/String;)V

    return-void
.end method

.method private enforceFeature(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System does not support feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private enforceModifyPermission()V
    .locals 1

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomService;->enforcePermission(Ljava/lang/String;)V

    return-void
.end method

.method private enforceModifyPermissionOrDefaultDialer()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->isDefaultDialerCalling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->enforceModifyPermission()V

    :cond_0
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforcePhoneAccountModificationForPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->enforceConnectionServiceFeature()V

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomService;->enforceCallingPackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private enforceReadPermission()V
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomService;->enforcePermission(Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadPermissionOrDefaultDialer()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->isDefaultDialerCalling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->enforceReadPermission()V

    :cond_0
    return-void
.end method

.method private enforceRegisterCallProviderPermission()V
    .locals 1

    const-string v0, "android.permission.REGISTER_CALL_PROVIDER"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomService;->enforcePermission(Ljava/lang/String;)V

    return-void
.end method

.method private enforceRegisterConnectionManagerPermission()V
    .locals 1

    const-string v0, "android.permission.REGISTER_CONNECTION_MANAGER"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomService;->enforcePermission(Ljava/lang/String;)V

    return-void
.end method

.method private enforceRegisterMultiUser()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->isCallerSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "CAPABILITY_MULTI_USER is only available to system apps."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private enforceRegisterSimSubscriptionPermission()V
    .locals 1

    const-string v0, "android.permission.REGISTER_SIM_SUBSCRIPTION"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomService;->enforcePermission(Ljava/lang/String;)V

    return-void
.end method

.method private enforceUserHandleMatchesCaller(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Calling UserHandle does not match PhoneAccountHandle\'s"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private filterForAccountsVisibleToCaller(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getDefaultPhoneAppInternal()Landroid/content/ComponentName;
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const v2, 0x7f080002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private isCallerSystemApp()Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/telecom/TelecomService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-direct {p0, v4}, Lcom/android/server/telecom/TelecomService;->isPackageSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isDefaultDialerCalling()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->getDefaultPhoneAppInternal()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.wms"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/android/server/telecom/TelecomService;->TAG:Ljava/lang/String;

    const-string v3, "Skip default dialer check routine when gear fit manager"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/telecom/TelecomService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/server/telecom/TelecomService;->TAG:Ljava/lang/String;

    const-string v2, "Could not get default dialer."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isPackageSystemApp(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisibleToCaller(Landroid/telecom/PhoneAccount;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService;->isCallerSystemApp()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private isVisibleToCaller(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountInternal(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccount;)Z

    move-result v0

    goto :goto_0
.end method

.method private sendRequest(I)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService;->mMainThreadHandler:Lcom/android/server/telecom/TelecomService$MainThreadHandler;

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/telecom/TelecomService$MainThreadRequest;-><init>(Lcom/android/server/telecom/TelecomService$1;)V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService;->mMainThreadHandler:Lcom/android/server/telecom/TelecomService$MainThreadHandler;

    iget-object v2, p0, Lcom/android/server/telecom/TelecomService;->mMainThreadHandler:Lcom/android/server/telecom/TelecomService$MainThreadHandler;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, v0, Lcom/android/server/telecom/TelecomService$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/TelecomService;->sendRequestAsync(II)Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    move-result-object v1

    monitor-enter v1

    :goto_1
    :try_start_0
    iget-object v0, v1, Lcom/android/server/telecom/TelecomService$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/android/server/telecom/TelecomService$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private sendRequestAsync(II)Lcom/android/server/telecom/TelecomService$MainThreadRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/telecom/TelecomService;->sendRequestAsync(IILjava/lang/Object;)Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    move-result-object v0

    return-object v0
.end method

.method private sendRequestAsync(IILjava/lang/Object;)Lcom/android/server/telecom/TelecomService$MainThreadRequest;
    .locals 3

    new-instance v0, Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/telecom/TelecomService$MainThreadRequest;-><init>(Lcom/android/server/telecom/TelecomService$1;)V

    iput-object p3, v0, Lcom/android/server/telecom/TelecomService$MainThreadRequest;->arg:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService;->mMainThreadHandler:Lcom/android/server/telecom/TelecomService$MainThreadHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-object v0
.end method

.method private showCallScreenInternal(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarrierPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRelaxMode(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_0
    const-string v1, "showInCallScreen - carrier-phone"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->requestTPhoneStart(Lcom/android/server/telecom/Call;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/android/services/telephony/common/SystemDBInterface;->setOllehPhoneRelaxMode(I)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->requestOllehPhoneStart(Lcom/android/server/telecom/Call;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getInCallController()Lcom/android/server/telecom/InCallController;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "showCallScreenInternal "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getInCallController()Lcom/android/server/telecom/InCallController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/InCallController;->bringToForeground(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "onBind"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mServiceImpl:Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "support_folder_dual_lcd"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isFolderOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->setFolderOpen()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isFolderOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->setFolderClose()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "onCreate"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p0, p0, Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/telecom/TelecomService;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;-><init>(Lcom/android/server/telecom/TelecomService;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomService;->mServiceImpl:Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/TelecomGlobals;->initialize(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/telecom/TelecomService;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/telecom/TelecomService;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/TelecomService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->init(Landroid/content/Context;)V

    const-string v0, "support_folder_hardkey"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v3, :cond_1

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->setFolderState(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->setFolderState(Z)V

    goto :goto_0
.end method

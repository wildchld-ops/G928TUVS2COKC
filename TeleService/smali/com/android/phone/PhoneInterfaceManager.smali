.class public Lcom/android/phone/PhoneInterfaceManager;
.super Lcom/android/internal/telephony/ITelephony$Stub;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManager$1;,
        Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;,
        Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;,
        Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;,
        Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;,
        Lcom/android/phone/PhoneInterfaceManager$UiccOperation;,
        Lcom/android/phone/PhoneInterfaceManager$UnlockSim;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;,
        Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;,
        Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    }
.end annotation


# static fields
.field private static mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

.field private static messengerNSRI:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

.field private static sInstance:Lcom/android/phone/PhoneInterfaceManager;

.field private static smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;


# instance fields
.field carrierPrivilegeConfigs:Landroid/content/SharedPreferences;

.field mApp:Lcom/android/phone/PhoneGlobals;

.field mAppOps:Landroid/app/AppOpsManager;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mGetHandsetInfo:Ljava/lang/reflect/Method;

.field mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mTelephonySharedPreferences:Landroid/content/SharedPreferences;

.field private final mUpKnightLock:Ljava/lang/Object;

.field private op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

.field private scCmdResult:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephony$Stub;-><init>()V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mUpKnightLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->carrierPrivilegeConfigs:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->publish()V

    :try_start_0
    const-class v0, Lcom/android/internal/telephony/Phone;

    const-string v1, "getHandsetInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneInterfaceManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneInterfaceManager;I)Lcom/android/internal/telephony/Phone;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;I)V

    return-void
.end method

.method private answerRingingCallInternal(I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "answerRingingCallInternal..."

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternalMultiSim()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    :goto_1
    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v3

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v3

    :goto_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method private answerRingingCallInternalMultiSim()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    :goto_0
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_2

    move v0, v4

    :goto_1
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_3

    move v1, v4

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_3
.end method

.method private static checkIfCallerIsSelfOrForegroundUser()Z
    .locals 10

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    if-ne v8, v9, :cond_0

    move v6, v3

    :goto_0
    if-nez v6, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return v3

    :cond_0
    move v6, v7

    goto :goto_0

    :cond_1
    move v3, v7

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_2
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private enforceCallPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceCarrierPrivilege()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCarrierPrivilegeStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "No Carrier Privilege."

    invoke-static {v0}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No Carrier Privilege."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private enforceModifyPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceModifyPermissionOrCarrierPrivilege()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v1, "No modify permission, check carrier privilege next."

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCarrierPrivilegeStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "No Carrier Privilege."

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No modify permission or carrier privilege."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceReadPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    :goto_0
    sget-object v1, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v1, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    return-object v1

    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0
.end method

.method private getDefaultSubscription()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method private getIccId(I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "getIccId: No UICC"

    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "getIccId: ICC ID is null or empty."

    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 3

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    return-object v2
.end method

.method private getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferredVoiceSubscription()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v0

    return v0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;
    .locals 4

    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/PhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    :goto_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

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

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-direct {p0, p3}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method private isInCallUIDisplay()Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v7, 0x7fffffff

    :try_start_0
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "com.android.incallui.service.IncomingPopupService"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return v5

    :catch_0
    move-exception v1

    const-string v5, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isInCallUIDisplay service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.android.incallui.InCallActivity"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isInCallUIDisplay activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private publish()V
    .locals 1

    const-string v0, "phone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private shutdownRadioUsingPhoneId(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->shutdownRadio()V

    :cond_0
    return-void
.end method


# virtual methods
.method public IsDomesticRoaming()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    return v0
.end method

.method public IsInternationalRoaming()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v0

    return v0
.end method

.method public NSRI_requestProc(I[B)[B
    .locals 4

    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->messengerNSRIStart()V

    const-string v0, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NSRI_Messenger] NSRI_requestProc() ==START==  datalen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    invoke-virtual {v0, p2, p1}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->commonNSRIRequestProcCmd([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    const-string v0, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NSRI_Messenger] NSRI_requestProc()  ==END== retResult.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public SimSlotActivation(Z)V
    .locals 0

    return-void
.end method

.method public SimSlotOnOff(I)V
    .locals 0

    return-void
.end method

.method public answerRingingCall()V
    .locals 1

    const-string v0, "answerRingingCall..."

    invoke-static {v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallForSubscriber(I)V

    return-void
.end method

.method public answerRingingCallAndHangUpActive()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    const-string v4, "answerRingingCallAndHangUpActive"

    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_1

    if-ne v2, v5, :cond_1

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v5, :cond_2

    if-ne v2, v5, :cond_2

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    :cond_2
    if-eq v2, v6, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x5

    if-eq v2, v4, :cond_3

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v6, :cond_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method public answerRingingCallForSubscriber(I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->isInCallUIDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->answerRingingCallInUI()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public calculateAkaResponse([B[B)Ljava/lang/String;
    .locals 3

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "calculateAkaResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "UICC operation start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->calculateAka([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/4 v11, 0x0

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getAid()Ljava/lang/String;

    move-result-object v11

    :cond_0
    const/16 v17, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/phone/PhoneInterfaceManager;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DD10"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "10"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v15, v3, 0x2

    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " calculateGbaBootstrappingResponse():request:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x88

    const/4 v7, 0x0

    const/16 v8, 0x84

    add-int/lit8 v9, v15, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/phone/PhoneInterfaceManager;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneInterfaceManager;->iccCloseLogicalChannel(I)Z

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v20

    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateGbaBootstrappingResponse:result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v20, :cond_1

    const/4 v3, 0x0

    aget-byte v3, v20, v3

    const/16 v4, -0x25

    if-eq v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    aget-byte v3, v20, v3

    if-nez v3, :cond_4

    :cond_2
    const/4 v3, 0x1

    aget-byte v18, v20, v3

    if-lez v18, :cond_3

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_3
    :goto_0
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v3, "res"

    move-object/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "auts"

    invoke-virtual {v14, v3, v12}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "PhoneInterfaceManager"

    const-string v4, "calculateGbaBootstrappingResponse()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14

    :cond_4
    const/4 v3, 0x0

    aget-byte v3, v20, v3

    const/16 v4, -0x24

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    aget-byte v13, v20, v3

    if-lez v13, :cond_3

    new-array v12, v13, [B

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v3, v12, v4, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public calculateNafExternalKey([B)[B
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/4 v9, 0x0

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getAid()Ljava/lang/String;

    move-result-object v9

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/phone/PhoneInterfaceManager;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v7, v1, 0x2

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " calculateNafExternalKey():request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x88

    const/4 v5, 0x0

    const/16 v6, 0x84

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/phone/PhoneInterfaceManager;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->iccCloseLogicalChannel(I)Z

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v15

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " calculateNafExternalKey(): result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    if-eqz v15, :cond_1

    const/4 v1, 0x0

    aget-byte v1, v15, v1

    const/16 v2, -0x25

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-byte v14, v15, v1

    if-lez v14, :cond_1

    new-array v0, v14, [B

    move-object/from16 v16, v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v15, v1, v0, v2, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_1
    return-object v16
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getPreferredVoiceSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->callForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public callForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0xd

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v7, v8, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v6, p1, :cond_2

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "subscription"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "checkCarrierPrivilegesForPackage: No UICC"

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public checkNSRIUSIMstate_int()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    const-string v1, "PhoneInterfaceManager"

    const-string v2, "[NSRI_SMS] create "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->start()V

    :cond_0
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "[NSRI_SMS] checkNSRIUsimCmd() ==START==  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->checkNSRIUsimCmd()I

    move-result v0

    return v0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getPreferredVoiceSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->dialForSubscriber(ILjava/lang/String;)V

    return-void
.end method

.method public dialForSubscriber(ILjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    const/4 v1, 0x1

    return v1
.end method

.method public disableLocationUpdates()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->disableLocationUpdatesForSubscriber(I)V

    return-void
.end method

.method public disableLocationUpdatesForSubscriber(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    return v2
.end method

.method public enableLocationUpdates()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->enableLocationUpdatesForSubscriber(I)V

    return-void
.end method

.method public enableLocationUpdatesForSubscriber(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    return-void
.end method

.method public enableVideoCalling(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_video_calling"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public endCall()Z
    .locals 1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getMultiSimForegroundPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->endCallForSubscriber(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->endCallForSubscriber(I)Z

    move-result v0

    goto :goto_0
.end method

.method public endCallForSubscriber(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    const/4 v0, 0x5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getActiveFgCallState()Z
    .locals 3

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    const-string v1, "PhoneInterfaceManager"

    const-string v2, "ForegroundCall is exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActivePhoneType()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getActivePhoneTypeForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getActivePhoneTypeForSubscriber(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->checkIfCallerIsSelfOrForegroundUser()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v6, v7, v1}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getAtr()[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getAtrUsingSlotId(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getAtrUsingSlotId(I)[B
    .locals 3

    const-string v1, "getAtr"

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const/16 v1, 0x23

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    return-object v0
.end method

.method public getCalculatedPreferredNetworkType()I
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getCallState()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getCallStateForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getCallStateForSubscriber(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v0

    return v0
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "getCarrierPackageNamesForIntent: No UICC"

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getCarrierPrivilegeStatus()I
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "getCarrierPrivilegeStatus: No UICC"

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result v1

    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaEriIconIndexForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndexForSubscriber(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaEriIconModeForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconModeForSubscriber(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaEriTextForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriTextForSubscriber(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCellLocation()Landroid/os/Bundle;
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->checkIfCallerIsSelfOrForegroundUser()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v9, :cond_3

    const-string v5, "CHC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CHU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CHM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CTC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "BRI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TGY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CWT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "FET"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TWM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CHZ"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    const-string v5, "ABSENT"

    const-string v6, "gsm.sim.state"

    const/4 v7, 0x0

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "READY"

    const-string v6, "gsm.sim.state"

    const-string v7, ""

    invoke-static {v6, v9, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "SIM2 Only Inserted"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v5, v6, v0}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public getCurrentUATI()[B
    .locals 6

    const-string v3, "PhoneInterfaceManager"

    const-string v4, "getCurrentUATI()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v3

    const/16 v4, 0xc

    const/16 v5, 0x17

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 2

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v1

    return v1
.end method

.method public getDataEnabled(I)Z
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataEnabled: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataEnabled()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataEnabled: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    :goto_1
    return v3

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v4, v5, v7}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataEnabled: no phone subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retVal=false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getDataNetworkType()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getDataNetworkTypeForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getDataNetworkTypeForSubscriber(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledUsingSubID(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getDataServiceStateUsingSubId(I)I

    move-result v0

    return v0
.end method

.method public getDataServiceStateUsingSubId(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 2

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    return v1
.end method

.method public getDataStateSimSlot(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v0

    return v0
.end method

.method public getDefaultSim()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEuimid()Ljava/lang/String;
    .locals 2

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "getEuimid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getEuimid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeliCaUimLockStatus(I)I
    .locals 4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "call getFeliCaUimLockStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IccCard;->getFeliCaUimLockStatus(I)I

    move-result v0

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result getFeliCaUimLockStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImei : Ex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const-string v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIpAddressFromLinkProp nwkType :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "MOBILE"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIpAddressFromLinkProp: inetAddress IP:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_2
    const-string v6, "0.0.0.0.0.0.0.0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "PhoneInterfaceManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getLgt3GDataStatus(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mobile_data"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "2"

    :goto_1
    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "0"

    goto :goto_1
.end method

.method public getLgtOzStartPage()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lgt_oz_startpage"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLine1AlphaTagForDisplay(I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carrier_alphtag_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public getLine1NumberForDisplay(I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carrier_number_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public getLteCellInfo()Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    const-string v6, "LGT"

    const-string v7, "TMO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const-string v6, "PhoneInterfaceManager"

    const-string v7, "getLteCellInfo() "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, v3, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    :cond_2
    :goto_2
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :catch_0
    move-exception v2

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v6, v7, v5}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    instance-of v5, v3, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getLteCellId()I

    move-result v1

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getLteTac()I

    move-result v4

    goto :goto_2
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getLteOnCdmaModeForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getLteOnCdmaModeForSubscriber(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMEID : Ex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMergedSubscriberIds()[Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v14

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v14}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v16

    move-object/from16 v2, v16

    array-length v7, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_0

    aget v15, v2, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v20, "carrier_subscriber_"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "carrier_subscriber_"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "carrier_number_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/4 v13, 0x0

    :goto_1
    return-object v13

    :cond_3
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v20, "carrier_number_"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const-string v20, "carrier_number_"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "carrier_subscriber_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-static {v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getMobileQualityInformation()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v2

    const/16 v3, 0x16

    const/16 v4, 0x25

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneInterfaceManager"

    const-string v3, "getMobileQualityInformation Good Job"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMultiSimForegroundPhoneId()I
    .locals 1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimForegroundPhoneId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiSimLastRejectIncomingCallPhoneId()I
    .locals 1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimLastRejectIncomingCallPhoneId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0xc

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return-object v1

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4, v1}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->checkIfCallerIsSelfOrForegroundUser()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-direct {p0, v3, v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNeighboringCellInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNetworkType()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkTypeForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeForSubscriber(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneServiceState()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkType()I
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    aget v0, v1, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRadioAccessFamily(I)I
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ProxyController;->getRadioAccessFamily(I)I

    move-result v0

    return v0
.end method

.method public getSdnAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSdnAvailable()Z

    move-result v0

    return v0
.end method

.method public getSelectedApn()Ljava/lang/String;
    .locals 3

    const-string v1, "CG"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GG"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGG"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSelectedApn()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServiceState()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getServiceStateUsingSubId(I)I

    move-result v0

    return v0
.end method

.method public getServiceStateUsingSubId(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getSimPinRetry()I
    .locals 2

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "getSimPinRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    return v0
.end method

.method public getSimPinRetryForSubscriber(I)I
    .locals 2

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "getSimPinRetryForSubscriber"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    return v0
.end method

.method public getSimPukRetry()I
    .locals 2

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk1RetryCount()I

    move-result v0

    return v0
.end method

.method public getSimPukRetryForSubscriber(I)I
    .locals 2

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "getSimPukRetryForSubscriber"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk1RetryCount()I

    move-result v0

    return v0
.end method

.method public getState(Lcom/android/internal/telephony/PhoneConstants$State;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getTetherApnRequired()I
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tether_dun_required"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->hasMatchedTetherApnSetting()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .locals 5

    const-string v2, "PhoneInterfaceManager"

    const-string v3, "getTimeInfo() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getVoiceMessageCountForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountForSubscriber(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getVoiceNetworkTypeForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkTypeForSubscriber(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    return v0
.end method

.method public getWipiSysInfo()Ljava/lang/String;
    .locals 5

    const-string v2, "PhoneInterfaceManager"

    const-string v3, "getWipiSysInfo() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v2

    const/16 v3, 0x16

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCardUsingSlotId(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCardUsingSlotId(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    aget v1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public iccCloseLogicalChannel(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/PhoneInterfaceManager;->iccCloseLogicalChannelUsingSlotId(II)Z

    move-result v0

    return v0
.end method

.method public iccCloseLogicalChannelUsingSlotId(II)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    if-gez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0xb

    new-instance v2, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;

    const-string v3, ""

    invoke-direct {v2, p1, v3, p2}, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager;->iccExchangeSimIOUsingSlotId(IIIIILjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public iccExchangeSimIOUsingSlotId(IIIIILjava/lang/String;I)[B
    .locals 13

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    const/16 v12, 0x1f

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    const/4 v1, -0x1

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;I)V

    invoke-direct {p0, v12, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v11, 0x0

    const/4 v9, 0x2

    iget-object v0, v10, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v0, v0

    add-int/lit8 v9, v0, 0x2

    new-array v11, v9, [B

    iget-object v0, v10, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v3, v3

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_0
    add-int/lit8 v0, v9, -0x1

    iget v1, v10, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    int-to-byte v1, v1

    aput-byte v1, v11, v0

    add-int/lit8 v0, v9, -0x2

    iget v1, v10, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    int-to-byte v1, v1

    aput-byte v1, v11, v0

    return-object v11

    :cond_0
    new-array v11, v9, [B

    goto :goto_0
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/PhoneInterfaceManager;->iccOpenLogicalChannelUsingSlotId(Ljava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0

    return-object v0
.end method

.method public iccOpenLogicalChannelUsingSlotId(Ljava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    const/16 v1, 0x9

    new-instance v2, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;

    const/4 v3, -0x1

    invoke-direct {v2, v3, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/IccOpenLogicalChannelResponse;

    return-object v0
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager;->iccTransmitApduBasicChannelUsingSlotId(IIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iccTransmitApduBasicChannelUsingSlotId(IIIIILjava/lang/String;I)Ljava/lang/String;
    .locals 12

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    const/16 v11, 0x1d

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;I)V

    invoke-direct {p0, v11, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccIoResult;

    new-instance v10, Ljava/lang/StringBuffer;

    iget v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/phone/PhoneInterfaceManager;->iccTransmitApduLogicalChannelUsingSlotId(IIIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iccTransmitApduLogicalChannelUsingSlotId(IIIIIILjava/lang/String;I)Ljava/lang/String;
    .locals 12

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    if-gez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v11, 0x7

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;I)V

    invoke-direct {p0, v11, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccIoResult;

    new-instance v10, Ljava/lang/StringBuffer;

    iget v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 9

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    const/4 v5, 0x0

    const/16 v6, 0x1b

    :try_start_0
    invoke-direct {p0, v6, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_1

    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    array-length v6, v3

    array-length v7, p2

    if-le v6, v7, :cond_0

    const-string v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Buffer to copy response too small: Response length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes. Buffer Size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v6, p2, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, v3

    :cond_1
    :goto_0
    return v5

    :cond_2
    iget-object v2, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_1

    mul-int/lit8 v5, v5, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "PhoneInterfaceManager"

    const-string v7, "sendOemRilRequestRaw: Runtime Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v5

    if-lez v5, :cond_1

    mul-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method

.method public isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v1

    return v1
.end method

.method public isDualBTConnection()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v0, v1, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDualBTConnection() bluetoothHeadset is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->isDualHfConnected()Z

    move-result v2

    goto :goto_1
.end method

.method public isIdle()Z
    .locals 1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getState(Lcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getState(Lcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isIdleForSubscriber(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isIdleForSubscriber(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImsCall()Z
    .locals 4

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isImsRegistered()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v0

    return v0
.end method

.method public isOffhook()Z
    .locals 1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getState(Lcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isOffhookForSubscriber(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isOffhookForSubscriber(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRadioOn()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnForSubscriber(I)Z

    move-result v0

    return v0
.end method

.method public isRadioOnForSubscriber(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getState(Lcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isRingingForSubscriber(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isRingingForSubscriber(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimFDNEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isSimFDNEnabledForSubscriber(I)Z

    move-result v0

    return v0
.end method

.method public isSimFDNEnabledForSubscriber(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FdnEnabled?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    return v0
.end method

.method public isSimPinEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isSimPinEnabled()Z

    move-result v0

    return v0
.end method

.method public isVideoCall()Z
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_0
    return v3

    :cond_3
    const-string v4, "us_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ee_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isVideoCallingEnabled()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "enable_video_calling"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public messengerNSRIStart()V
    .locals 2

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "[NSRI_Messenger] messengerNSRIStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->start()V

    :cond_0
    return-void
.end method

.method public needMobileRadioShutdown()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Phones are shutdown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->logv(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "NAME"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NUMBER"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LABEL"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DATE"

    invoke-virtual {v0, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.server.telecom.action.NOTIFY_MISSED_CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.server.telecom.extra.NOTIFY_MISSED_CALL_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public notifyVoIPCallStateChangeIntoBT()V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBluetoothVoIPService()Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyVoIPCallStateChangeIntoBT() bluetoothVoIP is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;->handleVoipCallStateChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RemoteException - handleVoipCallStateChange() cannot be accessed"

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    const/16 v1, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public nvResetConfig(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    const/16 v1, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    const/16 v1, 0x11

    invoke-direct {p0, v1, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    const/16 v1, 0xf

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    const/16 v2, 0x19

    invoke-direct {p0, v2, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v2, v2, 0x8

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v2, v3

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public sendRequestRawToRIL([BLandroid/os/Message;)I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendRequestToRIL([B[BI)I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, -0x4

    packed-switch p3, :pswitch_data_0

    const-string v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRequestToRIL: unexpected message code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    const/4 v4, 0x0

    goto :goto_0

    :pswitch_1
    const-string v6, "ICCPCSC_POWERUP"

    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const/16 v6, 0x25

    invoke-direct {p0, v6, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    if-nez v0, :cond_1

    const-string v6, "PhoneInterfaceManager"

    const-string v7, "sendRequestToRIL: atrInfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x6

    goto :goto_0

    :cond_1
    aget-byte v6, v0, v8

    add-int/lit8 v6, v6, 0x2

    invoke-static {v0, v8, p2, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v4, 0x0

    goto :goto_0

    :pswitch_2
    const-string v6, "ICCPCSC_CONNECT"

    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v4, -0x1

    const/16 v6, 0x27

    invoke-direct {p0, v6, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    if-nez v1, :cond_2

    const-string v6, "PhoneInterfaceManager"

    const-string v7, "sendRequestToRIL: response is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x2

    goto :goto_0

    :cond_2
    const-string v6, "90"

    aget-byte v7, v1, v9

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "0"

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-byte v4, v1, v8

    goto :goto_0

    :pswitch_3
    const-string v6, "ICCPCSC_DISCONNECT"

    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v4, -0x3

    const/16 v6, 0x29

    invoke-direct {p0, v6, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v2, v6

    check-cast v2, [B

    if-nez v2, :cond_3

    const-string v6, "PhoneInterfaceManager"

    const-string v7, "sendRequestToRIL: response is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x2

    goto/16 :goto_0

    :cond_3
    const-string v6, "90"

    aget-byte v7, v2, v8

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "0"

    aget-byte v7, v2, v9

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_0

    :pswitch_4
    const-string v6, "ICCPCSC_TRANSMIT"

    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const/16 v6, 0x2b

    invoke-direct {p0, v6, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v5, v6

    check-cast v5, [B

    if-nez v5, :cond_4

    const-string v6, "PhoneInterfaceManager"

    const-string v7, "sendRequestToRIL: response is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x5

    goto/16 :goto_0

    :cond_4
    array-length v6, v5

    invoke-static {v5, v8, p2, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v4, v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setBTUserWantsAudioOn(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v0, v1, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBTUserWantsAudioOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") bluetoothHeadset is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    goto :goto_1
.end method

.method public setBTUserWantsSwitchAudio()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v0, v1, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBTUserWantsSwitchAudio() bluetoothHeadset is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->switchAudio()Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setCellInfoListRate(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    return-void
.end method

.method public setDataEnabled(IZ)V
    .locals 12

    const/4 v2, 0x1

    const/4 v0, 0x5

    const/4 v6, -0x1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    const-string v1, "ril.datacross.slotid"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v6, :cond_2

    if-le v9, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataEnabled() for each phones : datacross"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_3

    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    if-eqz v10, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataEnabled: phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " enable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_0

    const-string v5, "Enabling Cellular Data"

    :goto_1
    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, p2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "Disabling Cellular Data"

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataEnabled: no phone for phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataEnabled: subId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    if-eqz v10, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataEnabled: subId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " enable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_4

    const-string v5, "Enabling Cellular Data"

    :goto_3
    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, p2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    const-string v5, "Disabling Cellular Data"

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataEnabled: no phone for subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setDmCmd(I[B)[I
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v5, v10, [I

    const/4 v6, 0x0

    const-string v10, "ro.debuggable"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1

    move v0, v8

    :goto_0
    if-eqz v0, :cond_0

    const-string v10, "DMLogService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setDmCmd - code :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", data:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    return-object v5

    :cond_1
    move v0, v9

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v10

    const/16 v11, 0x16

    const/16 v12, 0x62

    invoke-virtual {v10, v11, v12, p2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_2
    if-eqz v0, :cond_2

    const-string v10, "DMLogService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LOG_SET - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v10, "0"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    aput v9, v5, v8

    aput v9, v5, v9

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    aput v8, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    goto :goto_1

    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v10

    const/16 v11, 0x16

    const/16 v12, 0x63

    invoke-virtual {v10, v11, v12, p2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II[B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :goto_3
    if-eqz v0, :cond_4

    const-string v10, "DMLogService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_SET - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v10, "0"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    aput v9, v5, v8

    aput v9, v5, v9

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    aput v8, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    goto :goto_1

    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v10

    const/16 v11, 0x16

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12, p2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II[B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    :goto_4
    if-eqz v0, :cond_6

    const-string v10, "DMLogService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "STATE_CHANGE_SET - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v10, "0"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    aput v9, v5, v8

    aput v9, v5, v9

    goto/16 :goto_1

    :catch_2
    move-exception v1

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    aput v8, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    goto/16 :goto_1

    :pswitch_3
    :try_start_3
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v10

    const/16 v11, 0x16

    const/16 v12, 0x65

    invoke-virtual {v10, v11, v12, p2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II[B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    :goto_5
    if-eqz v0, :cond_8

    const-string v10, "DMLogService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MEM_SET - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v10, "0"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    aput v9, v5, v8

    aput v9, v5, v9

    goto/16 :goto_1

    :catch_3
    move-exception v1

    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    aput v8, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    goto/16 :goto_1

    :pswitch_4
    :try_start_4
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v10

    const/16 v11, 0x16

    const/16 v12, 0x66

    invoke-virtual {v10, v11, v12, p2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II[B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v6

    :goto_6
    if-eqz v0, :cond_a

    const-string v10, "DMLogService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MEM_CHECK - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :try_start_5
    const-string v10, "/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v2

    aput v8, v5, v8

    aput v8, v5, v9

    goto/16 :goto_1

    :catch_5
    move-exception v1

    const/4 v6, 0x0

    goto :goto_6

    :pswitch_5
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->mUpKnightLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_6
    const-string v8, "ril.dmlog.completed"

    const-string v10, "0"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v4, 0x0

    :try_start_7
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v4

    const/16 v8, 0x16

    const/16 v10, 0x67

    invoke-virtual {v4, v8, v10, p2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->waitDmLogSync()V

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v5, v10

    aput v11, v5, v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_7
    if-eqz v0, :cond_b

    :try_start_8
    const-string v8, "DMLogService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SAVE_LOG - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    monitor-exit v9

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v8

    :catch_6
    move-exception v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    :try_start_9
    aput v11, v5, v10

    aput v11, v5, v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :pswitch_6
    :try_start_a
    new-instance v3, Ljava/io/File;

    const-string v10, "/data/log/knightBuff.tmp"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "DMLogService"

    const-string v11, "knightBuff, log not exist! "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :goto_8
    aput v9, v5, v8

    aput v9, v5, v9

    goto/16 :goto_1

    :cond_c
    :try_start_b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_8

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v10, "DMLogService"

    const-string v11, "DELETE_LOG failed"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :pswitch_7
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10, p1, p2}, Lcom/android/internal/telephony/Phone;->setDmCmdInfo(I[B)Z

    move-result v10

    if-eqz v10, :cond_d

    aput v9, v5, v8

    aput v9, v5, v9

    goto/16 :goto_1

    :cond_d
    aput v8, v5, v8

    aput v8, v5, v9

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public setEPSLOCI([B)V
    .locals 4

    const-string v1, "PhoneInterfaceManager"

    const-string v2, "> setEPSLOCI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IccCard;->setEPSLOCI([B)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    const/16 v1, 0x33

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< setEPSLOCI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "UICC operation start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setImsRegistrationState(Z)V

    return-void
.end method

.method public setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege()V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getIccId(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "carrier_alphtag_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "carrier_number_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "carrier_subscriber_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez p3, :cond_2

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method public setMultiSimForegroundPhoneId(I)V
    .locals 1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->setMultiSimForegroundPhoneId(I)V

    :cond_0
    return-void
.end method

.method public setMultiSimLastRejectIncomingCallPhoneId(I)V
    .locals 1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->setMultiSimLastRejectIncomingCallPhoneId(I)V

    :cond_0
    return-void
.end method

.method public setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    const/16 v6, 0x9

    const/4 v3, -0x1

    const-string v4, "SKT"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x3

    new-array v1, v4, [[I

    const/4 v4, 0x0

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    aput-object v5, v1, v4

    const/4 v4, 0x1

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    aput-object v5, v1, v4

    const/4 v4, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_2

    aput-object v5, v1, v4

    const-string v4, "#*13795*#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    if-gt p3, v4, :cond_0

    const-string v4, "GSM"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    :goto_1
    aget-object v4, v1, v2

    aget v0, v4, p3

    if-eq v0, v3, :cond_0

    const/16 v3, 0x35

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_2
    const-string v4, "WCDMA"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "LTE"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x14
        -0x1
        0xd
        0xc
        -0x1
        -0x1
        -0x1
        -0x1
        0xb
    .end array-data

    :array_1
    .array-data 4
        0xa
        0x3
        0x2
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x15
        0x1b
        0x16
        -0x1
        0x17
        -0x1
        0x18
        0x19
    .end array-data
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public setPreferredNetworkType(I)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const/16 v2, 0x17

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public setRadio(Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->setRadioForSubscriber(IZ)Z

    move-result v0

    return v0
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhoneInterfaceManager"

    const-string v2, "setRadioCapability: Runtime Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRadioForSubscriber(IZ)Z
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    move v0, v1

    :goto_0
    if-eq v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->toggleRadioOnOffForSubscriber(I)V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRadioPower(Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->setRadioPowerForSubscriber(IZ)Z

    move-result v0

    return v0
.end method

.method public setRadioPowerForSubscriber(IZ)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public setSelectedApn()V
    .locals 3

    const-string v1, "CG"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GG"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGG"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->setSelectedApn()V

    :cond_1
    return-void
.end method

.method public setTransmitPower(I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->setTransmitPower(ILandroid/os/Message;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setUimRemoteLockStatus(I)I
    .locals 4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "call setUimRemoteLockStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IccCard;->setUimRemoteLockStatus(I)I

    move-result v0

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result setUimRemoteLockStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege()V

    const/16 v1, 0x21

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public shutdownMobileRadios()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutting down Phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->logv(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->shutdownRadioUsingPhoneId(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public silenceRinger()V
    .locals 2

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "silenseRinger not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sms_NSRI_decryptsms(I[B)[B
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->start()V

    :cond_0
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NSRI_SMS] sms_NSRI_decryptsms() ==START==  in_len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v0, p2, p1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->smsNSRIDecryptCmd([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    return-object v0
.end method

.method public sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->start()V

    :cond_0
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NSRI_SMS] sms_NSRI_decryptsmsintxside() ==START==  in_len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  phonenumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v0, p2, p3, p1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->smsNSRIDecryptTxCmd(Ljava/lang/String;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    return-object v0
.end method

.method public sms_NSRI_encryptsms(ILjava/lang/String;[B)[B
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->start()V

    :cond_0
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NSRI_SMS] sms_NSRI_encryptsms() ==START==  in_len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  phonenumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v0, p2, p3, p1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->smsNSRIEncryptCmd(Ljava/lang/String;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    return-object v0
.end method

.method public startGlobalNetworkSearchTimer()V
    .locals 0

    return-void
.end method

.method public startGlobalNoSvcChkTimer()V
    .locals 0

    return-void
.end method

.method public startMobileQualityInformation()V
    .locals 2

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "startMobileQualityInformation at INFINEON chip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopGlobalNetworkSearchTimer()V
    .locals 0

    return-void
.end method

.method public stopGlobalNoSvcChkTimer()V
    .locals 0

    return-void
.end method

.method public stopMobileQualityInformation()V
    .locals 2

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "stopMobileQualityInformation at INFINEON chip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public supplyPerso(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/internal/telephony/IccCard;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->start()V

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->checkPerso(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supplyPinForSubscriber(ILjava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v0

    aget v2, v0, v1

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    aget v2, v0, v1

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    invoke-virtual {v0, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method public toggleRadioOnOff()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->toggleRadioOnOffForSubscriber(I)V

    return-void
.end method

.method public toggleRadioOnOffForSubscriber(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnForSubscriber(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transmitIccAPDU(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p6}, Lcom/android/phone/PhoneInterfaceManager;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateServiceLocation()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->updateServiceLocationForSubscriber(I)V

    return-void
.end method

.method public updateServiceLocationForSubscriber(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    return-void
.end method

.method public validateMsisdn()I
    .locals 2

    const-string v0, "PhoneInterfaceManager"

    const-string v1, "validateMsisdn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->validateMsisdn()I

    move-result v0

    return v0
.end method

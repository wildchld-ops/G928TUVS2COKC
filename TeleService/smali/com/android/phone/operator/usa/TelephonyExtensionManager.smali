.class public Lcom/android/phone/operator/usa/TelephonyExtensionManager;
.super Ljava/lang/Object;
.source "TelephonyExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;
    }
.end annotation


# static fields
.field private static BOOST_CODE:Ljava/lang/String;

.field private static CHAMELEON_CODE:Ljava/lang/String;

.field private static FILE_EXISTS:Ljava/lang/String;

.field private static HOME_ONLY:Ljava/lang/String;

.field private static SPRINT_CODE:Ljava/lang/String;

.field private static VIRGIN_MOBILE_USA_CODE:Ljava/lang/String;

.field private static isLowBatterySoundScheduled:Z

.field private static mPhoneName:Ljava/lang/String;

.field private static roamingToastShown:Z

.field private static final sInstance:Lcom/android/phone/operator/usa/TelephonyExtensionManager;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mDataRoamingGuardActivity:Landroid/app/Activity;

.field private mDataRoamingSettingsContentObserver:Landroid/database/ContentObserver;

.field mHandler:Landroid/os/Handler;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "file_exists"

    sput-object v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->FILE_EXISTS:Ljava/lang/String;

    const-string v0, "home_only"

    sput-object v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->HOME_ONLY:Ljava/lang/String;

    const-string v0, "CODE"

    sput-object v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->CHAMELEON_CODE:Ljava/lang/String;

    const-string v0, "310120"

    sput-object v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->SPRINT_CODE:Ljava/lang/String;

    const-string v0, "311490"

    sput-object v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->VIRGIN_MOBILE_USA_CODE:Ljava/lang/String;

    const-string v0, "311870"

    sput-object v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->BOOST_CODE:Ljava/lang/String;

    const-string v0, "NONE"

    sput-object v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mPhoneName:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    invoke-direct {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;-><init>()V

    sput-object v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->sInstance:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;-><init>(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$2;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager$2;-><init>(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager$3;-><init>(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mDataRoamingSettingsContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleBatteryChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleLowBatterySound()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleNofityAllowDataAccess()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleSetSecureSettingDataRoaming()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleDataRoamingDisconnected()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleDataRoamingOk()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->createTelephonyToneGenerator()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)Landroid/media/ToneGenerator;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mTelephonyToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setOneTripState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->cancelAllowDataAccess(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/os/Message;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getIntent(Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->cscChameleonUpdateCallSettings(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->chameleonPreconfig(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleShowDialogDataRoamingGuard(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleCloseDialogDataRoamingGuard()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleRoamingSettingsDBUpdated()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleGlobalNetowrkDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleToastAllowDataAccess()V

    return-void
.end method

.method private cancelAllowDataAccess(Landroid/telephony/ServiceState;)V
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelAllowDataAccess()V

    :cond_0
    return-void
.end method

.method private chameleonPreconfig(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->CHAMELEON_CODE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TelephonyExtensionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chameleonPreconfig - hasChameleonCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v1, :cond_4

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->CHAMELEON_CODE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TelephonyExtensionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chameleonPreconfig - chameleonCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->SPRINT_CODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "TelephonyExtensionManager"

    const-string v3, "chameleonPreconfig - chameleonCode is sprint_code"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->VIRGIN_MOBILE_USA_CODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->BOOST_CODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const-string v2, "TelephonyExtensionManager"

    const-string v3, "chameleonPreconfig - chameleonCode is sprint_mvno_code"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->resetNetworkModeToDefault()V

    goto :goto_0

    :cond_4
    const-string v2, "TelephonyExtensionManager"

    const-string v3, "chameleonPreconfig - chameleonCode is not set"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private checkNotifyAllowDataAccess()Z
    .locals 7

    const/4 v3, 0x0

    const-string v4, "support_check_data_roaming"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->isNotifyDataRoamingAccess()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getGlobalDataRoamingAccessEnabled()Z

    move-result v0

    const-string v4, "TelephonyExtensionManager"

    const-string v5, "checkNotifyAllowDataAccess - isNotifyDataRoamingAccess : "

    invoke-static {v4, v5, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v5, "TelephonyExtensionManager"

    const-string v6, "checkNotifyAllowDataAccess - !globalDataRoamingAccessEnabled : "

    if-nez v0, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v5, v6, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    const-string v4, "TelephonyExtensionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNotifyAllowDataAccess : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private createTelephonyToneGenerator()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mTelephonyToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x5

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mTelephonyToneGenerator:Landroid/media/ToneGenerator;

    const-string v1, "TelephonyExtensionManager"

    const-string v2, "TelephonyToneGenerator created when toneplay"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TelephonyExtensionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating TelephonyToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mTelephonyToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    :cond_0
    const-string v1, "TelephonyExtensionManager"

    const-string v2, "TelephonyToneGenerator created already, hence skipping"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cscChameleonUpdateCallSettings(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "TelephonyExtensionManager"

    const-string v3, "cscChameleonUpdateCallSettings"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->FILE_EXISTS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->FILE_EXISTS:Ljava/lang/String;

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->HOME_ONLY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyExtensionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cscChameleonUpdateCallSettings - file_exists : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " home_only : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v0, :cond_4

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->HOME_ONLY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->systemSelectRoamingType(I)V

    const-string v2, "reset_network_mode_to_chameleon"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v6}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setPreferredNetworkModeEntry(Z)V

    invoke-direct {p0, v6}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setSystemSelectHomeOnlyEntry(Z)V

    invoke-direct {p0, v6}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setNetworkModeToChameleonCode(Z)V

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->chameleonPreconfig(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v6}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->systemSelectRoamingType(I)V

    const-string v2, "reset_network_mode_to_chameleon"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v5}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setPreferredNetworkModeEntry(Z)V

    invoke-direct {p0, v5}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setSystemSelectHomeOnlyEntry(Z)V

    invoke-direct {p0, v5}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setNetworkModeToChameleonCode(Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->systemSelectSalesCode()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->systemSelectSalesCode()V

    goto :goto_1

    :cond_5
    const-string v2, "TelephonyExtensionManager"

    const-string v3, "cscChameleonUpdateCallSettings - file_exists is not set"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1
.end method

.method private getGlobalDataRoamingAccessEnabled()Z
    .locals 4

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getGlobalDataRoamingAccessMode()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "TelephonyExtensionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGlobalDataRoamingAccessEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->sInstance:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    return-object v0
.end method

.method private getIntent(Landroid/os/Message;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private handleBatteryChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->lowBatterySound(Z)V

    return-void
.end method

.method private handleCloseDialogDataRoamingGuard()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mDataRoamingGuardActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mDataRoamingGuardActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private handleDataRoamingDisconnected()V
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->notifyDataDisconnectedRoaming()V

    return-void
.end method

.method private handleDataRoamingOk()V
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelDataDisconnectedRoaming()V

    return-void
.end method

.method private handleGlobalNetowrkDialog()V
    .locals 4

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->shouldGlobalNetworkDialogDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.phone"

    const-class v3, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private handleLowBatterySound()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->isBatteryLowAndNotCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->playLowBatteryTone()V

    :cond_0
    sput-boolean v1, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->isLowBatterySoundScheduled:Z

    invoke-direct {p0, v1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->lowBatterySound(Z)V

    return-void
.end method

.method private handleNofityAllowDataAccess()V
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->notifyAllowDataAccess()V

    return-void
.end method

.method private handleRoamingSettingsDBUpdated()V
    .locals 3

    const/16 v2, 0xca

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setCdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setLTECdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private handleSetSecureSettingDataRoaming()V
    .locals 2

    const/16 v1, 0x67

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mDataRoamingGuardActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingDataRoaming()V

    :cond_1
    return-void
.end method

.method private handleShowDialogDataRoamingGuard(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mDataRoamingGuardActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mDataRoamingGuardActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "data_roaming_settings_extra"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "data_roaming_settings_extra"

    const-string v2, "data_roaming_settings_extra"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v1, "com.android.phone"

    const-class v2, Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;

    const/16 v2, 0x5d

    invoke-direct {v1, p0, v2}, Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;-><init>(Lcom/android/phone/operator/usa/TelephonyExtensionManager;I)V

    invoke-virtual {v1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;->start()V

    goto :goto_0
.end method

.method private handleToastAllowDataAccess()V
    .locals 4

    sget-boolean v1, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->roamingToastShown:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f0a0511

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->roamingToastShown:Z

    :cond_0
    return-void
.end method

.method private isBatteryLowAndNotCharging()Z
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "status"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "level"

    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "TelephonyExtensionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lowBatterySound - batteryStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "TelephonyExtensionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lowBatterySound - batteryLevel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-gt v0, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private isGlobalDataRoamingConnection()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "TelephonyExtensionManager"

    const-string v2, " isGlobalDataRoamingConnection : phone in roaming"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getGlobalDataRoamingAccessEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TelephonyExtensionManager"

    const-string v2, " isGlobalDataRoamingConnection : DataOnRoaming Enabled"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNotifyDataRoamingAccess()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roam_access_notify"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhoneNameChanged(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mPhoneName:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "TelephonyExtensionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPhoneNameChanged - mPhoneName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mPhoneName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / phoneName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mPhoneName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private lowBatterySound(Z)V
    .locals 10

    const/4 v7, 0x0

    const-string v4, "TelephonyExtensionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lowBatterySound - isLowBatterySoundScheduled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->isLowBatterySoundScheduled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "TelephonyExtensionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lowBatterySound - isPlayNow: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->playLowBatteryTone()V

    :cond_0
    iget-object v4, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v4, :cond_1

    const-string v4, "TelephonyExtensionManager"

    const-string v5, "mAlarmManager is null"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    const-string v4, "TelephonyExtensionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSpeakerON - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.ACTION_LOW_BATTERY_SOUND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-static {v4, v7, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->isBatteryLowAndNotCharging()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    if-nez v1, :cond_3

    sget-boolean v4, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->isLowBatterySoundScheduled:Z

    if-nez v4, :cond_2

    const-string v4, "TelephonyExtensionManager"

    const-string v5, "lowBatterySound - setExact"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/32 v8, 0x1d4c0

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->isLowBatterySoundScheduled:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v4, "TelephonyExtensionManager"

    const-string v5, "lowBatterySound - cancel"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->stopLowBatteryTone()V

    sput-boolean v7, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->isLowBatterySoundScheduled:Z

    goto :goto_0
.end method

.method private resetNetworkModeToDefault()V
    .locals 6

    const/16 v5, 0x8

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "reset_network_mode_to_default"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private setNetworkModeToChameleonCode(Z)V
    .locals 8

    const/16 v7, 0xc9

    const/16 v6, 0xa

    const/16 v5, 0x8

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_1

    if-eq v1, v5, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eq v1, v6, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private setOneTripState(Landroid/telephony/ServiceState;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    const-string v6, "true"

    const-string v7, "gsm.operator.isroaming"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "data_roaming_onetime"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v6, "globaldata_preroam_state"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v6, "TelephonyExtensionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRoaming : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v6, "TelephonyExtensionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "propertyOperatorIsroaming : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v6, "TelephonyExtensionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oneTrip : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v6, "TelephonyExtensionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preRoamState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    if-nez v4, :cond_0

    const-string v6, "globaldata_preroam_state"

    invoke-static {v0, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-ne v3, v9, :cond_1

    const-string v6, "TelephonyExtensionManager"

    const-string v7, "Reset data roaming"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "data_roaming"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "data_roaming_onetime"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void

    :cond_2
    if-ne v4, v9, :cond_0

    const-string v6, "globaldata_preroam_state"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setPhoneName(Ljava/lang/String;)V
    .locals 3

    const-string v0, "TelephonyExtensionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sput-object p1, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mPhoneName:Ljava/lang/String;

    return-void
.end method

.method private setPreferredNetworkModeEntry(Z)V
    .locals 2

    const-string v0, "network_mode_cdma_lte"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/PhoneFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "network_mode_automatic_cdma_lte_gsm"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/PhoneFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSystemSelectHomeOnlyEntry(Z)V
    .locals 2

    const-string v0, "system_select_home_only_entry"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/PhoneFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private systemSelectAutomatic()V
    .locals 5

    const/16 v4, 0xca

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->updateSystemSelectAutomatic()V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_settings"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setLTECdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private systemSelectHomeOnly()V
    .locals 5

    const/16 v4, 0xca

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->updateSystemSelectHomeOnly()V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_settings"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setLTECdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private systemSelectRoamingType(I)V
    .locals 1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->systemSelectHomeOnly()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->systemSelectAutomatic()V

    goto :goto_0
.end method

.method private systemSelectSalesCode()V
    .locals 1

    const-string v0, "system_select_home_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->systemSelectHomeOnly()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->systemSelectAutomatic()V

    goto :goto_0
.end method

.method private updatePhoneName(Lcom/android/internal/telephony/Phone;)V
    .locals 4

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyExtensionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneName - mPhoneName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mPhoneName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <- phoneName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->isPhoneNameChanged(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setPhoneName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public actionAnyDataConnectionStateChanged(Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)V
    .locals 7

    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "apn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "DISCONNECTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "roamingOn"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "global_data_roaming_access_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->sendNotifyAllowDataAccessMessage(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6e

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v4, "CONNECTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "global_data_roaming_access_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->sendToastAllowDataAccessMessage()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6f

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string v4, "CONNECTING"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "global_data_roaming_access_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v5, "TelephonyExtensionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!phone.getServiceState().getRoaming() : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public addPhoneIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "support_low_battery_sound_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.phone.ACTION_LOW_BATTERY_SOUND"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_CLOSE_DIALOG_DATA_ROAMING_GUARD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const-string v0, "android.intent.action.CSC_CHAMELEON_UPDATE_CALL_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CHAMELEON_PRECONFIG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.syncservice.ROAMING_SETTINGS_DB_UPDATED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public handleServiceStateChanged(I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "global_network_cdma_gsm_enable_for_spr_f"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->shouldGlobalNetworkDialogDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TelephonyExtensionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->sendGlobalNetworkDialogMessageDelayed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->removeGlobalNetworkDialogMessage()V

    goto :goto_0
.end method

.method public onPhoneReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.android.phone.ACTION_LOW_BATTERY_SOUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.CSC_CHAMELEON_UPDATE_CALL_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.CHAMELEON_PRECONFIG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    const-string v1, "android.intent.action.ACTION_CLOSE_DIALOG_DATA_ROAMING_GUARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    const-string v1, "com.samsung.syncservice.ROAMING_SETTINGS_DB_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public registerDataRoamingSettingsContentObserver(Lcom/android/internal/telephony/Phone;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->updatePhoneName(Lcom/android/internal/telephony/Phone;)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingDataRoaming()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roam_setting_data_domestic"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mDataRoamingSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "roam_setting_data_international"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mDataRoamingSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "sprint_gsm_data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mDataRoamingSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public removeGlobalNetworkDialogMessage()V
    .locals 4

    const/16 v3, 0x64

    const-string v0, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TelephonyExtensionManager"

    const-string v1, "removeMessage(EVENT_GLOBAL_NETWORK_DIALOG)"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public resetSendGlobalNetworkDialogMessageDelayed()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "global_network_cdma_gsm_enable_for_spr_f"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "global_network_cdma_gsm_enable_for_usc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->removeGlobalNetworkDialogMessage()V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->shouldGlobalNetworkDialogDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->sendGlobalNetworkDialogMessageDelayed(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "TelephonyExtensionManager"

    const-string v1, "resetSendGlobalNetworkDialogMessageDelayed - not send EVENT_GLOBAL_NETWORK_DIALOG"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public sendGlobalNetworkDialogMessageDelayed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->sendGlobalNetworkDialogMessageDelayed(Z)V

    return-void
.end method

.method public sendGlobalNetworkDialogMessageDelayed(Z)V
    .locals 5

    const/16 v4, 0x64

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const-string v0, "TelephonyExtensionManager"

    const-string v1, "sendMessage(EVENT_GLOBAL_NETWORK_DIALOG)"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public sendNotifyAllowDataAccessMessage(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 3

    const-string v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "roamingOn"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TelephonyExtensionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state - DISCONNECTED - reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->checkNotifyAllowDataAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TelephonyExtensionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " the user has data roaming turned off. it will be shown notification > reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public sendToastAllowDataAccessMessage()V
    .locals 2

    const-string v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TelephonyExtensionManager"

    const-string v1, "state - CONNECTED"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->isGlobalDataRoamingConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TelephonyExtensionManager"

    const-string v1, "the user uses datacall in data roaming. will show toast"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setDataRoamingGuardActivity(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "TelephonyExtensionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataRoamingGuardActivity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-object p1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mDataRoamingGuardActivity:Landroid/app/Activity;

    return-void
.end method

.method public telephonyManager(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public updatePhoneName(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->isPhoneNameChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setPhoneName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

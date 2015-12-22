.class public Lcom/android/services/telephony/TelephonyConnectionService;
.super Landroid/telecom/ConnectionService;
.source "TelephonyConnectionService.java"


# static fields
.field private static sInstance:Lcom/android/services/telephony/TelephonyConnectionService;

.field private static final sPatternJapanEmergency:Ljava/util/regex/Pattern;

.field private static final sPatternJapanNumber:Ljava/util/regex/Pattern;


# instance fields
.field private final mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

.field private mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

.field private mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

.field private mExpectedComponentName:Landroid/content/ComponentName;

.field private final mImsConferenceController:Lcom/android/services/telephony/ImsConferenceController;

.field private final mTelephonyConferenceController:Lcom/android/services/telephony/TelephonyConferenceController;

.field private final mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

.field private mWfcEmergencyCallController:Lcom/android/phone/WfcEmergencyCallController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(^\\*31#|^#31#)?(184|186)?(131[1-9])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/TelephonyConnectionService;->sPatternJapanNumber:Ljava/util/regex/Pattern;

    const-string v0, "^110|^118|^119"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/TelephonyConnectionService;->sPatternJapanEmergency:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telecom/ConnectionService;-><init>()V

    new-instance v0, Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConferenceController;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConferenceController:Lcom/android/services/telephony/TelephonyConferenceController;

    new-instance v0, Lcom/android/services/telephony/CdmaConferenceController;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/CdmaConferenceController;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

    new-instance v0, Lcom/android/services/telephony/ImsConferenceController;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/ImsConferenceController;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mImsConferenceController:Lcom/android/services/telephony/ImsConferenceController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mExpectedComponentName:Landroid/content/ComponentName;

    new-instance v0, Lcom/android/services/telephony/TelephonyConnectionService$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnectionService$1;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/services/telephony/TelephonyConnectionService;->placeOutgoingConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    return-void
.end method

.method private allowMute(Lcom/android/internal/telephony/Phone;)Z
    .locals 4

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createConnectionFor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 5

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createConnectionFor. phoneType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isImsCall : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isImsCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    invoke-static {p4}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isImsCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    new-instance v2, Lcom/android/services/telephony/GsmConnection;

    invoke-direct {v2, p2}, Lcom/android/services/telephony/GsmConnection;-><init>(Lcom/android/internal/telephony/Connection;)V

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/TelephonyConnection;->addTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;

    :cond_2
    return-object v2

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/TelephonyConnectionService;->allowMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    new-instance v2, Lcom/android/services/telephony/CdmaConnection;

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-direct {v2, p2, v3, v0, p3}, Lcom/android/services/telephony/CdmaConnection;-><init>(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/EmergencyTonePlayer;ZZ)V

    const-string v3, "activate_your_phone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p4, p3}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->checkForOtaspCall(Landroid/telecom/ConnectionRequest;Z)Z

    goto :goto_0
.end method

.method private getFirstPhoneForEmergencyCall()Lcom/android/internal/telephony/Phone;
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v4

    array-length v5, v4

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    aget v6, v4, v7

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pickBestPhoneForEmergencyCall, radio on & in service, slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-object v1

    :cond_2
    const/4 v5, 0x3

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-eq v5, v6, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pickBestPhoneForEmergencyCall,radio on and SIM card inserted, slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pickBestPhoneForEmergencyCall, radio on, slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    const-string v5, "pickBestPhoneForEmergencyCall, return default phone"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    :cond_5
    move-object v1, v3

    goto :goto_2
.end method

.method public static getInstance()Lcom/android/services/telephony/TelephonyConnectionService;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionService;->sInstance:Lcom/android/services/telephony/TelephonyConnectionService;

    return-object v0
.end method

.method private ignoreEmergencyCallHelper(I)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOriginalConnectionKnown(Lcom/android/internal/telephony/Connection;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    instance-of v3, v0, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private placeOutgoingConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {p2, v2, p3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/telecom/ConnectionRequest;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_2

    const/16 v4, 0x2b

    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const-string v5, "dialed MMI code"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0x27

    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/MMIDialogActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "phoneId"

    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/high16 v5, 0x10800000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/TelephonyConnectionService;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const-string v5, "placeOutgoingConnection, phone.dial returned null"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "Connection is null"

    invoke-static {v4, v5}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeOutgoingConnection, phone.dial exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v0, v5, v6}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v5, 0x2b

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method


# virtual methods
.method public addConnectionToConferenceController(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mImsConferenceController:Lcom/android/services/telephony/ImsConferenceController;

    invoke-virtual {v1, p1}, Lcom/android/services/telephony/ImsConferenceController;->add(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConferenceController:Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-virtual {v1, p1}, Lcom/android/services/telephony/TelephonyConferenceController;->add(Lcom/android/services/telephony/TelephonyConnection;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    instance-of v1, p1, Lcom/android/services/telephony/CdmaConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

    check-cast p1, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {v1, p1}, Lcom/android/services/telephony/CdmaConferenceController;->add(Lcom/android/services/telephony/CdmaConnection;)V

    goto :goto_0
.end method

.method public getEmergencyCallHelper()Lcom/android/services/telephony/EmergencyCallHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

    return-object v0
.end method

.method public getGsmConnectionSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isCdmaSubscriptionNv(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneForAccount, accountHandle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mExpectedComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSafePhoneId(I)I

    move-result v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneForAccount, phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get subId from account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getFirstPhoneForEmergencyCall()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    const-string v2, "dialing_capable_while_ims_registration_attempting"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    move-object v2, v0

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    instance-of v3, v0, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-ne v3, p1, :cond_0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTelephonyConnection(Ljava/lang/String;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    move-object v2, v0

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    instance-of v3, v0, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 1

    instance-of v0, p1, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/services/telephony/TelephonyConnection;

    check-cast p2, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {p1, p2}, Lcom/android/services/telephony/TelephonyConnection;->performConference(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/telecom/ConnectionService;->onCreate()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mExpectedComponentName:Landroid/content/ComponentName;

    new-instance v0, Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/EmergencyTonePlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-static {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->setTelephonyConnectionService(Lcom/android/services/telephony/TelephonyConnectionService;)V

    sput-object p0, Lcom/android/services/telephony/TelephonyConnectionService;->sInstance:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/WfcEmergencyCallController;->getInstance()Lcom/android/phone/WfcEmergencyCallController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mWfcEmergencyCallController:Lcom/android/phone/WfcEmergencyCallController;

    :cond_0
    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 7

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateIncomingConnection, request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v4, 0x24

    invoke-static {v4}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-static {v4}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "onCreateIncomingConnection, no ringing call"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x1

    const-string v5, "Found no ringing call"

    invoke-static {v4, v5}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-static {v4}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/services/telephony/TelephonyConnectionService;->isOriginalConnectionKnown(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "onCreateIncomingConnection, original connection already registered"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3, v2, v6, p2}, Lcom/android/services/telephony/TelephonyConnectionService;->createConnectionFor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->makeIncomingConnection(Landroid/telecom/Connection;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v1

    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v4, v1

    check-cast v4, Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v4, p2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setConnectionCallId(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V

    move-object v4, v1

    check-cast v4, Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v4}, Lcom/android/services/telephony/TelephonyConnectionUtils;->preCheckAndUpdate(Lcom/android/services/telephony/TelephonyConnection;)V

    goto :goto_0
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 36

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onCreateOutgoingConnection, request: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v13

    if-nez v13, :cond_0

    const-string v32, "onCreateOutgoingConnection, handle is null"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v32, 0x26

    const-string v33, "No phone number supplied"

    invoke-static/range {v32 .. v33}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_0
    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v27

    const/16 v21, 0x0

    const-string v32, "voicemail"

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v23

    if-nez v23, :cond_1

    const-string v32, "onCreateOutgoingConnection, phone is null"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v32, 0x12

    const-string v33, "Phone is null"

    invoke-static/range {v32 .. v33}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    goto :goto_0

    :cond_1
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_2

    const-string v32, "onCreateOutgoingConnection, no voicemail number set."

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v32, 0x28

    const-string v33, "Voicemail scheme provided but no voicemail number set."

    invoke-static/range {v32 .. v33}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    goto :goto_0

    :cond_2
    const-string v32, "tel"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    :cond_3
    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(Ljava/lang/String;)Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v23

    const-string v32, "feature_multisim"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_4

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v17

    move/from16 v16, v17

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onCreateOutgoingConnection, isEmergencyNumber:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", isEmergencyNumberForMultiSIM:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-nez v23, :cond_7

    const-string v32, "onCreateOutgoingConnection, phone is null"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->createFailedConnectionForPhoneIsNull()Landroid/telecom/Connection;

    move-result-object v8

    goto/16 :goto_0

    :cond_5
    const-string v32, "tel"

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_6

    const-string v32, "onCreateOutgoingConnection, Handle %s is not type tel"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v27, v33, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v32, 0x7

    const-string v33, "Handle scheme is not type tel"

    invoke-static/range {v32 .. v33}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_3

    const-string v32, "onCreateOutgoingConnection, unable to parse number"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v32, 0x7

    const-string v33, "Unable to parse number"

    invoke-static/range {v32 .. v33}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    goto/16 :goto_0

    :cond_7
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    const/16 v32, 0x1

    move/from16 v0, v28

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v28

    :cond_8
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onCreateOutgoingConnection, state: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getVoicePhoneServiceState()I

    move-result v32

    if-nez v32, :cond_9

    if-eqz v16, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/SystemDBInterface;->isAirplainModeOn(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_b

    const-string v32, "change service state to STATE_POWER_OFF, it was %s"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v28, 0x3

    :cond_9
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v32

    if-eqz v32, :cond_a

    if-eqz v16, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/SystemDBInterface;->isAirplainModeOn(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_c

    const-string v32, "onCreateOutgoingConnection, wfc is registered under airplane mode"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v28, 0x3

    :cond_a
    :goto_2
    const/16 v31, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v32

    if-eqz v32, :cond_14

    const-string v32, "feature_multisim_dsda"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_13

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->isMultiSimOffHookState()Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    const-string v32, "Cannot place second call during easy mode"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v32, 0x2b

    const-string v33, "Cannot place second call during easy mode"

    invoke-static/range {v32 .. v33}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    goto/16 :goto_0

    :cond_b
    const-string v32, "change service state to STATE_IN_SERVICE, it was %s"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v28, 0x0

    goto/16 :goto_1

    :cond_c
    const-string v32, "onCreateOutgoingConnection, wfc is registered - consider STATE_IN_SERVICE"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v28, 0x0

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_a

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->isWfcRegistered()Z

    move-result v32

    if-eqz v32, :cond_e

    const-string v32, "onCreateOutgoingConnection, wfc is registered - consider STATE_IN_SERVICE"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v28, 0x0

    :cond_e
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/movial/ipphone/IPPhoneProxy;

    move/from16 v32, v0

    if-eqz v32, :cond_a

    move-object/from16 v15, v23

    check-cast v15, Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v15}, Lcom/movial/ipphone/IPPhoneProxy;->getEmergencyPreference()I

    move-result v11

    invoke-virtual {v15}, Lcom/movial/ipphone/IPPhoneProxy;->getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v12

    sget-object v32, Lcom/movial/ipphone/IPUtils$EmergencyState;->NOT_INITIALIZED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-object/from16 v0, v32

    if-eq v12, v0, :cond_11

    const/16 v18, 0x1

    :goto_3
    invoke-virtual {v15}, Lcom/movial/ipphone/IPPhoneProxy;->getEmergencyCallPowerState()Z

    move-result v24

    if-eqz v18, :cond_12

    if-eqz v16, :cond_12

    if-nez v11, :cond_f

    sget-object v32, Lcom/movial/ipphone/IPUtils$EmergencyState;->IDLE:Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-object/from16 v0, v32

    if-eq v12, v0, :cond_10

    :cond_f
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v11, v0, :cond_12

    sget-object v32, Lcom/movial/ipphone/IPUtils$EmergencyState;->IMS_CALL_FAILED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-object/from16 v0, v32

    if-ne v12, v0, :cond_12

    :cond_10
    const/4 v14, 0x1

    :goto_4
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "getPhoneForAccount() WFC: isEmergencyNumber = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", emergencyCallPref = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", emergencyState = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", isWifiCallOn = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", powerOn = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", imsCS = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v14, :cond_a

    sget-object v32, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_TURNING_ON_RADIO:Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/movial/ipphone/IPPhoneProxy;->setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/movial/ipphone/IPPhoneProxy;->setForceEmergencyMode(Z)V

    goto/16 :goto_2

    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_3

    :cond_12
    const/4 v14, 0x0

    goto :goto_4

    :cond_13
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_14

    const-string v32, "Cannot place second call during easy mode"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v32, 0x2b

    const-string v33, "Cannot place second call during easy mode"

    invoke-static/range {v32 .. v33}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    goto/16 :goto_0

    :cond_14
    move/from16 v0, v28

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/services/utils/SecTelephonyUtil;->preCheckRtsState(ILandroid/telecom/ConnectionRequest;)I

    move-result v28

    const-string v32, "vzw_volte_ui"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_15

    const/16 v32, 0x1

    move/from16 v0, v28

    move/from16 v1, v32

    if-ne v0, v1, :cond_15

    if-eqz p2, :cond_15

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v32

    if-eqz v32, :cond_15

    invoke-static/range {p2 .. p2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isImsCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v32

    if-eqz v32, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v32, "phone"

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v30

    const/16 v32, 0xd

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_15

    const-string v32, "onCreateOutgoingConnection, ims is registered under out of service"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v28, 0x0

    :cond_15
    const-string v32, "dcm_disable_block_reject_call"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_18

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    move-object/from16 v7, v21

    sget-object v32, Lcom/android/services/telephony/TelephonyConnectionService;->sPatternJapanNumber:Ljava/util/regex/Pattern;

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v32

    if-eqz v32, :cond_16

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->end()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    sget-object v32, Lcom/android/services/telephony/TelephonyConnectionService;->sPatternJapanEmergency:Ljava/util/regex/Pattern;

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v32

    if-eqz v32, :cond_16

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    :cond_16
    invoke-static {v9, v7}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_18

    const-string v32, "autoreject_mode_enable_sharedpref"

    const/16 v33, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "autoreject_mode"

    const/16 v34, 0x2

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onCreateOutgoingConnection() - autoreject disable popup : mIsrejectMode "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " rejectMode "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v32, 0x1

    move/from16 v0, v20

    move/from16 v1, v32

    if-eq v0, v1, :cond_17

    if-lez v26, :cond_18

    :cond_17
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v32, "autoreject_mode_enable_sharedpref"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "autoreject_mode"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/NotificationMgr;->notifyDisableAutoRejectNotification()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/phone/NotificationMgr;->updateDisableAutoRejectStatus(Z)V

    :cond_18
    if-eqz v16, :cond_1a

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/services/telephony/TelephonyConnectionService;->ignoreEmergencyCallHelper(I)Z

    move-result v32

    if-nez v32, :cond_1a

    const/16 v32, 0x3

    move/from16 v0, v28

    move/from16 v1, v32

    if-ne v0, v1, :cond_19

    const/16 v31, 0x1

    :cond_19
    :pswitch_0
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->checkAdditionalFailedState(Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)I

    move-result v5

    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v5, v0, :cond_1d

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Unabvaliable state "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v5, v0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    goto/16 :goto_0

    :cond_1a
    packed-switch v28, :pswitch_data_0

    const-string v32, "onCreateOutgoingConnection, unknown service state: %d"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {v28 .. v28}, Lcom/android/services/utils/SecTelephonyUtil;->createFailedConnectionForOther(I)Landroid/telecom/Connection;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_1
    const/16 v32, 0x25

    const-string v33, "ServiceState.STATE_EMERGENCY_ONLY"

    invoke-static/range {v32 .. v33}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_2
    const-string v32, "dialing_capable_while_ims_registration_attempting"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1b

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)Z

    move-result v32

    if-nez v32, :cond_19

    :cond_1b
    const/16 v32, 0x12

    const-string v33, "ServiceState.STATE_OUT_OF_SERVICE"

    invoke-static/range {v32 .. v33}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/SystemDBInterface;->isAirplainModeOn(Landroid/content/Context;)Z

    move-result v32

    if-nez v32, :cond_1c

    const/16 v32, 0x12

    const-string v33, "ServiceState.STATE_OUT_OF_SERVICE"

    invoke-static/range {v32 .. v33}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    goto/16 :goto_0

    :cond_1c
    const/16 v32, 0x11

    const-string v33, "ServiceState.STATE_POWER_OFF"

    invoke-static/range {v32 .. v33}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    goto/16 :goto_0

    :cond_1d
    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v32

    move/from16 v3, v33

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/services/telephony/TelephonyConnectionService;->createConnectionFor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v8

    if-nez v8, :cond_1e

    const/16 v32, 0x2b

    const-string v33, "Invalid phone type"

    invoke-static/range {v32 .. v33}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    goto/16 :goto_0

    :cond_1e
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v8, v13, v0}, Lcom/android/services/telephony/TelephonyConnection;->setAddress(Landroid/net/Uri;I)V

    invoke-virtual {v8}, Lcom/android/services/telephony/TelephonyConnection;->setInitializing()V

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Lcom/android/services/telephony/TelephonyConnection;->setVideoState(I)V

    move-object/from16 v0, p2

    invoke-static {v8, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setConnectionCallId(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v8, v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateEpdgStateBeforeDial(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V

    if-eqz v31, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

    move-object/from16 v32, v0

    if-nez v32, :cond_1f

    new-instance v32, Lcom/android/services/telephony/EmergencyCallHelper;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/services/telephony/EmergencyCallHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/services/telephony/TelephonyConnectionService$2;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/android/services/telephony/TelephonyConnectionService$2;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/services/telephony/EmergencyCallHelper;->startTurnOnRadioSequence(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V

    goto/16 :goto_0

    :cond_20
    invoke-static/range {v23 .. v23}, Lcom/android/services/telephony/TelephonyConnectionService;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v32

    if-eqz v32, :cond_21

    if-nez v16, :cond_21

    const-string v32, "show exit ECM toast because outgoing non-emergency call"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const v32, 0x7f0a022c

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    :cond_21
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_22

    if-eqz v16, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnectionService;->mWfcEmergencyCallController:Lcom/android/phone/WfcEmergencyCallController;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/WfcEmergencyCallController;->startTimerForCS(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    :cond_22
    invoke-static/range {p2 .. p2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isPhoneTypeChangedCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v32

    if-eqz v32, :cond_23

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-static {v8, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setPhoneTypeChanged(Lcom/android/services/telephony/TelephonyConnection;Z)V

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "isPhoneTypeChangedCall set originalConnection : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/android/services/telephony/TelephonyConnection;->sendPreciseCallStateChanged()V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-direct {v0, v8, v1, v2}, Lcom/android/services/telephony/TelephonyConnectionService;->placeOutgoingConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 12

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreateUnknownConnection, request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v10

    invoke-virtual {p0, v10, v9}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-nez v5, :cond_0

    const/16 v9, 0x24

    invoke-static {v9}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v9

    invoke-static {v9}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const/4 v8, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v7}, Lcom/android/services/telephony/TelephonyConnectionService;->isOriginalConnectionKnown(Lcom/android/internal/telephony/Connection;)Z

    move-result v10

    if-nez v10, :cond_4

    move-object v8, v7

    :cond_5
    if-nez v8, :cond_6

    const-string v10, "onCreateUnknownConnection, did not find previously unknown connection."

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0, v10, v9}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_0

    :cond_6
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v9, 0x1

    :cond_7
    invoke-direct {p0, v5, v8, v9, p2}, Lcom/android/services/telephony/TelephonyConnectionService;->createConnectionFor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_0

    :cond_8
    invoke-static {v2, p2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setConnectionCallId(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto :goto_0
.end method

.method public removeConnection(Landroid/telecom/Connection;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/telecom/ConnectionService;->removeConnection(Landroid/telecom/Connection;)V

    instance-of v1, p1, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->removeTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;

    :cond_0
    return-void
.end method

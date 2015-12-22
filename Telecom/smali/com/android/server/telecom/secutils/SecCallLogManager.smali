.class public final Lcom/android/server/telecom/secutils/SecCallLogManager;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "SecCallLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/SecCallLogManager$1;,
        Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;,
        Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;
    }
.end annotation


# static fields
.field private static SERVICE_TYPE_MODIFIED_CALL:I

.field private static SERVICE_TYPE_MODIFIED_CALL_DISCONNECT:I

.field private static final TAG:Ljava/lang/String;

.field private static TYPE_YELLOWPAGE:I

.field private static callplusValue:Ljava/lang/String;

.field private static isCallPlusEnableNumber:Z

.field private static mModifiedTime:J

.field private static serviceType:I


# instance fields
.field private cdnipNumber:Ljava/lang/String;

.field private mCnapName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mSelfThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mYellowPageName:Ljava/lang/String;

.field private recordSaveFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x1e

    sput v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL_DISCONNECT:I

    const/16 v0, 0x1f

    sput v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL:I

    const/16 v0, 0x3c

    sput v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TYPE_YELLOWPAGE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->serviceType:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z

    const-string v0, ""

    sput-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->callplusValue:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mModifiedTime:J

    const-class v0, Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mCnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cdnipNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->recordSaveFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mYellowPageName:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mSelfThreadPool:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TYPE_YELLOWPAGE:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/telecom/secutils/SecCallLogManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mCnapName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cdnipNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->recordSaveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL_DISCONNECT:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->serviceType:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0

    sput p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->serviceType:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mYellowPageName:Ljava/lang/String;

    return-object v0
.end method

.method private changeCallType(ILcom/android/server/telecom/Call;)I
    .locals 2

    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isRadConvertNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xb

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/16 p1, 0xc

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/16 p1, 0xd

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const/16 p1, 0xf

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/16 p1, 0xe

    goto :goto_0
.end method

.method private changeNumber(Ljava/lang/String;Lcom/android/server/telecom/Call;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roaming area : changeNumber before = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p3, :cond_0

    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roaming area : changeNumber contactsNum.phoneNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p1, v0

    :cond_0
    :goto_1
    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roaming area : changeNumber after = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move-object v0, p1

    if-eqz v0, :cond_4

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "tel"

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "voicemail"

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orign number is not Global phone number, changeNumber after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-object v0

    :cond_5
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isRadConvertNumber()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getRadOriginalNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getRadOriginalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/android/server/telecom/operator/OperatorUtils;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isRadConvertNumber()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getRadOriginalNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_a
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getRadOriginalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1
.end method

.method private static getCallFeatures(I)I
    .locals 2

    const/4 v0, 0x1

    and-int/lit8 v1, p0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPresentation(Lcom/android/server/telecom/Call;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ctc_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentation(ILcom/android/server/telecom/Call;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "singapore_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getOriginalNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getOriginalNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getOriginalNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "anonymous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v0

    goto :goto_0
.end method

.method private isImsRegistered()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegistered()Z

    move-result v0

    goto :goto_0
.end method

.method private isVoWifiAvailable()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->isImsRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    sget-object v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoWifiAvailable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private logCall(Lcom/android/server/telecom/Call;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0a0000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_10

    :cond_0
    const/4 v4, 0x1

    :goto_0
    const-string v5, "feature_cdma_us"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "emergency_calllog_disable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isOkToLogThisCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/telecom/secutils/SecCallLogManager;->changeCallType(ILcom/android/server/telecom/Call;)I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/telecom/secutils/SecCallLogManager;->changeNumber(Ljava/lang/String;Lcom/android/server/telecom/Call;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-wide/from16 v1, p10

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/telecom/secutils/SecCallLogManager;->sendAddCallBroadcast(IJ)V

    if-eqz v4, :cond_15

    sget-object v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logging Calllog entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p8

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p10

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    if-eqz p1, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    move-object v5, v4

    :goto_1
    const/4 v4, 0x0

    if-eqz v5, :cond_16

    const-string v4, "key_photoring_mt_content_url"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, v4

    :goto_2
    const/16 v18, 0x0

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v4

    if-nez v4, :cond_11

    const/4 v4, 0x0

    :goto_3
    move/from16 v18, v4

    :cond_3
    if-nez v5, :cond_12

    const/16 v17, 0x0

    :goto_4
    const-string v4, "save_cnap_info_in_call_log"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string v5, "cnap_supplementary_service"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->CheckDisplayPLettrering()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v4, 0x0

    :cond_5
    sget-object v5, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "logCall - cnapName = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz p2, :cond_13

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    :cond_6
    :goto_5
    const/4 v4, 0x0

    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v4

    :cond_7
    const-string v5, "cdnip_supplementary_service"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getCdnipNumber()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cdnipNumber:Ljava/lang/String;

    sget-object v5, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "logCall - cdnipNumber = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    const-string v5, "voice_call_recording_call_log"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getRecordSaveFilePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->recordSaveFilePath:Ljava/lang/String;

    sget-object v5, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "logCall - recordSaveFilePath = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->recordSaveFilePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    const-string v5, "ltn_sdnname_display"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz p2, :cond_a

    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v5, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    :cond_a
    const-string v5, "yellowpage_callerid_info"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getYellowPageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mYellowPageName:Ljava/lang/String;

    :cond_b
    const/16 v19, 0x0

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getGroupId()I

    move-result v19

    :cond_c
    sget-object v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d

    const-string v4, "ims_callplus"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bundleCallPlus number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "ARG_MSISDN"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ARG_COLUMNS"

    sget-object v6, Lcom/android/server/telecom/secutils/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/telecom/secutils/SecCallLogManager;->queryForCallPlus(Landroid/os/Bundle;)V

    :cond_d
    const-string v4, "ims_callplus"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-boolean v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z

    if-eqz v4, :cond_14

    sget-object v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "if number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    sget-object v20, Lcom/android/server/telecom/secutils/SecCallLogManager;->callplusValue:Ljava/lang/String;

    move-object/from16 v6, p2

    move/from16 v8, p4

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-object/from16 v16, p12

    invoke-direct/range {v4 .. v20}, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;Ljava/lang/String;ZILjava/lang/String;)V

    :goto_6
    const-string v5, "support_spam_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v4, :cond_e

    if-eqz p1, :cond_e

    invoke-static/range {p1 .. p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getSpamCallType(Lcom/android/server/telecom/Call;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->setSpamCallType(I)V

    :cond_e
    if-eqz p1, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/telecom/secutils/SecCallLogManager;->setAdditionalInfo(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)V

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/server/telecom/secutils/SecCallLogManager;->setMemoPathInfo(Ljava/lang/String;Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCallToAllUsers(Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)V

    :goto_7
    return-void

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/services/telephony/common/SecCallExtra;->isAutoRejectCall()Z

    move-result v4

    goto/16 :goto_3

    :cond_12
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    :cond_13
    if-nez p2, :cond_6

    sget-object v5, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v6, "The callerInfo is Null. But Call has a cnapName."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v5, v6, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mCnapName:Ljava/lang/String;

    goto/16 :goto_5

    :cond_14
    sget-object v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "else number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    move-object/from16 v6, p2

    move/from16 v8, p4

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-object/from16 v16, p12

    invoke-direct/range {v4 .. v19}, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;Ljava/lang/String;ZI)V

    goto/16 :goto_6

    :cond_15
    sget-object v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v5, "Not adding emergency call to call log."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_16
    move-object v5, v4

    goto/16 :goto_2

    :cond_17
    move-object v5, v4

    goto/16 :goto_1
.end method

.method private logCallToAllUsers(Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)V
    .locals 8

    const/4 v7, 0x0

    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v1, "logCallToAllUsers"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    const-string v5, "no_outgoing_calls"

    invoke-virtual {v0, v5, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user.id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;

    invoke-direct {v4, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;-><init>(Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)V

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dbUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCallAsync(Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private queryForCallPlus(Landroid/os/Bundle;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v0, "ARG_MSISDN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARG_COLUMNS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryForCallPlus msisdn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    const-string v1, "content://com.vodafone.callplus.provider/callcontent"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallPlusInfo :callContentUris : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try updateCallPlusInfo :cursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->callplusValue:Ljava/lang/String;

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "if isCallPlusEnableNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finally isCallPlusEnableNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z

    const-string v1, ""

    sput-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->callplusValue:Ljava/lang/String;

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "else isCallPlusEnableNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch isCallPlusEnableNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finally isCallPlusEnableNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finally isCallPlusEnableNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_2
.end method

.method private sendAddCallBroadcast(IJ)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.telecom.intent.action.CALLS_ADD_ENTRY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "callType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "duration"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.PROCESS_CALLLOG_INFO"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private setAdditionalInfo(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)V
    .locals 7

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v1, "setAdditionalInfo default Uri.parse = content://logs/call "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v1, "setAdditionalInfo error. secCallExtra is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getLogServiceType()I

    move-result v1

    sget v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL_DISCONNECT:I

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getInitModifiedLogType()I

    move-result v1

    if-ne v1, v3, :cond_2

    const-string v1, "content://logs/video_call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    :goto_1
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getLogServiceType()I

    move-result v1

    iput v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAdditionalInfo : service_type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "ctc_call_time_duration"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v1

    if-ne v1, v6, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isLineCtrl()Z

    move-result v0

    if-nez v0, :cond_12

    iput-boolean v5, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isCallOutDuration:Z

    goto :goto_0

    :cond_2
    const-string v1, "content://logs/volte"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getLogServiceType()I

    move-result v1

    sget v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL:I

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getModifiedLogType()I

    move-result v1

    if-ne v1, v3, :cond_4

    const-string v1, "content://logs/video_call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    const-string v1, "content://logs/volte"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto :goto_1

    :cond_5
    const-string v1, "hdvoice_call_status"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v1

    if-lez v1, :cond_6

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v2, "setAdditionalInfo : is HDcall log"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "content://logs/hdcall"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    if-eq v1, v3, :cond_7

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    if-eq v1, v5, :cond_7

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    if-ne v1, v6, :cond_8

    :cond_7
    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v2, "setAdditionalInfo : is video call"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "content://logs/video_call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_8
    const-string v1, "ims_voice_conference_kddi"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v1

    if-ne v1, v5, :cond_9

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isReceivedCall()Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v2, "setAdditionalInfo : is call_group"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "content://logs/call_group"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v1

    if-ne v1, v6, :cond_10

    const-string v1, "evr_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "tmu_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->isVoWifiAvailable()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v2, "VoWiFi call"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "content://logs/vowifi"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_b
    const-string v1, "feature_sbm"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoLTE call, AMR-WB ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getWideBandAMR()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getWideBandAMR()I

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "content://logs/volte"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_c
    const-string v1, "content://logs/call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_d
    const-string v1, "disable_hd_icon"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "common_volte_voda"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v2, "VoLTE call but call log as CS call"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "content://logs/call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_f
    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v2, "VoLTE call"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "content://logs/volte"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_10
    const-string v1, "wide_band_for_hd_icon"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "feature_sbm"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v1

    if-lez v1, :cond_11

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v2, "setAdditionalInfo : is HDcall log"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "content://logs/hdcall"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_11
    const-string v1, "content://logs/call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_12
    iput-boolean v4, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isCallOutDuration:Z

    goto/16 :goto_0
.end method

.method private setMemoPathInfo(Ljava/lang/String;Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/telecom/secutils/SecActionMemoManager;->getInstance()Lcom/android/server/telecom/secutils/SecActionMemoManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/telecom/secutils/SecActionMemoManager;->getActionMemoFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "use_action_memo_duringcall"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "sec_custom1"

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset all ActionMemo FilePath of LOG DB when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string v1, "sec_custom1"

    invoke-virtual {p2, v1, v0}, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->addExtraValues(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMemoPathInfo : memoPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public logCall(Lcom/android/server/telecom/Call;I)V
    .locals 13

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v10

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_0

    :goto_0
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLogNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v1, "logNumber set to: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getPresentation(Lcom/android/server/telecom/Call;)I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getVideoStateHistory()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getCallFeatures(I)I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v12}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v10, v0, v10

    goto :goto_0
.end method

.method public logCall(Lcom/android/server/telecom/Call;Ljava/lang/String;JJ)V
    .locals 13

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getPresentation(Lcom/android/server/telecom/Call;)I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getVideoStateHistory()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getCallFeatures(I)I

    move-result v6

    const/4 v5, 0x2

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLogNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v2, "Conference logNumber set to: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v12}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;)V

    return-void
.end method

.method public logCallAsync(Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)Landroid/os/AsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;",
            "Ljava/lang/Void;",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;-><init>(Lcom/android/server/telecom/secutils/SecCallLogManager;Lcom/android/server/telecom/secutils/SecCallLogManager$1;)V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mSelfThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public logModifyCall(Lcom/android/server/telecom/Call;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v7, 0x2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v15

    if-nez v15, :cond_1

    sget-object v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v3, "logModifyCall error. secCallExtra is null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logModifyCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_4

    move-wide v2, v4

    :goto_2
    sget-wide v12, Lcom/android/server/telecom/secutils/SecCallLogManager;->mModifiedTime:J

    cmp-long v4, v12, v4

    if-lez v4, :cond_5

    sget-wide v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->mModifiedTime:J

    sub-long v12, v8, v2

    :goto_3
    const-wide/16 v2, 0x3e8

    rem-long v2, v12, v2

    sub-long v16, v8, v2

    invoke-static/range {p1 .. p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLogNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getPresentation(Lcom/android/server/telecom/Call;)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getVideoStateHistory()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getCallFeatures(I)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v14}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    sget v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL_DISCONNECT:I

    invoke-virtual {v15, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setLogServiceType(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "key_photoring_mt_content_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "key_photoring_mt_content_url"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    :cond_3
    sput-wide v16, Lcom/android/server/telecom/secutils/SecCallLogManager;->mModifiedTime:J

    goto/16 :goto_1

    :cond_4
    sub-long v2, v8, v4

    goto :goto_2

    :cond_5
    move-wide v12, v2

    goto :goto_3
.end method

.method public onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 10

    const/4 v9, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x7

    if-eq p3, v0, :cond_0

    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v6

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v3

    if-eq v3, v9, :cond_1

    invoke-virtual {v6}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v3

    const/16 v7, 0x9

    if-ne v3, v7, :cond_4

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v7

    const-string v8, "ims_voice_conference_kddi"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v8

    if-ne v8, v2, :cond_6

    invoke-virtual {v7}, Lcom/android/services/telephony/common/SecCallExtra;->isReceivedCall()Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v2, "[KDDI]Do not log call for voiceparty call in onCallStateChanged..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/android/services/telephony/common/SecCallExtra;->isIMSConferenceCall()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_6
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSBarring()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v0, :cond_2

    if-eq p2, v4, :cond_2

    if-eq p2, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "feature_logs_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getOriginalNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/OperatorUtils;->getCallLogType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->serviceType:I

    move v0, v4

    :goto_3
    const-string v3, "feature_logs_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_7

    sput v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->serviceType:I

    :cond_7
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/android/services/telephony/common/SecCallExtra;->getLogServiceType()I

    move-result v3

    sget v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL:I

    if-ne v3, v4, :cond_9

    const/4 v3, 0x7

    if-ne p3, v3, :cond_8

    sget-object v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallState.DISCONNECTED: secCallExtra.getType() = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setModifiedLogType(I)V

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logModifyCall(Lcom/android/server/telecom/Call;)V

    :cond_9
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isAutoAnswered"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_a

    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v2, "Auto answer is true, so change to MISSED_TYPE"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v5

    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    goto/16 :goto_2

    :cond_b
    if-ne p2, v9, :cond_f

    invoke-virtual {v6}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_e

    const-string v0, "dcm_not_support_extra_callog_type"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v5

    goto :goto_3

    :cond_c
    const-string v0, "china_cdma_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v0

    if-ne v0, v4, :cond_d

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getRingingCall(I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_d

    move v0, v5

    goto/16 :goto_3

    :cond_d
    const/4 v0, 0x5

    goto/16 :goto_3

    :cond_e
    move v0, v5

    goto/16 :goto_3

    :cond_f
    move v0, v2

    goto/16 :goto_3

    :cond_10
    move v0, v4

    goto/16 :goto_3
.end method

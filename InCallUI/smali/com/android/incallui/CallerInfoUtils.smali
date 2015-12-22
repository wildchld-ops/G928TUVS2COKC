.class public Lcom/android/incallui/CallerInfoUtils;
.super Ljava/lang/Object;
.source "CallerInfoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/CallerInfoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Lcom/android/incallui/CallerInfo;

    invoke-direct {v1}, Lcom/android/incallui/CallerInfo;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableWhitepages"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/whitepages/nameid/NameIDHelper;->beautifyCnapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_0
    const-string v4, "cnap_supplementary_service"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_a

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v4

    iput v4, v1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapNamePresentation()I

    move-result v4

    iput v4, v1, Lcom/android/incallui/CallerInfo;->namePresentation:I

    const-string v4, "ims_call_message"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getOutgoingCallMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/incallui/CallerInfo;->callMessage:Ljava/lang/String;

    const-string v4, "ims_support_photo_ring"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "<PhotoRing>"

    iget-object v5, v1, Lcom/android/incallui/CallerInfo;->callMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/incallui/CallerInfo;->callMessage:Ljava/lang/String;

    :cond_2
    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getRadNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/incallui/CallerInfo;->radNumber:Ljava/lang/String;

    :cond_3
    const-string v4, "cdnip_supplementary_service"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/incallui/CallerInfo;->cdnipNumber:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v3, v4

    array-length v4, v3

    if-le v4, v6, :cond_5

    aget-object v4, v3, v6

    iput-object v4, v1, Lcom/android/incallui/CallerInfo;->forwardingNumber:Ljava/lang/String;

    :cond_5
    iget v4, v1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    invoke-static {p0, v1, v2, v4}, Lcom/android/incallui/CallerInfoUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v4, "voicemail"

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    invoke-virtual {v1, p0, v2}, Lcom/android/incallui/CallerInfo;->markAsVoiceMail(Landroid/content/Context;Ljava/lang/String;)Lcom/android/incallui/CallerInfo;

    :cond_9
    return-object v1

    :cond_a
    iget-object v4, v1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;
    .locals 3

    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    iget v1, v0, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    const-string v2, "==> Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-static {v1, p0, v0, p2, p1}, Lcom/android/incallui/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/incallui/CallerInfoAsyncQuery;

    :cond_0
    return-object v0
.end method

.method private static isCnapSpecialCaseRestricted(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCnapSpecialCaseUnknown(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Z
    .locals 3

    const-string v1, "telecom"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telecom/TelecomManager;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const v7, 0x7f0d0126

    const/4 v6, 0x3

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyForSpecialCnapCases: initially, number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", presentation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ci "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p3, v5, :cond_2

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput v6, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    :cond_2
    iget v2, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    if-eq v2, v5, :cond_3

    iget v2, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    if-eq v2, p3, :cond_5

    if-ne p3, v5, :cond_5

    :cond_3
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->isCnapSpecialCaseRestricted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0d0127

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    iput v2, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    :cond_4
    :goto_1
    sget-object v2, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpecialCnap: number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; presentation now="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v2, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyForSpecialCnapCases: returning number string="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    goto/16 :goto_0

    :cond_6
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->isCnapSpecialCaseUnknown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput v6, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    goto :goto_1
.end method

.method public static sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Lcom/android/contacts/common/model/ContactLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    const/4 v1, 0x0

    new-instance v2, Lcom/android/incallui/CallerInfoUtils$1;

    invoke-direct {v2}, Lcom/android/incallui/CallerInfoUtils$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/ContactLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ContactLoader;->startLoading()V

    return-void
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x40

    if-eq v1, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_1

    const/16 v3, 0x26

    if-ne v1, v3, :cond_2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

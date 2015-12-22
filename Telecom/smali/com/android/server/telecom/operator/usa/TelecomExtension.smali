.class public Lcom/android/server/telecom/operator/usa/TelecomExtension;
.super Ljava/lang/Object;
.source "TelecomExtension.java"


# static fields
.field private static assisDialing:Ljava/lang/reflect/Method;

.field private static final mCallForwardingNoPopupNumberList:[Ljava/lang/String;

.field private static final mCallForwardingPopupNumberList:[Ljava/lang/String;

.field private static mRoaming:Z

.field private static mServiceState:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*72"

    aput-object v1, v0, v4

    const-string v1, "*92"

    aput-object v1, v0, v5

    const-string v1, "*68"

    aput-object v1, v0, v6

    const-string v1, "*71"

    aput-object v1, v0, v3

    const-string v1, "*90"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*73"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*93"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mCallForwardingPopupNumberList:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "*720"

    aput-object v1, v0, v4

    const-string v1, "*920"

    aput-object v1, v0, v5

    const-string v1, "*710"

    aput-object v1, v0, v6

    const-string v1, "*900"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mCallForwardingNoPopupNumberList:[Ljava/lang/String;

    sput v3, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mServiceState:I

    return-void
.end method

.method private static assistedDialFrom(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "TelecomExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extraOrigin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "from_contact"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assistedDialFromContactList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assistedDialFromDialPad(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static assistedDialFromContactList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    const-class v0, Landroid/telephony/PhoneNumberUtils;

    const-string v1, "assistedDialFromContactList"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assisDialing:Ljava/lang/reflect/Method;

    invoke-static {p0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assistedDialing_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "TelecomExtension"

    const-string v1, "assistedDialFromContactList - NoSuchMethodException"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assistedDialFromDialPad(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    const-class v0, Landroid/telephony/PhoneNumberUtils;

    const-string v1, "assistedDialFromDialPad"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assisDialing:Ljava/lang/reflect/Method;

    invoke-static {p0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assistedDialing_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "TelecomExtension"

    const-string v1, "assistedDialFromDialPad - NoSuchMethodException"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assistedDialing(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TelecomExtension"

    const-string v1, "handle is null "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const-string v3, "origin"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "voicemail"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoiceCallSubId(Landroid/content/Intent;)I

    move-result v3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v0, "tel"

    :goto_2
    if-nez v3, :cond_2

    const-string v0, "TelecomExtension"

    const-string v1, "number is null "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {v3, p1, v5}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assistedDialFrom(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelecomExtension"

    const-string v5, "- got number from assisted dialing: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v4, v5, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private static assistedDialing_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assisDialing:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "TelecomExtension"

    const-string v2, "assistedDialing_Invoke - InvocationTargetException"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "TelecomExtension"

    const-string v2, " ssistedDialing_Invoke- IllegalAccessException"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static canAddCallCapable()Z
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getActiveOrHoldingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isAddCallCapable(Lcom/android/server/telecom/Call;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkCnapSpecialCases(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCnapSpecialCaseRestricted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TelecomExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCnapSpecialCases, PRIVATE/Restricted string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCnapSpecialCaseUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TelecomExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCnapSpecialCases, UNKNOWN/Unavailable string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const-string v0, "TelecomExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCnapSpecialCases, normal str. number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-string v0, "country_detector"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static getActiveOrHoldingCall()Lcom/android/server/telecom/Call;
    .locals 2

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x5
        0x6
    .end array-data
.end method

.method private static getEmergencyToneSetting(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_tone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getLogNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getOriginalNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOriginalNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getOriginalHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCnapSpecialCaseRestricted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCnapSpecialCaseUnknown(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPhoneType()I
    .locals 4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const-string v1, "TelecomExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static getPresentation(ILcom/android/server/telecom/Call;)I
    .locals 1

    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getLogNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPresentation(ILjava/lang/String;)I
    .locals 2

    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eq p0, v0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public static getPresentationString(Landroid/content/Context;ILcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getLogNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const v2, 0x7f08000a

    invoke-static {p1, p2}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static getRoaming()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mRoaming:Z

    return v0
.end method

.method public static getSecureSettingBoolean(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSecureSettingBoolean(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getSecureSettingBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static getServiceState()I
    .locals 1

    sget v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mServiceState:I

    return v0
.end method

.method public static getSilence()Z
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getSilence()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStreamByToneId(Lcom/android/server/telecom/CallAudioManager;II)I
    .locals 4

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    const-string v1, "TelecomExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamByToneId - toneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / stream : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothDeviceAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x38f
        :pswitch_0
    .end packed-switch
.end method

.method public static isAddCallCapable(Lcom/android/server/telecom/Call;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "usa_cdma_concept"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "thrway_active_disable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "2012071301"

    const-string v3, "ro.home.operator.carrierid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "TelecomExtension"

    const-string v2, "ADD_CALL_NOT_SUPPORT for XAS"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getTtyType()I

    move-result v2

    if-eq v2, v1, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static isAssistedDialingNumber()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/PhoneNumberUtils;

    const-string v2, "isAssistedDialingNumber"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "TelecomExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAssisted.getBoolean"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "TelecomExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchFieldException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "TelecomExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isCallForwardingPopupNumber(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "*720"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "*920"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mCallForwardingPopupNumberList:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isCdmaOtaSpNumber(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_0

    const-string v1, "*228"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isCnapSpecialCaseRestricted(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "PRIVATE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRIVATE NUMBER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "U"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static isDomesticRoaming()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->IsDomesticRoaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "TelecomExtension"

    const-string v3, "phone.IsDomesticRoaming() failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isDomesticRoamingInService()Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isDomesticRoaming()Z

    move-result v3

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getServiceState()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "TelecomExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StateInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isDomesticRoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static isDomesticRoamingSettingInService()Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "roam_guard_call_domestic"

    invoke-static {v2, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isDomesticRoamingInService()Z

    move-result v3

    const-string v4, "TelecomExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DomesticCallGuardEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isDomesticRoamingInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isEmergencyCallPlayTone(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "emergency_call_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "emergency_call_tone_always"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "emergency_call_tone_volume"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getEmergencyToneSetting(Landroid/content/Context;)I

    move-result v3

    if-ne v1, v3, :cond_1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static isEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInternationalRoaming()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->IsInternationalRoaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "TelecomExtension"

    const-string v3, "phone.IsInternationalRoaming() failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isInternationalRoamingInService()Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isInternationalRoaming()Z

    move-result v3

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getServiceState()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "TelecomExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StateInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isInternationalRoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static isInternationalRoamingSettingInService()Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "roam_guard_call_international"

    invoke-static {v2, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isInternationalRoamingInService()Z

    move-result v3

    const-string v4, "TelecomExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InternationalCallGuardEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isInternationalRoamingInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isInternationalRoamingSettingInServiceGsm()Z
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getServiceState()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "sprint_gsm_voice_guard"

    invoke-static {v3, v1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getRoaming()Z

    move-result v4

    const-string v5, "TelecomExtension"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StateInService : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / internationalCallGuardEnabledGsm : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / roaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static isOkToLogThisCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const-string v0, "emergency_calllog_disable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCdmaOtaSpNumber(Ljava/lang/String;)Z

    move-result v5

    const-string v3, "otasp_calllog_disable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_1
    if-eqz v4, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v5, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method public static isOtaSpNumber(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "activate_your_phone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    const-string v3, "TelecomExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOtaSpNumber("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getOriginalHandle()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCdmaOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPresentationAllowed(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRoamingSettingInService()Z
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isDomesticRoamingSettingInService()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isInternationalRoamingSettingInService()Z

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

.method private static isWirelessPriorityServiceNumber(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "*272"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static processOutgoingCallIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;
    .locals 12

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-string v4, "extra_by_pass"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v7

    const-string v8, "videocall"

    invoke-virtual {p0, v8, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v6, :cond_0

    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isEmergencyCallPlayTone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Lcom/android/server/telecom/InCallTonePlayer$Factory;

    iget-object v10, v7, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-direct {v9, v10}, Lcom/android/server/telecom/InCallTonePlayer$Factory;-><init>(Lcom/android/server/telecom/CallAudioManager;)V

    const/16 v10, 0x38f

    invoke-virtual {v9, v10}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/telecom/InCallTonePlayer;->startEmergencyToneBeforeCall()V

    const-wide/16 v10, 0x2bc

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    :cond_0
    const-string v9, "assisted_dialing_enable"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {p0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assistedDialing(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    :cond_1
    const-string v9, "emergency_calls_only_enable"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "ril.cdma.inecmmode"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v6, :cond_3

    :goto_0
    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "extra_dialog_type"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object p0, v0

    :cond_2
    return-object p0

    :cond_3
    const-string v9, "roaming_enhancement"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPhoneType()I

    move-result v9

    if-ne v9, v2, :cond_4

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isRoamingSettingInService()Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    const-string v9, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPhoneType()I

    move-result v9

    if-ne v9, v1, :cond_6

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getHasBeenVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isModifyRequestState(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isModifyReceiveState(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getIsTTYOn()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    if-nez v6, :cond_8

    const/16 v1, 0x12c

    goto/16 :goto_0

    :cond_8
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->hasAnyCallsExceptDisconnected()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v8, :cond_9

    const/16 v1, 0x12d

    goto/16 :goto_0

    :cond_9
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isModifyReceiveState(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    move v1, v3

    goto/16 :goto_0

    :cond_a
    const-string v1, "us_cdma_call_fowarding"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v5}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCallForwardingPopupNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_b
    const-string v1, "wireless_priority_service_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v5}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isWirelessPriorityServiceNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xc8

    goto/16 :goto_0

    :cond_c
    move v1, v3

    goto/16 :goto_0
.end method

.method public static recalculateRedialCount(II)I
    .locals 2

    const-string v0, "auto_retry_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static setAssisted(Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isAssistedDialingNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setAssisted(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRoaming(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mRoaming:Z

    return-void
.end method

.method public static setServiceState(I)V
    .locals 0

    sput p0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mServiceState:I

    return-void
.end method

.method public static shouldMakeAutoRedial(Landroid/content/Context;Z)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "auto_retry_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_auto_retry"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    move p1, v0

    :cond_1
    return p1
.end method

.method public static updateContentValues(Landroid/content/ContentValues;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2

    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cnap_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateHdvoiceCall(Lcom/android/server/telecom/Call;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setHDIcon(I)V

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->updateExtras(Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wirelessPriorityServiceCall()V
    .locals 2

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->wirelessPriorityServiceCall(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->getInstance()Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->setWirelessPriorityServiceIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->disconnectAllCalls()V

    goto :goto_0
.end method

.method public static wirelessPriorityServiceCall(Landroid/content/Intent;)V
    .locals 4

    if-eqz p0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "extra_by_pass"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TelecomExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

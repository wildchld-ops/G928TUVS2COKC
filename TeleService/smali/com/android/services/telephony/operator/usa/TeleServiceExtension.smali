.class public Lcom/android/services/telephony/operator/usa/TeleServiceExtension;
.super Ljava/lang/Object;
.source "TeleServiceExtension.java"


# static fields
.field private static mSilence:Z


# direct methods
.method public static checkForOtaspCall(Landroid/telecom/ConnectionRequest;Z)Z
    .locals 2
    .param p0    # Landroid/telecom/ConnectionRequest;
    .param p1    # Z

    const-string v1, "activate_your_phone"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->checkForOtaspCall(Landroid/net/Uri;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static disableWifiInEmergencyCall(Lcom/android/internal/telephony/Phone;ILandroid/net/Uri;)V
    .locals 5
    .param p0    # Lcom/android/internal/telephony/Phone;
    .param p1    # I
    .param p2    # Landroid/net/Uri;

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "support_wfc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    invoke-static {p0, p2}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isEmergency(Lcom/android/internal/telephony/Phone;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->disableWifiInEmergencyCall(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getOriginalConnectionFromNumber(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0    # Landroid/net/Uri;
    .param p1    # Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->getOriginalConnectionFromNumber(Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getOriginalConnectionFromNumber(Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 1
    .param p0    # Landroid/net/Uri;
    .param p1    # Landroid/net/Uri;
    .param p2    # Z

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p0, p1

    goto :goto_0
.end method

.method public static getSilence()Z
    .locals 1

    sget-boolean v0, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->mSilence:Z

    return v0
.end method

.method public static ignoreSignalForTFN(III)Z
    .locals 4
    .param p0    # I
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x1

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TFN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne p0, v2, :cond_0

    if-nez p1, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isCdmaOtaSpNumber(Ljava/lang/String;Z)Z
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const-string v1, "*22899"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "*228"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCdmaSilenceSignal(III)Z
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCdmaStandardSignal(III)Z
    .locals 2
    .param p0    # I
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEmergency(Lcom/android/internal/telephony/Phone;Landroid/net/Uri;)Z
    .locals 2
    .param p0    # Lcom/android/internal/telephony/Phone;
    .param p1    # Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .param p0    # Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;Z)Z

    move-result v0

    return v0
.end method

.method public static isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)Z
    .locals 3
    .param p0    # Lcom/android/internal/telephony/Phone;
    .param p1    # Landroid/telecom/ConnectionRequest;

    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;Z)Z

    move-result v2

    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;Z)Z
    .locals 8
    .param p0    # Lcom/android/internal/telephony/Phone;
    .param p1    # Z

    const/16 v7, 0xe

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const-string v5, "TeleServiceExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isImsRegistrationTrial isVoice("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "), LTE n/w("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, v7, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "), serviceState("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "), imsRegi("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-ne v0, v7, :cond_1

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public static otaspInCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 2
    .param p0    # Lcom/android/internal/telephony/Connection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isCdmaOtaSpNumber(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static setSilence(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->mSilence:Z

    return-void
.end method

.method public static toTelecomDisconnectCauseDescription(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p0    # I
    .param p1    # Ljava/lang/Integer;

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object p1

    :pswitch_1
    const v0, 0x7f0a0741

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a0742

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

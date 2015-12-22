.class public Lcom/android/phone/callsettings/SwisSettings$CoreAppsConfig;
.super Ljava/lang/Object;
.source "SwisSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SwisSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoreAppsConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SwisSettings$CoreAppsConfig$CountryDetectorWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEasySignupAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/phone/callsettings/SwisSettings$CoreAppsConfig$CountryDetectorWrapper;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isEasySignupRegistered(Landroid/content/Context;)Z
    .locals 5
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/phone/callsettings/SwisSettings$CoreAppsConfig;->isServiceSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SwisSettings"

    const-string v3, "isEasySignupRegistered() is false"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x9

    :try_start_0
    invoke-static {p0, v2}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->isJoined(Landroid/content/Context;I)Z

    move-result v1

    const-string v2, "SwisSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEasySignupRegistered() : isJoined(SERVICE_ID_SWIS) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->isAuth(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "SwisSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception isJoined()!! isAuth() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isServiceSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isUltraPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "SwisSettings"

    const-string v3, "isEmergencyMode || isUltraPowerSavingMode"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    invoke-static {p0, v1}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const-string v2, "SwisSettings"

    const-string v3, "CONTACT_SERVICE_OFF!"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static serviceOff(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/phone/callsettings/SwisSettings$CoreAppsConfig;->isServiceSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->serviceOff(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static serviceOn(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/phone/callsettings/SwisSettings$CoreAppsConfig;->isServiceSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->serviceOn(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

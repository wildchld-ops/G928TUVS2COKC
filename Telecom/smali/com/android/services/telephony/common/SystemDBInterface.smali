.class public Lcom/android/services/telephony/common/SystemDBInterface;
.super Ljava/lang/Object;
.source "SystemDBInterface.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static enabledKidsModeCallApp()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "kids_home_mode"

    const-string v2, "com.sec.kidsplat.phone"

    sget-object v2, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kids_home_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lt v2, v0, :cond_0

    :try_start_0
    sget-object v3, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "com.sec.kidsplat.phone"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasKidsModeCall activated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, v0

    :goto_1
    return v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getLGTRADCode()I
    .locals 3

    const-string v0, "country_code"

    const/16 v1, 0x52

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLGTRADCode value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static getLGTRADSetting()I
    .locals 3

    const-string v0, "auto_dial_enable"

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLGTRADSetting value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static getMirrorLinkRejectMsg()Ljava/lang/String;
    .locals 2

    const-string v0, "DRIVELINK_REJECT_MESSAGE_BODY"

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DRIVELINK_REJECT_MESSAGE_BODY"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoamingAutoDialSetting()I
    .locals 3

    const-string v0, "roaming_auto_dial"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoamingAutoDialSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method public static getSecureSettingDB(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method public static getSettingDB(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method public static getSettingDB(Ljava/lang/String;II)I
    .locals 1

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    goto :goto_0
.end method

.method public static getTtySetting()I
    .locals 3

    const-string v0, "preferred_tty_mode"

    const-string v0, "preferred_tty_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTtySetting, setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method public static getWideBandAMR()I
    .locals 2

    const-string v0, "wb_amr_mode"

    const-string v0, "wb_amr_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isCarAppRunning()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "drive_link_on"

    const-string v2, "drive_link_on"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isCarModeNaviOn()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "drivelink_mode"

    const-string v1, "drivelink_mode"

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCarModeOn()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "drivelink_mode"

    const-string v2, "drivelink_mode"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-lt v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isCarmodeHome()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "not_support_drive_link"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "carmode_home"

    const-string v2, "carmode_home"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    const-string v1, "SystemDBInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCarmodeHome : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isCarrierPhoneEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

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

.method public static isCarrierPhoneMode()Z
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneMode()Z

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

.method public static isConnectedMirrorLink()Z
    .locals 2

    const-string v0, "net.mirrorlink.on"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEasyModeOn()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "easy_mode_switch"

    const-string v2, "easy_mode_contacts"

    const-string v2, "easy_mode_switch"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "easy_mode_contacts"

    invoke-static {v3, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "support_easy_mode_enhanced"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v4, "support_easy_mode"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isEmergencyMode()Z
    .locals 1

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isFolderReceiveCall()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "answeringmode_folder_open"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFolderReceiveCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isIncomingCallPopUPEnabled()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "popup_incoming_call"

    const-string v3, "popup_incoming_call"

    const-string v0, "default_incomingcall_popup"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIncomingCallPopUPEnabled : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public static isMcidBlockedNumber()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "mcid_rejected_number"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isMirrorLinkModeOn()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "support_mirror_link"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMirrorLinkReceiveCall()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "drivelink_receive_call"

    const-string v2, "drivelink_receive_call"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isMirrorLinkRejectMsgOn()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "DRIVELINK_SETTINGS_REJECT_MESSAGE_ON"

    const-string v2, "DRIVELINK_SETTINGS_REJECT_MESSAGE_ON"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isModifyInProgress()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "callModifyInProgress"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModifyInProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isNsriSecureCallMode()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "nsri_secure_call_mode"

    const-string v1, "nsri_secure_call_mode"

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isOllehPhoneEnabled()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "support_ollehphone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v2, "kt_ollehphone_enabled"

    invoke-static {v2, v1, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isOllehPhoneMode()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "isOllehPhoneMode : emergency mode"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "isOllehPhoneMode : drivelink mode"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->enabledKidsModeCallApp()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "isOllehPhoneMode : kids mode"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "isOllehPhoneMode : true"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_0
.end method

.method public static isOllehPhoneRelaxMode()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const-string v0, "kt_ollehphone_relax_mode"

    const-string v0, "kt_ollehphone_relax_mode"

    invoke-static {v0, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOllehPhoneRelaxMode : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    if-eqz v3, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public static isPackageInstalled(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isRecordingVoiceNote()Z
    .locals 6

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "voiceRecorder_recording_enable"

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Audiomanager.isRecordActive() is false"

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v0, "voicenote_recording_enable"

    invoke-static {v0, v2, v4}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;II)I

    move-result v0

    const-string v1, "voiceRecorder_recording_enable"

    invoke-static {v1, v2, v4}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_2

    const-string v1, "j_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_3

    const-string v0, "voicenote_recording is not set"

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.sec.android.app.voicenote"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static isSafetyAssistanceMode()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    const-string v2, "ultra_powersaving_mode"

    invoke-static {v2, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSafetyAssistanceMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    return v0

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public static isSecondScreenEnabled()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "second_screen_call"

    const-string v0, "second_screen_call"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSecondScreenEnabled : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

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

.method public static isTPhoneEnabled()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v2, "skt_phone20_settings"

    invoke-static {v2, v1, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isTPhoneMode()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "isTPhoneMode : emergency mode"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneUpgradeInstallingState()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "isTPhoneMode : TPhone istalling"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "isTPhoneMode : drivelink mode"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->enabledKidsModeCallApp()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "isTPhoneMode : kids mode"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string v0, "isTPhoneMode : true"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_0
.end method

.method public static isTPhoneRADDialingToKorea()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "skt_phone20_rad_dialing_korea"

    const-string v1, "skt_phone20_rad_dialing_korea"

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTPhoneRelaxMode()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const-string v0, "skt_phone20_relax_mode"

    const-string v0, "skt_phone20_relax_mode"

    invoke-static {v0, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTPhoneRelaxMode : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    if-eqz v3, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public static isTPhoneUpgradeInstallingState()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "skt_phone20_installing_mode"

    const-string v2, "skt_phone20_installing_mode"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SystemDBInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "SystemDBInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setAirplainModeOn(Landroid/content/Context;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAirplainModeOn -  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setEcholocateCallID(Ljava/lang/String;)V
    .locals 2

    const-string v0, "echolocate_id"

    const-string v0, "echolocate_id"

    invoke-static {v0, p0}, Lcom/android/services/telephony/common/SystemDBInterface;->setSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEcholocateCallID strbuf :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static setModifyInProgress(Z)V
    .locals 2

    const-string v1, "callModifyInProgress"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->setSettingDB(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setModifyInProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setOllehPhoneRejectMode(I)V
    .locals 2

    const-string v0, "kt_ollehphone_reject_mode"

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kt_ollehphone_reject_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOllehPhoneRejectMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setOllehPhoneRelaxMode(I)V
    .locals 2

    const-string v0, "kt_ollehphone_relax_mode"

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kt_ollehphone_relax_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOllehPhoneRelaxMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setSettingDB(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static setSettingDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static setTPhoneRADDialingToKorea(I)V
    .locals 2

    const-string v0, "skt_phone20_rad_dialing_korea"

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "skt_phone20_rad_dialing_korea"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTPhoneRADDialingToKorea : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setTPhoneRejectMode(I)V
    .locals 2

    const-string v0, "skt_phone20_reject_mode"

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "skt_phone20_reject_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTPhoneRejectMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setTPhoneRelaxMode(I)V
    .locals 2

    const-string v0, "skt_phone20_relax_mode"

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "skt_phone20_relax_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTPhoneRelaxMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setTPhoneUpgradeInstallingState(I)V
    .locals 2

    const-string v0, "skt_phone20_installing_mode"

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "skt_phone20_installing_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTPhoneUpgradeInstallingState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setWideBandAMR(I)V
    .locals 2

    const-string v0, "wb_amr_mode"

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wb_amr_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWideBandAMR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static supportActionMemo()Z
    .locals 1

    const-string v0, "com.samsung.android.snote"

    const-string v0, "use_action_memo_duringcall"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.snote"

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

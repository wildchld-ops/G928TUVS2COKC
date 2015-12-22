.class public Lcom/android/phone/operator/usa/Roaming;
.super Landroid/preference/PreferenceActivity;
.source "Roaming.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/usa/Roaming$MyHandler;
    }
.end annotation


# static fields
.field static final preferredNetworkMode:I


# instance fields
.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

.field private mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

.field private mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

.field private mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

.field private mButtonInternationalGsmDataRoamingSetting:Landroid/preference/SwitchPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

.field private mButtonRoamingMode:Landroid/preference/ListPreference;

.field private mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/phone/operator/usa/Roaming$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingMode:I

.field private mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    sput v0, Lcom/android/phone/operator/usa/Roaming;->preferredNetworkMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/operator/usa/Roaming;->mRoamingMode:I

    new-instance v0, Lcom/android/phone/operator/usa/Roaming$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/usa/Roaming$1;-><init>(Lcom/android/phone/operator/usa/Roaming;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/operator/usa/Roaming;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/operator/usa/Roaming;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0    # Lcom/android/phone/operator/usa/Roaming;

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/operator/usa/Roaming;)Landroid/preference/ListPreference;
    .locals 1
    .param p0    # Lcom/android/phone/operator/usa/Roaming;

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/operator/usa/Roaming;II)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/usa/Roaming;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/Roaming;->setCheckSecureSettingRoamValue(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/operator/usa/Roaming;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/usa/Roaming;

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setCdmaRoaming()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/operator/usa/Roaming;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/usa/Roaming;

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setLTECdmaRoaming()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/operator/usa/Roaming;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/usa/Roaming;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/Roaming;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method private domesticCdmaDataRoamingSettingTreeClick(Z)V
    .locals 6
    .param p1    # Z

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Roaming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domesticCdmaDataRoamingSettingTreeClick :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/Roaming;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a022d

    new-instance v2, Lcom/android/phone/operator/usa/Roaming$5;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/usa/Roaming$5;-><init>(Lcom/android/phone/operator/usa/Roaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a022e

    new-instance v2, Lcom/android/phone/operator/usa/Roaming$4;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/usa/Roaming$4;-><init>(Lcom/android/phone/operator/usa/Roaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "domestic_cdma_data_roaming_setting_extra"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/Roaming;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v5, v4}, Lcom/android/phone/operator/usa/Roaming;->setSecureSettingRoamValue(II)V

    const-string v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setLTECdmaRoaming()V

    goto :goto_0

    :cond_4
    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v4, v3}, Lcom/android/phone/operator/usa/Roaming;->setCheckSecureSettingRoamValue(II)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setCdmaRoaming()V

    :cond_5
    invoke-direct {p0, v5, v3}, Lcom/android/phone/operator/usa/Roaming;->setCheckSecureSettingRoamValue(II)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    :cond_6
    const-string v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setLTECdmaRoaming()V

    goto :goto_0
.end method

.method private domesticCdmaVoiceRoamingSettingTreeClick(Z)V
    .locals 5
    .param p1    # Z

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Roaming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domesticCdmaVoiceRoamingSettingTreeClick :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/Roaming;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a022d

    new-instance v2, Lcom/android/phone/operator/usa/Roaming$3;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/usa/Roaming$3;-><init>(Lcom/android/phone/operator/usa/Roaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a022e

    new-instance v2, Lcom/android/phone/operator/usa/Roaming$2;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/usa/Roaming$2;-><init>(Lcom/android/phone/operator/usa/Roaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/android/phone/operator/usa/Roaming;->setCheckSecureSettingRoamValue(II)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setCdmaRoaming()V

    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/phone/operator/usa/Roaming;->setCheckSecureSettingRoamValue(II)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    :cond_2
    const-string v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setLTECdmaRoaming()V

    goto :goto_0
.end method

.method private internationalCdmaDataRoamingSettingTreeClick(Z)V
    .locals 6
    .param p1    # Z

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Roaming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internationalCdmaDataRoamingSettingTreeClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/Roaming;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a022d

    new-instance v2, Lcom/android/phone/operator/usa/Roaming$9;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/usa/Roaming$9;-><init>(Lcom/android/phone/operator/usa/Roaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a022e

    new-instance v2, Lcom/android/phone/operator/usa/Roaming$8;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/usa/Roaming$8;-><init>(Lcom/android/phone/operator/usa/Roaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "international_cdma_data_roaming_setting_extra"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/Roaming;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v5, v4}, Lcom/android/phone/operator/usa/Roaming;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_4
    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/operator/usa/Roaming;->setCheckSecureSettingRoamValue(II)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setCdmaRoaming()V

    :cond_5
    invoke-direct {p0, v5, v3}, Lcom/android/phone/operator/usa/Roaming;->setCheckSecureSettingRoamValue(II)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalCdmaVoiceRoamingSettingTreeClick(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x0

    const-string v0, "Roaming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internationalCdmaVoiceRoamingSettingTreeClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/Roaming;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a022d

    new-instance v2, Lcom/android/phone/operator/usa/Roaming$7;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/usa/Roaming$7;-><init>(Lcom/android/phone/operator/usa/Roaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a022e

    new-instance v2, Lcom/android/phone/operator/usa/Roaming$6;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/usa/Roaming$6;-><init>(Lcom/android/phone/operator/usa/Roaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/operator/usa/Roaming;->setCheckSecureSettingRoamValue(II)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setCdmaRoaming()V

    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/android/phone/operator/usa/Roaming;->setCheckSecureSettingRoamValue(II)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private internationalGsmDataRoamingSettingTreeClick(Z)V
    .locals 4
    .param p1    # Z

    const/16 v3, 0x8

    const-string v0, "Roaming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internationalGsmDataRoamingSettingTreeClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "international_gsm_data_roaming_setting_extra"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/Roaming;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/android/phone/operator/usa/Roaming;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/phone/operator/usa/Roaming;->setCheckSecureSettingRoamValue(II)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "Roaming"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendDataRoamingGuardBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data_roaming_settings_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/Roaming;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setCdmaRoaming()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/operator/usa/Roaming;->mHandler:Lcom/android/phone/operator/usa/Roaming$MyHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setCdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V

    return-void
.end method

.method private setCheckSecureSettingRoamValue(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Roaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCheckSecureSettingRoamValue() key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    if-eqz p2, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/Roaming;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    if-eqz p2, :cond_1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/Roaming;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    if-eqz p2, :cond_2

    :goto_3
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/Roaming;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_4
    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    if-eqz p2, :cond_3

    :goto_4
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/Roaming;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    :pswitch_5
    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/SwitchPreference;

    if-eqz p2, :cond_4

    :goto_5
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/Roaming;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private setLTECdmaRoaming()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/operator/usa/Roaming;->mHandler:Lcom/android/phone/operator/usa/Roaming$MyHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setLTECdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V

    return-void
.end method

.method private setPreferenceEnabledPhoneType()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v2, v1, :cond_1

    invoke-direct {p0, v6}, Lcom/android/phone/operator/usa/Roaming;->setRoamingSettingEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-eq v0, v6, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setRoamingSettingEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method private setSecureSettingRoamValue(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    const-string v0, "Roaming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecureSettingRoamValue() key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "roam_setting_call_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v0, "roam_guard_call_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "roam_setting_data_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v0, "roam_guard_data_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roam_setting_data_lte"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    const-string v0, "roam_setting_call_international"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v0, "roam_guard_call_international"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_4
    const-string v0, "roam_setting_data_international"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v0, "roam_guard_data_international"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roam_setting_data_lte_international"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_5
    const-string v0, "sprint_gsm_data_roaming"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v0, "sprint_gsm_data_guard"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private updateRoaming()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    iget v5, p0, Lcom/android/phone/operator/usa/Roaming;->mRoamingMode:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    if-nez v2, :cond_0

    invoke-direct {p0, v6}, Lcom/android/phone/operator/usa/Roaming;->setRoamingSettingEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    :goto_0
    const-string v3, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    sget v5, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v7, v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v7, :cond_3

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private updateRoamingPolicy()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/Roaming;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private updateRoamingSetting()V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    const-string v7, "roam_setting_call_domestic"

    invoke-static {v7, v5}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    const-string v4, "roam_setting_call_domestic_forced"

    invoke-static {v4, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    const-string v7, "roam_setting_call_international"

    invoke-static {v7, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    const-string v4, "roam_setting_call_international_forced"

    invoke-static {v4, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string v4, "roam_setting_data_domestic"

    invoke-static {v4, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    const-string v4, "lte_roaming_enhancement"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "roam_setting_data_lte"

    invoke-static {v4, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    or-int/2addr v1, v4

    :cond_0
    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v4, "roam_setting_data_domestic_forced"

    invoke-static {v4, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    const-string v4, "lte_roaming_enhancement"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "roam_setting_data_lte_forced"

    invoke-static {v4, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    and-int/2addr v0, v4

    :cond_1
    iget-object v7, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string v4, "roam_setting_data_international"

    invoke-static {v4, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    const-string v4, "lte_roaming_enhancement"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_2
    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v4, "roam_setting_data_international_forced"

    invoke-static {v4, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    const-string v4, "lte_roaming_enhancement"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_3
    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    if-nez v2, :cond_7

    :goto_3
    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/SwitchPreference;

    const-string v5, "sprint_gsm_data_roaming"

    invoke-static {v5, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_4
    move v4, v6

    goto/16 :goto_0

    :cond_5
    move v4, v6

    goto :goto_1

    :cond_6
    move v4, v6

    goto :goto_2

    :cond_7
    move v5, v6

    goto :goto_3
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Roaming"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setPreferenceEnabledPhoneType()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->updateRoamingSetting()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->updateRoaming()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->updateRoamingPolicy()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const v6, 0x7f070034

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "Roaming"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_a

    invoke-virtual {p0, v6}, Lcom/android/phone/operator/usa/Roaming;->addPreferencesFromResource(I)V

    :goto_0
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getDefaultRoamingMode()I

    move-result v4

    iput v4, p0, Lcom/android/phone/operator/usa/Roaming;->mRoamingMode:I

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/Roaming;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    new-instance v4, Lcom/android/phone/operator/usa/Roaming$MyHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/phone/operator/usa/Roaming$MyHandler;-><init>(Lcom/android/phone/operator/usa/Roaming;Lcom/android/phone/operator/usa/Roaming$1;)V

    iput-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mHandler:Lcom/android/phone/operator/usa/Roaming$MyHandler;

    const-string v4, "roaming_mode_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    const-string v4, "csc_chameleon_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    const v5, 0x7f0900a9

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    :cond_0
    const-string v4, "system_select_home_only_entry"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    const v5, 0x7f0900aa

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_settings"

    iget v6, p0, Lcom/android/phone/operator/usa/Roaming;->mRoamingMode:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v4, "roaming_guard_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

    const-string v4, "domestic_cdma_voice_roaming_settings_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string v4, "domestic_cdma_data_roaming_settings_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    const-string v4, "international_cdma_voice_roaming_settings_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    const-string v4, "international_cdma_data_roaming_settings_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    const-string v4, "international_gsm_data_roaming_settings_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    const-string v4, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "international_gsm_category_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const-string v4, "roaming_setting_guard_data_only"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/Roaming;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_9
    return-void

    :cond_a
    if-eq v1, v7, :cond_b

    const/4 v4, 0x3

    if-eq v1, v4, :cond_b

    const/4 v4, 0x5

    if-ne v1, v4, :cond_c

    :cond_b
    invoke-virtual {p0, v6}, Lcom/android/phone/operator/usa/Roaming;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/Roaming;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/Roaming;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/Roaming;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v3, "Roaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/operator/usa/Roaming;->domesticCdmaVoiceRoamingSettingTreeClick(Z)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/operator/usa/Roaming;->domesticCdmaDataRoamingSettingTreeClick(Z)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/operator/usa/Roaming;->internationalCdmaVoiceRoamingSettingTreeClick(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/operator/usa/Roaming;->internationalCdmaDataRoamingSettingTreeClick(Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/operator/usa/Roaming;->internationalGsmDataRoamingSettingTreeClick(Z)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    iget v5, p0, Lcom/android/phone/operator/usa/Roaming;->mRoamingMode:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->updateSystemSelectHomeOnly()V

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->updateRoamingSetting()V

    invoke-direct {p0, v7}, Lcom/android/phone/operator/usa/Roaming;->setRoamingSettingEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_1
    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "Roaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCdmaRoamingPreference value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/operator/usa/Roaming;->mHandler:Lcom/android/phone/operator/usa/Roaming$MyHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/phone/operator/usa/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    const-string v3, "lte_roaming_enhancement"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setLTECdmaRoaming()V

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->updateSystemSelectAutomatic()V

    const-string v3, "roam_guard_call_domestic"

    invoke-static {v3, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "roam_guard_data_domestic"

    invoke-static {v3, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "roam_guard_call_international"

    invoke-static {v3, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "roam_guard_data_international"

    invoke-static {v3, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v3, "roam_guard_sms_international"

    invoke-static {v3, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setPreferenceEnabledPhoneType()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->updateRoamingSetting()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->updateRoamingPolicy()V

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const-string v1, "Roaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "Roaming"

    const-string v2, "onPreferenceTreeClick: preference == mButtonRoamingMode."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_settings"

    iget v3, p0, Lcom/android/phone/operator/usa/Roaming;->mRoamingMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v1, "Roaming"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/Roaming;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/Roaming;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/Roaming;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mHandler:Lcom/android/phone/operator/usa/Roaming$MyHandler;

    invoke-virtual {v2, v5}, Lcom/android/phone/operator/usa/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->setPreferenceEnabledPhoneType()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->updateRoamingSetting()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->updateRoaming()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/Roaming;->updateRoamingPolicy()V

    return-void

    :cond_0
    if-eq v0, v4, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/operator/usa/Roaming;->mHandler:Lcom/android/phone/operator/usa/Roaming$MyHandler;

    invoke-virtual {v2, v5}, Lcom/android/phone/operator/usa/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

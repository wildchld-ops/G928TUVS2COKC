.class public Lcom/android/phone/operator/usa/DataRoamingGuard;
.super Landroid/app/Activity;
.source "DataRoamingGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;
    }
.end annotation


# instance fields
.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mDataRoamingSettingsExtra:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRoamHandler:Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

.field private mRoamListener:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/phone/operator/usa/DataRoamingGuard$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/usa/DataRoamingGuard$1;-><init>(Lcom/android/phone/operator/usa/DataRoamingGuard;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/operator/usa/DataRoamingGuard$2;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/DataRoamingGuard$2;-><init>(Lcom/android/phone/operator/usa/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/DataRoamingGuard$3;-><init>(Lcom/android/phone/operator/usa/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mCancelListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/operator/usa/DataRoamingGuard$4;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/DataRoamingGuard$4;-><init>(Lcom/android/phone/operator/usa/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mRoamListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/operator/usa/DataRoamingGuard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setCdmaRoaming()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setSecureRoamGuardDataValue(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/operator/usa/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private setCdmaRoaming()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mRoamHandler:Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setCdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V

    return-void
.end method

.method private setLTECdmaRoaming()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mRoamHandler:Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setLTECdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V

    return-void
.end method

.method private setSecureRoamGuardDataValue(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v2, "domestic_cdma_data_roaming_setting_extra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "roam_guard_data_domestic"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "roam_guard_data_lte"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v2, "international_cdma_data_roaming_setting_extra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "roam_guard_data_international"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "roam_guard_data_lte_international"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->IsDomesticLteRoaming()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "roam_guard_data_domestic"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "roam_guard_data_lte"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->IsInternationalLteRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    const-string v1, "roam_guard_data_international"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "roam_guard_data_lte_international"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInServiceGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sprint_gsm_data_guard"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
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

.method private setSecureRoamSettingCallValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v1, "domestic_cdma_data_roaming_setting_extra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "roam_setting_call_domestic"

    invoke-static {v0, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v1, "international_cdma_data_roaming_setting_extra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roam_setting_call_international"

    invoke-static {v0, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "roam_setting_call_domestic"

    invoke-static {v0, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roam_setting_call_international"

    invoke-static {v0, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setSecureRoamSettingDataValue(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v2, "domestic_cdma_data_roaming_setting_extra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "roam_setting_data_domestic"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "roam_setting_data_lte"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v2, "international_cdma_data_roaming_setting_extra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "roam_setting_data_international"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "roam_setting_data_lte_international"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->IsDomesticLteRoaming()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const-string v1, "roam_setting_data_domestic"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "roam_setting_data_lte"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_4
    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setLTECdmaRoaming()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->IsInternationalLteRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    const-string v1, "roam_setting_data_international"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "roam_setting_data_lte_international"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    :cond_8
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInServiceGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sprint_gsm_data_roaming"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
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


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f04001c

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setContentView(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "roaming_setting_guard_data_only"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

    invoke-direct {v3, v4}, Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;-><init>(Lcom/android/phone/operator/usa/DataRoamingGuard$1;)V

    iput-object v3, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mRoamHandler:Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "data_roaming_settings_extra"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "data_roaming_settings_extra"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    :cond_0
    :goto_0
    const v3, 0x7f10006f

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mRoamListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f100018

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    const-string v3, "roaming_setting_guard_data_only"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    const-string v3, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "data_roaming"

    invoke-static {v3, v6}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    const-string v3, "lte_roaming_enhancement"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

    invoke-direct {v3, v4}, Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;-><init>(Lcom/android/phone/operator/usa/DataRoamingGuard$1;)V

    iput-object v3, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mRoamHandler:Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setDataRoamingGuardActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setCdmaRoaming()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setDataRoamingGuardActivity(Landroid/app/Activity;)V

    return-void
.end method

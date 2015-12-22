.class public Lcom/android/phone/InternationalEnhanced4GLTE;
.super Landroid/preference/PreferenceActivity;
.source "InternationalEnhanced4GLTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InternationalEnhanced4GLTE$Enhanced4GLTEReceiver;
    }
.end annotation


# static fields
.field private static forcingVolteMenuEnable:Z


# instance fields
.field private mAirPlaneObserverRegister:Z

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEnhanced4GLTEReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private mInternationalData:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUCEEnabled:Landroid/preference/CheckBoxPreference;

.field private mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

.field private mVoLTEEnabled:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InternationalEnhanced4GLTE;->forcingVolteMenuEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAirPlaneObserverRegister:Z

    iput-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v0, Lcom/android/phone/InternationalEnhanced4GLTE$Enhanced4GLTEReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InternationalEnhanced4GLTE$Enhanced4GLTEReceiver;-><init>(Lcom/android/phone/InternationalEnhanced4GLTE;Lcom/android/phone/InternationalEnhanced4GLTE$1;)V

    iput-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mEnhanced4GLTEReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    new-instance v0, Lcom/android/phone/InternationalEnhanced4GLTE$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InternationalEnhanced4GLTE$1;-><init>(Lcom/android/phone/InternationalEnhanced4GLTE;)V

    iput-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/InternationalEnhanced4GLTE$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InternationalEnhanced4GLTE$2;-><init>(Lcom/android/phone/InternationalEnhanced4GLTE;)V

    iput-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/InternationalEnhanced4GLTE$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InternationalEnhanced4GLTE$3;-><init>(Lcom/android/phone/InternationalEnhanced4GLTE;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/InternationalEnhanced4GLTE$4;

    invoke-direct {v0, p0}, Lcom/android/phone/InternationalEnhanced4GLTE$4;-><init>(Lcom/android/phone/InternationalEnhanced4GLTE;)V

    iput-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/InternationalEnhanced4GLTE;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/InternationalEnhanced4GLTE;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/InternationalEnhanced4GLTE;->forcingVolteMenuEnable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/phone/InternationalEnhanced4GLTE;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->checkEDMRoaming()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/InternationalEnhanced4GLTE;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/InternationalEnhanced4GLTE;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/InternationalEnhanced4GLTE;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mOkClicked:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/InternationalEnhanced4GLTE;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mOkClicked:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/InternationalEnhanced4GLTE;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/InternationalEnhanced4GLTE;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private checkEDMRoaming()V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "enterprise_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private onInternationalDataClicked()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "InternationalEnhanced4GLTE"

    const-string v1, "onInternationalDataClicked"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mOkClicked:Z

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/InternationalEnhanced4GLTE$7;

    invoke-direct {v2, p0}, Lcom/android/phone/InternationalEnhanced4GLTE$7;-><init>(Lcom/android/phone/InternationalEnhanced4GLTE;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/phone/InternationalEnhanced4GLTE$6;

    invoke-direct {v2, p0}, Lcom/android/phone/InternationalEnhanced4GLTE$6;-><init>(Lcom/android/phone/InternationalEnhanced4GLTE;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InternationalEnhanced4GLTE$5;

    invoke-direct {v1, p0}, Lcom/android/phone/InternationalEnhanced4GLTE$5;-><init>(Lcom/android/phone/InternationalEnhanced4GLTE;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private setVideoCallEnabled(Z)V
    .locals 3

    const-string v0, "InternationalEnhanced4GLTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoCallEnabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallEnable()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallDisable()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/phone/InternationalEnhanced4GLTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v5, 0x7f070025

    invoke-virtual {p0, v5}, Lcom/android/phone/InternationalEnhanced4GLTE;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v5, "international_data_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    const-string v5, "international_enhanced_4glte_services_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    const-string v5, "international_enhanced_4glte_video_call_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    const-string v5, "international_user_capabilities_exchange_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v4

    const-string v5, "InternationalEnhanced4GLTE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uceSupport: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v5, "non_volte_settings_in_mobile_networks"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v5, "support_enhanced_4glte_setting_video_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.android.phone.action.ENABLE_UCE_TOGGLE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mEnhanced4GLTEReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/android/phone/InternationalEnhanced4GLTE;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v5, v6}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v8, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAirPlaneObserverRegister:Z

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_4
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const-string v1, "InternationalEnhanced4GLTE"

    const-string v2, "onDestroy..."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAirPlaneObserverRegister:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v2, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->deRegisterForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "InternationalEnhanced4GLTE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->onInternationalDataClicked()V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "international_voicecall_type"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    const-string v6, "InternationalEnhanced4GLTE"

    const-string v7, "manual register for IMS"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v6}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    :cond_2
    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->mUCEToggleEnabled:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_1
    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    sput-boolean v5, Lcom/android/phone/InternationalEnhanced4GLTE;->forcingVolteMenuEnable:Z

    iget-object v4, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x2710

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "international_voicecall_type"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v6, :cond_6

    if-eqz v2, :cond_6

    const-string v6, "InternationalEnhanced4GLTE"

    const-string v7, "manual deregister for IMS"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v6}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualDeregister()V

    const-string v6, "InternationalEnhanced4GLTE"

    const-string v7, "mVoLTEEnabled : false, so setLTEVideoCallDisable"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-direct {p0, v4}, Lcom/android/phone/InternationalEnhanced4GLTE;->setVideoCallEnabled(Z)V

    :cond_6
    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "internationa_uce_enable"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v6, :cond_8

    if-eqz v2, :cond_8

    const-string v6, "InternationalEnhanced4GLTE"

    const-string v7, "setEABFeatureEnable for IMS"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v6}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setEABFeatureEnable()V

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    sput-boolean v4, Lcom/android/phone/PhoneGlobals;->mUCEToggleEnabled:Z

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.phone.action.DISABLE_UCE_TOGGLE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/InternationalEnhanced4GLTE;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.contacts.eab.PST_SETTING_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "Capability_Discovery"

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "internationa_uce_enable"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v5, v4, :cond_b

    const-string v4, "1"

    :goto_3
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "values"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/InternationalEnhanced4GLTE;->sendBroadcast(Landroid/content/Intent;)V

    :cond_9
    move v4, v5

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "internationa_uce_enable"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v6, :cond_8

    if-eqz v2, :cond_8

    const-string v6, "InternationalEnhanced4GLTE"

    const-string v7, "setEABFeatureDisable for IMS"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v6}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setEABFeatureDisable()V

    goto :goto_2

    :cond_b
    const-string v4, "0"

    goto :goto_3

    :cond_c
    iget-object v6, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v4, :cond_d

    if-eqz v2, :cond_d

    iget-object v4, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/InternationalEnhanced4GLTE;->setVideoCallEnabled(Z)V

    :cond_d
    move v4, v5

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v1, "InternationalEnhanced4GLTE"

    const-string v4, "onResume..."

    invoke-static {v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "international_voicecall_type"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v4, :cond_1

    sget-boolean v1, Lcom/android/phone/InternationalEnhanced4GLTE;->forcingVolteMenuEnable:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegisteringToMobile()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isDisablingMobileData()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "internationa_uce_enable"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;

    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->mUCEToggleEnabled:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->checkEDMRoaming()V

    return-void

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVideoCallEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3
.end method

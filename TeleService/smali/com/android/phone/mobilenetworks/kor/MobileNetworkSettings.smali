.class public Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private enableEmergency:Z

.field private isSupportLTERoaming:Z

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mButtonApnExpand:Landroid/preference/PreferenceScreen;

.field private mButtonDataEnabled:Landroid/preference/TwoStatePreference;

.field private mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

.field private mButtonDataRoam:Landroid/preference/TwoStatePreference;

.field private mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonNetworkStatus:Landroid/preference/ListPreference;

.field private mDataNetworkDialog:Landroid/app/Dialog;

.field private mDataNetworkObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirplainModeObserverRegister:Z

.field private mMobileNetworkStatus:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingDataWarningDialog:Landroid/app/Dialog;

.field private mUseDataRoamingObserver:Landroid/database/ContentObserver;

.field private mUseLTEDataRoamingObserver:Landroid/database/ContentObserver;

.field private mXmlResId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->enableEmergency:Z

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->isSupportLTERoaming:Z

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mIsAirplainModeObserverRegister:Z

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$4;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUseLTEDataRoamingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$5;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$6;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->setMobileNetwork()V

    return-void
.end method

.method private getDataWarningMessage(Z)I
    .locals 3

    const v0, 0x7f0a0666

    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, 0x7f0a0663

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    const v0, 0x7f0a07df

    goto :goto_0

    :cond_3
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    const v0, 0x7f0a0667

    goto :goto_0

    :cond_4
    const v0, 0x7f0a0664

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    const v0, 0x7f0a0665

    goto :goto_0

    :cond_6
    const v0, 0x7f0a0662

    goto :goto_0
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    goto :goto_0
.end method

.method private final isExceptionalUSIM()Z
    .locals 3

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "45005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SKT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "45006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LGT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "45008"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "KTT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MobileNetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private menuSimplification(Landroid/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    check-cast v0, Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$10;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$10;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    check-cast v0, Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$11;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$11;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private setMobileNetwork()V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    :goto_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getDataWarningMessage(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$12;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$12;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/net/ConnectivityManager;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$13;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$13;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/net/ConnectivityManager;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateDataNetworkModeDependency()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    :cond_3
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isDataNetworkModeVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    :cond_4
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->finish()V

    :cond_0
    const v4, 0x7f07002f

    iput v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mXmlResId:I

    iget v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mXmlResId:I

    invoke-virtual {p0, v4}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v8, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mIsAirplainModeObserverRegister:Z

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getTwoStateTypes()[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v9

    const-string v4, "button_data_enabled_key"

    invoke-static {v2, v4, v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/TwoStatePreference;

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    const-string v4, "button_roaming_key"

    invoke-static {v2, v4, v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/TwoStatePreference;

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->menuSimplification(Landroid/preference/PreferenceScreen;)V

    const-string v4, "button_lte_roaming_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    const-string v4, "button_apn_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonApnExpand:Landroid/preference/PreferenceScreen;

    const-string v4, "button_data_network_mode_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    const-string v4, "button_network_status_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "button_carrier_sel_key"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.intent.action.SELECT_CARRIER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6, v8}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->updatePreferenceToSpecificActivity(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;I)Z

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->updateDataNetworkModeDependency()V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mobile_network_status"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    iget v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.settings.ACTION_DATA_ROAMING_POSITIVE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.settings.ACTION_DATA_KEY_NEGATIVE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v1, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mXmlResId:I

    invoke-virtual {v4, v2, v5}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->removePreferences(Landroid/preference/PreferenceScreen;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mIsAirplainModeObserverRegister:Z

    if-eqz v0, :cond_0

    const-string v0, "mAirplainModeEnabledObserver is unregistered"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mIsAirplainModeObserverRegister:Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v6, "button_network_status_key"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    if-ne v6, v5, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    iput v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    const-string v6, "MobileNetworkSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New mobile network status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x16

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v6, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    int-to-byte v6, v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "MobileNetworkSettings"

    const-string v7, "I/O exception while trying to write to data output stream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mobile_network_status"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    iget v7, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v6, "Failed to close BOS/DOS"

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11

    const v10, 0x1040013

    const v9, 0x1040009

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v7, "button_roaming_key"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_6

    const v4, 0x7f0a0458

    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v4, 0x7f0a07db

    :cond_0
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mRoamingDataWarningDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mRoamingDataWarningDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x1040014

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mRoamingDataWarningDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mRoamingDataWarningDialog:Landroid/app/Dialog;

    invoke-virtual {v5, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    :goto_0
    move v5, v6

    :cond_3
    :goto_1
    return v5

    :cond_4
    const-string v7, "feature_skt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7, v5}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    :cond_7
    const-string v7, "button_data_enabled_key"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->setMobileNetwork()V

    :cond_8
    move v5, v6

    goto :goto_1

    :cond_9
    const-string v7, "button_lte_roaming_key"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0409

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const v5, 0x7f0a07dd

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_2
    new-instance v5, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$7;

    invoke-direct {v5, p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$7;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V

    invoke-virtual {v0, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;

    invoke-direct {v5, p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V

    invoke-virtual {v0, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;

    invoke-direct {v5, p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_3
    move v5, v6

    goto/16 :goto_1

    :cond_a
    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const v5, 0x7f0a07de

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_b
    const v5, 0x7f0a07dc

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lte_roaming_mode_on"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_d
    const-string v7, "button_apn_key"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.settings.APN_SETTINGS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    move v5, v6

    goto/16 :goto_1

    :cond_e
    const-string v6, "button_network_status_key"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_1

    :cond_f
    const-string v6, "button_carrier_sel_key"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "lte_roaming_mode_on"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_b

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "data_roaming"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->isExceptionalUSIM()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "mobile_data"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "data_roaming"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lte_roaming_mode_on"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUseLTEDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isKtSim()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_3
    const-string v2, "feature_kor_open"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "menu_simplification"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_5
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_6
    :goto_3
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "feature_kor_open"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_8
    const-string v2, "remove_network_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    return-void

    :cond_b
    move v2, v4

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_d
    move v2, v4

    goto :goto_2

    :cond_e
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_10

    move v3, v4

    :cond_f
    :goto_4
    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_3

    :cond_10
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v5

    if-nez v5, :cond_f

    :cond_11
    move v3, v4

    goto :goto_4
.end method

.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MobileNetworkSettings$EmptyView;,
        Lcom/android/phone/MobileNetworkSettings$MyHandler;,
        Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;,
        Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;
    }
.end annotation


# static fields
.field private static mOrientation:I

.field private static mRegistered:Z

.field public static mSimId:I

.field static final preferredNetworkMode:I


# instance fields
.field private final USB_ENABLE_PATH:Ljava/lang/String;

.field private final USB_FUNCTIONS_PATH:Ljava/lang/String;

.field private buildCarrier:Ljava/lang/String;

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mButtonDataEnabled:Landroid/preference/TwoStatePreference;

.field private mButtonDataRoam:Landroid/preference/TwoStatePreference;

.field private mButtonDun:Landroid/preference/CheckBoxPreference;

.field private mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

.field private mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonRoamingState:Landroid/preference/Preference;

.field private mButtonSignalStrength:Landroid/preference/Preference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mDataClicked:Z

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field private mDataWarningDialog:Landroid/app/AlertDialog$Builder;

.field private mDunDialog:Landroid/app/AlertDialog$Builder;

.field private mEnhanced4GLTE:Landroid/preference/PreferenceScreen;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

.field private mInternationalEnhanced4GLTE:Landroid/preference/PreferenceScreen;

.field private mIsAirplainModeObserverRegister:Z

.field mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

.field mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

.field mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

.field mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

.field private mOkClicked:Z

.field private mOkClicked_two:Z

.field private mOperatorPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mReceiver:Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;

.field private mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

.field private mSCOMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScoPref:Landroid/preference/Preference;

.field private mServiceState:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToddlerEnabledObserver:Landroid/database/ContentObserver;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbMode:Ljava/lang/String;

.field private mUsbStateFilter:Landroid/content/IntentFilter;

.field private mUsbmodeReceiver:Landroid/content/BroadcastReceiver;

.field private mVoLteDialog:Landroid/app/AlertDialog$Builder;

.field private mVoiceOverLteObserver:Landroid/database/ContentObserver;

.field private mVolteCall:Landroid/preference/CheckBoxPreference;

.field private mVolteStateReceiver:Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;

.field private mWarnDialog:Landroid/app/AlertDialog;

.field private mXmlResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    sput v0, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    sput v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    sput-boolean v1, Lcom/android/phone/MobileNetworkSettings;->mRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string v0, "/sys/class/android_usb/android0/functions"

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->USB_FUNCTIONS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/android_usb/android0/enable"

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->USB_ENABLE_PATH:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLteDialog:Landroid/app/AlertDialog$Builder;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSCOMap:Ljava/util/Hashtable;

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->buildCarrier:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIsAirplainModeObserverRegister:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->mServiceState:I

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$1;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$2;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mVoiceOverLteObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$3;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mToddlerEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$4;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$32;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$32;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$33;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$33;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOperatorPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 3

    const v2, 0x7f0a0116

    const v1, 0x7f0a011c

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a0110

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a0111

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "network_mode_global_lte_wcdma"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a0113

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a0112

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_3
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a011e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a0114

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_5
    const-string v0, "cdma_evdo_tfn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a0115

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a0117

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a0118

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a011a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "network_mode_global_lte_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a0121

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a011b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a0120

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "global_network_cdma_gsm_enable_for_usc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a011f

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a0119

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "network_mode_global_lte_wcdma"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0a011d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDun:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/MobileNetworkSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/MobileNetworkSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mUsbMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/MobileNetworkSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->restoreUsbMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->displayVolteSettingForChn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->setSelectedDataRoamingMode(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/MobileNetworkSettings;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkMode(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setGlobalMode()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->showGsmUmtsDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/MobileNetworkSettings;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->roamingState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateEnterpriseDeviceManager()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataClicked:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/MobileNetworkSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataClicked:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/phone/MobileNetworkSettings;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/MobileNetworkSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked_two:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/MobileNetworkSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked_two:Z

    return p1
.end method

.method private compositeSumaryMultiSim(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const v5, 0x7f0a07b2

    const v2, 0x7f0a0108

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/MobileNetworkSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/MobileNetworkSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private compositeSummaryNetworkOperator(Ljava/lang/String;I)V
    .locals 8

    const v7, 0x7f0a07b2

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v1, :cond_2

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-le v1, v5, :cond_1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_operator_choice_auto_manual"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "SIM 1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SIM 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_3

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v6

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    const-string v3, "SIM 2: "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v7, v1}, Lcom/android/phone/MobileNetworkSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    move-object p1, v0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v1, p1}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandSummary(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_operator_choice_auto_manual"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void

    :cond_3
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    const-string v3, "SIM 1: "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p1, v1, v5

    invoke-virtual {p0, v7, v1}, Lcom/android/phone/MobileNetworkSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "SIM 1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v6

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    const-string v3, "SIM 2: "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v7, v1}, Lcom/android/phone/MobileNetworkSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "SIM 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    const-string v3, "SIM 1: "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p1, v1, v5

    invoke-virtual {p0, v7, v1}, Lcom/android/phone/MobileNetworkSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->compositeSumaryMultiSim(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->compositeSumaryMultiSim(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private createConnectionOptimizer(Landroid/preference/PreferenceScreen;)V
    .locals 4

    const-string v2, "connections_optimizer_key"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mScoPref:Landroid/preference/Preference;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "sprint_connections_optimizer"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->refreshSCO()V

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mSCOMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MobileNetworkSettings"

    const-string v3, "onCreate(): Sprint device, but no SCO installed. Disabling SCO menu"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mScoPref:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mScoPref:Landroid/preference/Preference;

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "MobileNetworkSettings"

    const-string v3, "onCreate(): Sprint device. SCO installed. Enabling SCO menu"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mSCOMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mSCOMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mScoPref:Landroid/preference/Preference;

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$34;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings$34;-><init>(Lcom/android/phone/MobileNetworkSettings;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mScoPref:Landroid/preference/Preference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mScoPref:Landroid/preference/Preference;

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v2, "MobileNetworkSettings"

    const-string v3, "onCreate(): Non Sprint device. Removing SCO menu."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createGsmUmtsOptions(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    sget v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-direct {v0, p1, p2, v1}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v0, p1, p2}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto :goto_0
.end method

.method private displayVolteSettingForChn()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "MobileNetworkSettings"

    const-string v3, "displayVolteSettingForChn is true."

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private finishActivityWhenSpecipicState()V
    .locals 1

    const-string v0, "finishActivityWhenSpecipicState"

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAbsentSimStateAndDisplayToast()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    :cond_0
    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    const-string v0, "MobileNetworkSettings"

    const-string v1, "getSharedPreferences "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getUsbMode()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/android_usb/android0/functions"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mUsbMode:Ljava/lang/String;

    const-string v4, "MobileNetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUsbMode(),mUsbMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mUsbMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    move-object v2, v3

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_1
    throw v4

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method private initMobileNetworkSettingForCtc(Landroid/preference/PreferenceScreen;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "initMobileNetworkSettingForCtc prefSet null "

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initPreference(Landroid/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->initPreferenceForMultiSim(Landroid/preference/PreferenceScreen;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->initPreferenceForOpenVersion(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private initPreferenceForMultiSim(Landroid/preference/PreferenceScreen;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const-string v1, "network_mode_spinner"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "button_prefer_networkmode1_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NetworkModePreference;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    const-string v1, "button_prefer_networkmode2_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NetworkModePreference;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-static {p0, v4}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getNetworkModePreferenceTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModePreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-static {p0, v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getNetworkModePreferenceTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModePreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v1, :cond_4

    if-ne v0, v3, :cond_13

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    sget v2, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModePreference;->setNetworkModePreference(I)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v1, :cond_5

    if-ne v0, v3, :cond_14

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    sget v2, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModeSpinner;->setNetworkModePreference(I)V

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/NetworkModePreference;->setNetworkModePreference(I)V

    :cond_6
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v1, v3}, Lcom/android/phone/NetworkModeSpinner;->setNetworkModePreference(I)V

    :cond_7
    const-string v1, "allow_select_network_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v1}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    :cond_8
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v1}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    :cond_9
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v1}, Lcom/android/phone/NetworkModeSpinner;->getPreferredNetworkType()V

    :cond_a
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v1}, Lcom/android/phone/NetworkModeSpinner;->getPreferredNetworkType()V

    :cond_b
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/NetworkModePreference;->setActivityExist(Z)V

    :cond_c
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/NetworkModePreference;->setActivityExist(Z)V

    :cond_d
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v1, v3}, Lcom/android/phone/NetworkModeSpinner;->setActivityExist(Z)V

    :cond_e
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v1, v3}, Lcom/android/phone/NetworkModeSpinner;->setActivityExist(Z)V

    goto/16 :goto_0

    :cond_f
    const-string v1, "button_prefer_networkmodespinner1_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NetworkModeSpinner;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    const-string v1, "button_prefer_networkmodespinner2_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NetworkModeSpinner;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-static {p0, v4}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getNetworkModePreferenceTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModeSpinner;->setTitle(Ljava/lang/CharSequence;)V

    :cond_10
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    invoke-static {p0, v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getNetworkModePreferenceTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModeSpinner;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_11
    const-string v1, "network_mode_spinner"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "button_prefer_networkmode_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NetworkModePreference;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    goto/16 :goto_1

    :cond_12
    const-string v1, "button_prefer_networkmodespinner_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NetworkModeSpinner;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    goto/16 :goto_1

    :cond_13
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/NetworkModePreference;->setNetworkModePreference(I)V

    goto/16 :goto_2

    :cond_14
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v1, v4}, Lcom/android/phone/NetworkModeSpinner;->setNetworkModePreference(I)V

    goto/16 :goto_3
.end method

.method private initPreferenceForOpenVersion(Landroid/preference/PreferenceScreen;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "network_mode_spinner"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "button_prefer_networkmode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NetworkModePreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    :goto_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkModePreference;->setActivityExist(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkModeSpinner;->setActivityExist(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "button_prefer_networkmodespinner_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NetworkModeSpinner;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    goto :goto_1
.end method

.method private isCdmaIncluded(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/16 v0, 0x8

    if-eq v0, p1, :cond_0

    const/16 v0, 0xa

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsmIncluded(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    const-string v0, "network_mode_global_lte_cdma_gsm_umts"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MobileNetworkSettings"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private menuSimplification(Landroid/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    check-cast v0, Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$23;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$23;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    check-cast v0, Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$24;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$24;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "data_roaming_noti_tray"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_zta"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    const v1, 0x7f0a0129

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method public static neverShowVolteTipsAgain(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MobileNetworkSettings"

    const-string v1, "neverShowVolteTipsAgain "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "volte_popup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private onCreateMultiSim(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "sim_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "sim_id"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimId : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    sget v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataPreferSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    if-nez v0, :cond_3

    sput v3, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    goto :goto_1

    :cond_3
    if-ne v0, v4, :cond_1

    sput v4, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    goto :goto_1
.end method

.method private onProCreate()Z
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    sput v3, Lcom/android/phone/MobileNetworkSettings;->mOrientation:I

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->updateSearchIntent(Landroid/preference/PreferenceActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    :cond_0
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.GLOBAL_ROAMING_LGT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    :goto_0
    return v2

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.mobilenetworks.kor.MobileNetworkSettings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onResumeMultiSim()V
    .locals 2

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->mRegistered:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sk.action.dataButtonEnable"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action.ButtonEnable"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "qcom_cross_mapping"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/MobileNetworkSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/MobileNetworkSettings;->mRegistered:Z

    goto :goto_0
.end method

.method private refreshSCO()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mSCOMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.birdstep.android.cm"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mSCOMap:Ljava/util/Hashtable;

    const-string v2, "com.birdstep.android.cm"

    const-string v3, "com.birdstep.android.cm.SettingsDialog"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MobileNetworkSettings"

    const-string v2, "refreshSCO(): BIRDSTEP is installed"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.smithmicro.mnd"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mSCOMap:Ljava/util/Hashtable;

    const-string v2, "com.smithmicro.mnd"

    const-string v3, "com.smithmicro.mnd.MNDSettings"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MobileNetworkSettings"

    const-string v2, "refreshSCO(): SMITHMICRO is installed"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MobileNetworkSettings"

    const-string v2, "refreshSCO(): BIRDSTEP is NOT installed"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MobileNetworkSettings"

    const-string v2, "refreshSCO(): SMITHMICRO is NOT installed"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v1, "MobileNetworkSettings"

    const-string v2, "refreshSCO(): at least one SCO package is installed. Don\'t need to refresh"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private registerContentObservers()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "volte_settings_in_mobile_networks_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voicecall_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mVoiceOverLteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "toddler_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mToddlerEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private restoreUsbMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MobileNetworkSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreUsbMode(),usbMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->setUsbMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resumeConnectionOptimizer()V
    .locals 8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "sprint_connections_optimizer"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->refreshSCO()V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v5, "connections_optimizer_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mSCOMap:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mSCOMap:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v4, :cond_0

    const-string v5, "MobileNetworkSettings"

    const-string v6, "onResume(): SCO menu had been removed so re-add"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mScoPref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mScoPref:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v5, "MobileNetworkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume(): SCO package enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const-string v5, "MobileNetworkSettings"

    const-string v6, "onResume(): SCO menu had been added so remove"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mScoPref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v5, "MobileNetworkSettings"

    const-string v6, "onResume(): Sprint device but SCO not installed"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v5, "MobileNetworkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume(): Exception while checking package state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private roamingState(Landroid/telephony/ServiceState;)V
    .locals 5

    const-string v2, "true"

    const-string v3, "gsm.operator.isroaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const-string v2, "roaming_state_key"

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a050b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/MobileNetworkSettings;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "roaming_state_key"

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a050e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/MobileNetworkSettings;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDataRoamingforATT()V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private setDontShowAgainDB(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDontShowAgainDB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method private setGlobalMode()V
    .locals 3

    const-string v1, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "global_network_cdma_gsm_enable_for_usc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "network_mode_spinner"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v1}, Lcom/android/phone/NetworkModeSpinner;->setGlobalMode()V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandEnabled(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getGlobalType()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v0, v0}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkMode(II)Z

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method

.method private setPreferredNetworkMode(II)Z
    .locals 4

    move v0, p1

    if-ltz v0, :cond_0

    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    :cond_0
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    const-string v1, "kor_phone_via_chip"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget v3, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    const/4 v1, 0x0

    return v1
.end method

.method private setPreferredNetworkModeEnabled()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "SprintForceLTE"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const-string v3, "omadm_lte_forced_not_support_network_mode_popup"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eq v1, v2, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v3, "MobileNetworkSettings"

    const-string v4, "SprintForceLTE - SettingNotFoundException"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private setSelectedDataRoamingMode(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_national_roaming_mode"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getSimNumeric(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getPlmnNumeric()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSelectedDataRoamingMode : simMCC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", plmnMCC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v4, :cond_2

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private setSummaryButtonCarrierOperator()V
    .locals 8

    const v7, 0x7f0a07b2

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v3, 0x7f0a0108

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_operator_choice_auto_manual"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-le v1, v4, :cond_2

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v7, v1}, Lcom/android/phone/MobileNetworkSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v1, v0}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandSummary(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-le v1, v4, :cond_5

    const-string v1, "SIM 1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SIM 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v7, v1}, Lcom/android/phone/MobileNetworkSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "SIM 1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "SIM 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a050f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setUsbMode(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v4, "MobileNetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUsbMode(),usbMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/android_usb/android0/functions"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/android_usb/android0/enable"

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v4, "0"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    const-string v4, "1"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    move-object v2, v3

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v0, v1

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    throw v4

    :catch_3
    move-exception v5

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v4

    move-object v0, v1

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v4

    move-object v2, v3

    goto :goto_1

    :catch_5
    move-exception v4

    move-object v0, v1

    move-object v2, v3

    goto :goto_1
.end method

.method public static shouldShowVolteTips(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "MobileNetworkSettings"

    const-string v1, "shouldShowVolteTips "

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "volte_popup"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showGsmUmtsDialog()V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v2}, Lcom/android/phone/GsmUmtsOptions;->showGlobalGsmSystemSelectDialog()V

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eq v0, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandEnabled(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showRebootDialog(II)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0577

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$26;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings$26;-><init>(Lcom/android/phone/MobileNetworkSettings;II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$25;

    invoke-direct {v2, p0, p2}, Lcom/android/phone/MobileNetworkSettings$25;-><init>(Lcom/android/phone/MobileNetworkSettings;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showSearchingForDialog(IILjava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$31;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/MobileNetworkSettings$31;-><init>(Lcom/android/phone/MobileNetworkSettings;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$30;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$30;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private unregisterContentObservers()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string v0, "volte_settings_in_mobile_networks_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mVoiceOverLteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mToddlerEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateDataEnabledEnterpriseDeviceManager()V
    .locals 5

    const/4 v3, 0x0

    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v2

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v0

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private updateEnterpriseDeviceManager()V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v6, "enterprise_policy"

    invoke-virtual {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    const/4 v2, 0x1

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v5

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v4

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v0

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_1

    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6, v8}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    invoke-virtual {v6, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    const-string v6, "MDM-Roaming-policy"

    const-string v9, "setEnabled"

    invoke-static {v6, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v6, v5}, Lcom/android/phone/GlobalDataRoamingAccess;->setEnabled(Z)V

    const-string v6, "MDM-Roaming-policy"

    const-string v9, "global data setEnabled"

    invoke-static {v6, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    :goto_1
    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    const-string v6, "MDM-Roaming-policy"

    const-string v7, "setEnabled"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v6, "volte_settings_in_mobile_networks"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "non_volte_settings_in_mobile_networks"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v2, v0

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mInternationalEnhanced4GLTE:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mInternationalEnhanced4GLTE:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_5
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mEnhanced4GLTE:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mEnhanced4GLTE:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_6
    return-void

    :cond_7
    move v6, v8

    goto :goto_0

    :cond_8
    move v7, v8

    goto :goto_1
.end method

.method private updatePreferredNetworkModeEntryValues()V
    .locals 4

    const-string v1, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f09009b

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "network_mode_cdma_lte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f090097

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f090098

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_1
    const-string v1, "network_mode_global_lte_cdma_gsm_umts"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0900a3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_2
    const-string v1, "network_mode_global_lte_gsm"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0900a1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_3
    const-string v1, "network_mode_global_lte_wcdma"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0900a5

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0900a6

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_4
    const-string v1, "global_network_cdma_gsm_enable_for_usc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode_pst_vzw"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MobileNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferredNetworkModePstVzw : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f09009f

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0900a0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0
.end method

.method private updateSignalStrength()V
    .locals 7

    const/4 v6, -0x1

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a0513

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a0514

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method checkAbsentSimStateAndDisplayToast()Z
    .locals 4

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f0a0584

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return v0
.end method

.method createVolteEnableWarningDialog()V
    .locals 8

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f040018

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f100060

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v4, 0x7f10005f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLteDialog:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLteDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLteDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0a0783

    invoke-virtual {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a05ba

    invoke-virtual {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a05b4

    invoke-virtual {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    const v7, 0x7f0a05b3

    invoke-virtual {p0, v7}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a0784

    invoke-virtual {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLteDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/phone/MobileNetworkSettings$13;

    invoke-direct {v6, p0, v0}, Lcom/android/phone/MobileNetworkSettings$13;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLteDialog:Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/phone/MobileNetworkSettings$14;

    invoke-direct {v6, p0}, Lcom/android/phone/MobileNetworkSettings$14;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLteDialog:Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLteDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLteDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v4, "exit_ecm_result"

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_0

    const-string v4, "mNetworkModeAutoManual"

    const/4 v5, 0x2

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "mSimNumber"

    const/4 v5, -0x1

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, ""

    packed-switch v0, :pswitch_data_1

    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/android/phone/MobileNetworkSettings;->compositeSummaryNetworkOperator(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    const v4, 0x7f0a010a

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_3
    const v4, 0x7f0a07b1

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_4
    const v4, 0x7f0a0108

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    :goto_0
    const-string v0, "data_roaming_noti_tray"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "national_roaming_mode_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr;->updateRoamingNotification(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    sget v3, Lcom/android/phone/MobileNetworkSettings;->mOrientation:I

    if-eq v2, v3, :cond_0

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    sput v2, Lcom/android/phone/MobileNetworkSettings;->mOrientation:I

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040069

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 32

    const-string v28, "onCreate:+"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v28, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/UserManager;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v28, v0

    const-string v29, "no_config_mobile_networks"

    invoke-virtual/range {v28 .. v29}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/MobileNetworkSettings;->mUnavailable:Z

    const v28, 0x7f0400b9

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->setContentView(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v28, "MobileNetworkSettings"

    const-string v29, "onCreate"

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->onProCreate()Z

    move-result v28

    if-nez v28, :cond_0

    const-string v28, "tablet_device"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    const-string v28, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    const v28, 0x7f040069

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->setContentView(Landroid/view/View;)V

    :cond_2
    const v28, 0x7f07002e

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/MobileNetworkSettings;->mXmlResId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/MobileNetworkSettings;->mXmlResId:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->addPreferencesFromResource(I)V

    const-string v28, "tablet_device"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    new-instance v5, Lcom/android/phone/MobileNetworkSettings$EmptyView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getListView()Landroid/widget/ListView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v5, v0}, Lcom/android/phone/MobileNetworkSettings$EmptyView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getListView()Landroid/widget/ListView;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v5, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v28, Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MobileNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const-string v28, "usb"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/hardware/usb/UsbManager;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->onCreateMultiSim(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "airplane_mode_on"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    move-object/from16 v31, v0

    invoke-virtual/range {v28 .. v31}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/MobileNetworkSettings;->mIsAirplainModeObserverRegister:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getTwoStateTypes()[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v27, v28, v29

    const-string v28, "button_roaming_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/TwoStatePreference;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    const-string v28, "preferred_network_mode_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/ListPreference;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v28, "button_data_enabled_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/TwoStatePreference;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mDunDialog:Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->menuSimplification(Landroid/preference/PreferenceScreen;)V

    const-string v28, "button_enhanced_4glte_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mEnhanced4GLTE:Landroid/preference/PreferenceScreen;

    const-string v28, "button_international_enhanced_4glte_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mInternationalEnhanced4GLTE:Landroid/preference/PreferenceScreen;

    const-string v28, "preferred_roaming_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/ListPreference;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    const-string v28, "feature_att"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    move-object/from16 v28, v0

    const v29, 0x7f0a0126

    invoke-virtual/range {v28 .. v29}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    move-object/from16 v28, v0

    const v29, 0x7f0a0126

    invoke-virtual/range {v28 .. v29}, Landroid/preference/TwoStatePreference;->setSummaryOff(I)V

    :cond_4
    const-string v28, "feature_zta"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    move-object/from16 v28, v0

    const v29, 0x7f0a012d

    invoke-virtual/range {v28 .. v29}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    :cond_5
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getSimNumeric(Z)Ljava/lang/String;

    move-result-object v25

    const-string v28, "national_roaming_mode_menu_play"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_17

    const-string v28, "26006"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_17

    const/16 v28, 0x1

    :goto_1
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "isPlay = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", simMCC = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_6

    const-string v28, "national_roaming_mode_menu"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_6

    const-string v28, "roaming_enhancement"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    :cond_6
    const-string v28, "roaming_enhancement"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "data_national_roaming_mode"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NATIONAL_ROAMING_MODE is true. settingsDataRoamingMode = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    const/4 v11, 0x1

    :goto_2
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "isLteOnCdma = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "hide_carrier_network_settings"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v28, 0x1

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_19

    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "setup_prepaid_data_service_url"

    invoke-static/range {v28 .. v29}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v11, :cond_9

    if-eqz v15, :cond_2a

    :cond_9
    :goto_4
    const-string v28, "support_cdma_dun"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "Notification"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string v28, "PCmodem"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "adb_enabled"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v28, "persist.service.adb.enable"

    const-string v29, "0"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getUsbMode()V

    const-string v28, "adb,mass_storage"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->setUsbMode(Ljava/lang/String;)V

    const-string v28, "cdfs.state"

    const-string v29, "enable"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v28, 0x7f0a0809

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    const v29, 0x7f0a0808

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    const v29, 0x7f0a062e

    new-instance v30, Lcom/android/phone/MobileNetworkSettings$16;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings$16;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual/range {v28 .. v30}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    new-instance v29, Lcom/android/phone/MobileNetworkSettings$15;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings$15;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual/range {v28 .. v29}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const-string v28, "cdfs.state"

    const-string v29, "enable"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_b

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_b
    const-string v28, "feature_att"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    const-string v28, "MobileNetworkSettings"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "getIntent() = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v29, "MobileNetworkSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "getIntent().getExtras() = "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    :goto_6
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    if-eqz v28, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "enable_roaming"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v28, "MobileNetworkSettings"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "isRoaming = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->setDataRoamingforATT()V

    :cond_d
    const-string v28, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v28, "global_data_roaming_access_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Lcom/android/phone/GlobalDataRoamingAccess;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    const-string v28, "roaming_state_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    const-string v28, "signal_strength_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    const-string v28, "global_data_roaming_access_enable"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    new-instance v28, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v28, v0

    const/16 v29, 0xc8

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v28, v0

    const/16 v29, 0x64

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->createConnectionOptimizer(Landroid/preference/PreferenceScreen;)V

    const-string v28, "omadm_lte_forced_nv"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkModeEnabled()V

    :cond_f
    const-string v28, "volte_call_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const-string v28, "persist.ril.ims.eutranParam"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v28, "MobileNetworkSettings"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "enableVolte = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", mVolteCall:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v28, "MobileNetworkSettings"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Common feature:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "volte_settings_in_mobile_networks_common"

    invoke-static/range {v30 .. v30}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v28, "MobileNetworkSettings"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "IMS.COMMON_VOLTE feature:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "common_volte"

    invoke-static/range {v30 .. v30}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_11

    const-string v28, "volte_settings_in_mobile_networks_hk"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_10

    const-string v28, "volte_settings_in_mobile_networks_tw"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    move-object/from16 v28, v0

    const v29, 0x7f0a05b5

    invoke-virtual/range {v28 .. v29}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v28

    if-eqz v28, :cond_2c

    const/4 v14, 0x1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x112006c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v14, :cond_12

    if-eqz v10, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v28, v0

    const-string v29, "no_config_cell_broadcasts"

    invoke-virtual/range {v28 .. v29}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_13

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const-string v28, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    if-eqz v20, :cond_13

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_13
    const-string v28, "volte_settings_in_mobile_networks_chn"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14

    const-string v28, "registerReceiver mVolteStateReceiver"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    new-instance v28, Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mVolteStateReceiver:Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v28, "com.samsung.ims.action.onsimloaded"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mVolteStateReceiver:Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Lcom/android/phone/MobileNetworkSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_14
    const-string v28, "support_cdma_dun"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_15

    new-instance v28, Landroid/content/IntentFilter;

    const-string v29, "android.intent.action.USB_MODE_CHANGED"

    invoke-direct/range {v28 .. v29}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mUsbStateFilter:Landroid/content/IntentFilter;

    new-instance v28, Lcom/android/phone/MobileNetworkSettings$17;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings$17;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mUsbmodeReceiver:Landroid/content/BroadcastReceiver;

    :cond_15
    const-string v28, "feature_zvv"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->setSummaryButtonCarrierOperator()V

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->finishActivityWhenSpecipicState()V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/MobileNetworkSettings;->mXmlResId:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->removePreferences(Landroid/preference/PreferenceScreen;I)V

    const-string v28, "Settings"

    const-string v29, "Settings.onCreate()"

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    const/16 v28, 0x0

    goto/16 :goto_1

    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0f0003

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "preferred_network_mode"

    sget v30, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    new-instance v28, Lcom/android/phone/CdmaOptions;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->createGsmUmtsOptions(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_3

    :cond_1a
    if-eqz v11, :cond_1b

    const-string v28, "feature_multisim"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1c

    const-string v28, "feature_chn"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    const/16 v28, 0x2

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    const-string v28, "chn_cdma_network_on_all_rat"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1e

    const-string v28, "feature_multisim"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1e

    :cond_1d
    const-string v28, "global_network_cdma_gsm_enable"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_27

    :cond_1e
    const-string v28, "roaming_enhancement"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1f

    const-string v28, "cdma_apn_enable"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_20

    :cond_1f
    new-instance v28, Lcom/android/phone/CdmaOptions;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    :cond_20
    if-eqz v11, :cond_23

    const-string v28, "isLteOnCdma"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v28, "global_network_cdma_gsm_enable"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->createGsmUmtsOptions(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    const-string v28, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_21

    const-string v28, "global_network_cdma_gsm_enable_for_usc"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_22

    :cond_21
    const-string v28, "network_mode_spinner"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_22

    const-string v28, "GLOBAL_NETWORK_CDMA_GSM_ENABLE and NETWORK_MODE_SPINNER"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->initPreference(Landroid/preference/PreferenceScreen;)V

    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->updatePreferredNetworkModeEntryValues()V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "preferred_network_mode"

    sget v30, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_23
    const-string v28, "support_cdma_dun"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_24

    const-string v28, "button_dun_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mButtonDun:Landroid/preference/CheckBoxPreference;

    const-string v28, "MobileNetworkSettings"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Mobilinetwork_mButtonDun= "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonDun:Landroid/preference/CheckBoxPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v28, "gsm.sim.currentcardstatus"

    const/16 v29, 0x0

    const-string v30, "9"

    invoke-static/range {v28 .. v30}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/16 v28, 0x3

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonDun:Landroid/preference/CheckBoxPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonDun:Landroid/preference/CheckBoxPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_24
    const-string v28, "chn_cdma_network_on_all_rat"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->createGsmUmtsOptions(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->initPreference(Landroid/preference/PreferenceScreen;)V

    :cond_25
    :goto_9
    const-string v28, "feature_ctc"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->initMobileNetworkSettingForCtc(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_3

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    const v29, 0x7f090097

    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setEntries(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    const v29, 0x7f090098

    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_8

    :cond_27
    const/16 v28, 0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_28

    const/16 v28, 0x2

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_29

    const-string v28, "chn_cdma_network_on_all_rat"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_29

    const-string v28, "feature_multisim"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_29

    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->createGsmUmtsOptions(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->initPreference(Landroid/preference/PreferenceScreen;)V

    goto :goto_9

    :cond_29
    new-instance v28, Ljava/lang/IllegalStateException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unexpected phone type: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    :cond_2a
    const-string v28, "MobileNetworkSettings"

    const-string v29, "keep ltePref"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2b
    const/16 v28, 0x0

    goto/16 :goto_6

    :cond_2c
    const/4 v14, 0x0

    goto/16 :goto_7

    :catch_0
    move-exception v28

    goto/16 :goto_5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIsAirplainModeObserverRegister:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mIsAirplainModeObserverRegister:Z

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const-string v0, "volte_settings_in_mobile_networks_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteStateReceiver:Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteStateReceiver:Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/NetworkModePreference;->setActivityExist(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/NetworkModePreference;->setActivityExist(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v0, v2}, Lcom/android/phone/NetworkModeSpinner;->setActivityExist(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v0, v2}, Lcom/android/phone/NetworkModeSpinner;->setActivityExist(Z)V

    :cond_5
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

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

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string v0, "onPause:+"

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;

    sput-boolean v2, Lcom/android/phone/MobileNetworkSettings;->mRegistered:Z

    :cond_0
    const-string v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOperatorPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v0, "support_cdma_dun"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mUsbmodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->deinitPhoneStateListener()V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->deinitPhoneStateListener()V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModeSpinner;->deinitPhoneStateListener()V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModeSpinner;->deinitPhoneStateListener()V

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->unregisterContentObservers()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_4

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    sget v5, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buttonNetworkMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "settingsNetworkMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v3, "preferred_network_mode_reboot_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    if-eq v1, v2, :cond_1

    const-string v3, "preferred_network_mode_reboot_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->isCdmaIncluded(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->showRebootDialog(II)V

    :cond_1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->showGlobalNetworkDialog(Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return v6

    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkMode(II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "data_roaming_option_national"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "data_roaming_option_all"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eq v0, v6, :cond_6

    :cond_5
    const-string v3, "data_roaming_option_all"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    :cond_6
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0418

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0417

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/phone/MobileNetworkSettings$19;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/MobileNetworkSettings$19;-><init>(Lcom/android/phone/MobileNetworkSettings;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/phone/MobileNetworkSettings$18;

    invoke-direct {v5, p0}, Lcom/android/phone/MobileNetworkSettings$18;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->setSelectedDataRoamingMode(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13

    const v12, 0x7f0a0419

    const v11, 0x104000a

    const/high16 v10, 0x1040000

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v8, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v8

    if-ne v8, v6, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v8, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v8

    if-ne v8, v6, :cond_2

    const-string v7, "ril.cdma.inecmmode"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v8, 0x11

    invoke-virtual {p0, v7, v8}, Lcom/android/phone/MobileNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v7, "MobileNetworkSettings"

    const-string v8, "No activity found"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v8, :cond_3

    const-string v7, "global_network_cdma_gsm_enable"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "onPreferenceTreeClick: preference == mButtonPreferredNetworkMode. so popup timer reset"

    invoke-static {v7}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->resetSendGlobalNetworkDialogMessageDelayed()V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    if-ne p2, v8, :cond_d

    const-string v8, "feature_att"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setDataRoamingforATT()V

    goto :goto_0

    :cond_4
    const-string v8, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v8}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "config_exception_data_roaming_noti"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7, v6}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    const-string v7, "data_roaming_noti_tray"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "national_roaming_mode_menu"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/phone/NotificationMgr;->updateRoamingNotification(Z)V

    goto/16 :goto_0

    :cond_5
    const v4, 0x7f0a0129

    const-string v8, "data_roaming_noti_tray"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const v4, 0x7f0a012a

    :cond_6
    :goto_1
    iput-boolean v7, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    invoke-virtual {v8, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_7
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a012c

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_8
    const-string v8, "feature_chn"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "feature_hktw"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    const v4, 0x7f0a0456

    goto :goto_1

    :cond_a
    const-string v8, "menu_simplification"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "feature_dcm"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "feature_kdi"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "feature_sbm"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7, v6}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_0

    :cond_b
    const-string v8, "feature_zta"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const v4, 0x7f0a012d

    goto/16 :goto_1

    :cond_c
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8, v7}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    const-string v7, "data_roaming_noti_tray"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "national_roaming_mode_menu"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/phone/NotificationMgr;->updateRoamingNotification(Z)V

    goto/16 :goto_0

    :cond_d
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-ne p2, v8, :cond_18

    const-string v8, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v8}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    const-string v8, "mobile_data_popup"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_f

    iput-boolean v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataClicked:Z

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v8, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_e
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a041a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/MobileNetworkSettings$7;

    invoke-direct {v8, p0}, Lcom/android/phone/MobileNetworkSettings$7;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/MobileNetworkSettings$6;

    invoke-direct {v8, p0}, Lcom/android/phone/MobileNetworkSettings$6;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/MobileNetworkSettings$5;

    invoke-direct {v8, p0}, Lcom/android/phone/MobileNetworkSettings$5;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_f
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a041b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "feature_chn"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a041d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_10
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_11
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/MobileNetworkSettings$8;

    invoke-direct {v8, p0}, Lcom/android/phone/MobileNetworkSettings$8;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_12
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_17

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a041e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "ignore_product_type"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a041f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_13
    const-string v7, "feature_vzw"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v7, "video_call_not_support"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a041d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a041c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_14
    const-string v7, "feature_dcm"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    const-string v7, "video_call_not_support"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0420

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_15
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_16
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/MobileNetworkSettings$9;

    invoke-direct {v8, p0}, Lcom/android/phone/MobileNetworkSettings$9;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_17
    invoke-direct {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    :cond_18
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-eq p2, v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    if-eq p2, v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    if-eq p2, v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    if-ne p2, v8, :cond_19

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateSignalStrength()V

    goto/16 :goto_0

    :cond_19
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eq p2, v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eq p2, v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eq p2, v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    if-eq p2, v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_21

    const/4 v8, 0x7

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v2, :cond_20

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1e

    const-string v8, "enable volte overall"

    invoke-static {v8}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    const-string v8, "volte_settings_in_mobile_networks_common"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v8

    if-eqz v8, :cond_1d

    const-string v8, "volte_settings_in_mobile_networks_hk"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "volte_settings_in_mobile_networks_tw"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    :cond_1a
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    const v9, 0x7f0a05c2

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :cond_1b
    const-string v8, "volte_settings_in_mobile_networks_chn"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/MobileNetworkSettings;->shouldShowVolteTips(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->createVolteEnableWarningDialog()V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureEnable()V

    goto/16 :goto_0

    :cond_1e
    const-string v7, "disable volte overall"

    invoke-static {v7}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voicecall_type"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "volte_settings_in_mobile_networks_common"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualDeregister()V

    goto/16 :goto_0

    :cond_1f
    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureDisable()V

    goto/16 :goto_0

    :cond_20
    const-string v7, "mInterfaceForGeneral is null"

    invoke-static {v7}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    if-eq p2, v8, :cond_0

    const-string v8, "support_cdma_dun"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v8, :cond_24

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDun:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_24

    const-string v8, "MobileNetworkSettings"

    const-string v9, "SecProductFeature_RIL.SEC_PRODUCT_FEATURE_RIL_SUPPORT_CDMA_DUN"

    invoke-static {v8, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDun:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_22

    iput-boolean v7, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked_two:Z

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDunDialog:Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDunDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a080a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1010355

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    new-instance v9, Lcom/android/phone/MobileNetworkSettings$12;

    invoke-direct {v9, p0}, Lcom/android/phone/MobileNetworkSettings$12;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    new-instance v9, Lcom/android/phone/MobileNetworkSettings$11;

    invoke-direct {v9, p0}, Lcom/android/phone/MobileNetworkSettings$11;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    new-instance v8, Lcom/android/phone/MobileNetworkSettings$10;

    invoke-direct {v8, p0}, Lcom/android/phone/MobileNetworkSettings$10;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    :cond_22
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDunDataState()I

    move-result v8

    if-eqz v8, :cond_23

    const v7, 0x7f0a080b

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDun:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v7, "MobileNetworkSettings"

    const-string v8, "enableDUN ture"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_23
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/phone/CdmaOptions;->usbMode(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v8, v7}, Lcom/android/phone/CdmaOptions;->enableDUN(Z)V

    const-string v7, "MobileNetworkSettings"

    const-string v8, "enableDUN false"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_24
    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v6, v7

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 14

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v10, "onResume:+"

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/android/phone/MobileNetworkSettings;->mUnavailable:Z

    if-eqz v10, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v10, "support_cdma_dun"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mUsbmodeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mUsbStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v10, v11}, Lcom/android/phone/MobileNetworkSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const-string v10, "gsm.sim.currentcardstatus"

    const/4 v11, 0x0

    const-string v12, "9"

    invoke-static {v10, v11, v12}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x3

    if-eq v8, v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume() simstate = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDun:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_20

    const-string v10, "chagallltevl"

    const-string v11, "ro.product.name"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_2
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v10}, Lcom/android/phone/NetworkModePreference;->initPhoneStateListener()V

    :cond_2
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v10}, Lcom/android/phone/NetworkModePreference;->initPhoneStateListener()V

    :cond_3
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v10}, Lcom/android/phone/NetworkModeSpinner;->initPhoneStateListener()V

    :cond_4
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v10}, Lcom/android/phone/NetworkModeSpinner;->initPhoneStateListener()V

    :cond_5
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v10, :cond_6

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->earlyTwoStatePreference()Z

    move-result v10

    if-eqz v10, :cond_21

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getSettingValue()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    :goto_3
    const-string v10, "volte_settings_in_mobile_networks_common"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_7

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v12, :cond_22

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_7
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->earlyTwoStatePreference()Z

    move-result v10

    if-eqz v10, :cond_23

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getSettingValue()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_8
    :goto_5
    const-string v10, "support_cdma_dun"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "usb_setting_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/phone/CdmaOptions;->usbMode(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/CdmaOptions;->enableDUN(Z)V

    const-string v10, "MobileNetworkSettings"

    const-string v11, "CDROM set DUN false"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mDunDialog:Landroid/app/AlertDialog$Builder;

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDun:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDun:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getDataDunEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_a
    const-string v10, "volte_settings_in_mobile_networks_hk"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "volte_settings_in_mobile_networks_tw"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    :cond_b
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_33

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    if-eqz v9, :cond_d

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x5

    if-lt v10, v11, :cond_30

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v10, "45416"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "45419"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is PCCW SIM mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_d
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VOICECALL_TYPE_KEY :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "voicecall_type"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_32

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "voicecall_type"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_31

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_e
    :goto_8
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateEnterpriseDeviceManager()V

    const-string v10, "vzw_volte_ui"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v10, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    if-nez v10, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_f
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_10
    const-string v10, "toddler_mode_jpn"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "toddler_mode_switch"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_11

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_35

    :cond_11
    const-string v10, "MobileNetworkSettings"

    const-string v11, "TODDLER_MODE_SWITCH or AIRPLAIN_MODE_SWITCH set! It blocked to set DATA"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_12
    :goto_9
    const-string v10, "cust_network_sel_menu4_o2"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    const-string v10, "MobileNetworkSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPrevNetworkType[0] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    sget-object v12, Lcom/android/phone/NetworkModePreference;->mPrevNetworkType:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    sget-object v10, Lcom/android/phone/NetworkModePreference;->mPrevNetworkType:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, 0x1

    if-ne v10, v11, :cond_36

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_13
    :goto_a
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->onResumeMultiSim()V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "preferred_network_mode_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :cond_14
    const-string v10, "allow_select_network_mode"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-nez v10, :cond_15

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v10, :cond_19

    :cond_15
    const-string v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_37

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v10}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabledForMultiSIM()V

    :cond_16
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v10, :cond_17

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v10}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabledForMultiSIM()V

    :cond_17
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v10}, Lcom/android/phone/NetworkModeSpinner;->checkAndSetEnabledForMultiSIM()V

    :cond_18
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v10}, Lcom/android/phone/NetworkModeSpinner;->checkAndSetEnabledForMultiSIM()V

    :cond_19
    :goto_b
    const-string v10, "global_data_roaming_access_enable"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/MobileNetworkSettings;->roamingState(Landroid/telephony/ServiceState;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateSignalStrength()V

    :cond_1a
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mOperatorPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v10}, Lcom/android/phone/GsmUmtsOptions;->updateOperatorSelectionExpand()V

    :cond_1b
    const-string v10, "global_network_cdma_gsm_enable"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "preferred_network_mode"

    sget v12, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->isGsmIncluded(I)Z

    move-result v4

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    const/4 v10, 0x1

    if-eq v7, v10, :cond_3b

    if-eqz v4, :cond_3b

    const/4 v10, 0x1

    :goto_c
    invoke-virtual {v11, v10}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandEnabled(Z)V

    :cond_1c
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->resumeConnectionOptimizer()V

    const-string v10, "omadm_lte_forced_nv"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkModeEnabled()V

    :cond_1d
    const-string v10, "feature_zvv"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setSummaryButtonCarrierOperator()V

    :cond_1e
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->registerContentObservers()V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->launchPreferences(Landroid/preference/PreferenceActivity;)V

    const-string v10, "Settings"

    const-string v11, "Settings.onResume()"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_20
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_21
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cm.getMobileDataEnabled() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_22
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_23
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_5

    :cond_24
    const-string v10, "45400"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is CSL SIM mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_25
    const-string v10, "45403"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is 3 HK SIM mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_26
    const-string v10, "45406"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is SMT SIM mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_27
    const-string v10, "46601"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_28

    const-string v10, "24099"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_28

    const-string v10, "24499"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    :cond_28
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is FET SIM mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_29
    const-string v10, "46697"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is TWM SIM mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_2a
    const-string v10, "46689"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is T Star SIM mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_2b
    const-string v10, "46692"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is CHT SIM mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_2c
    const-string v10, "46605"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is APT SIM mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_2d
    const-string v10, "00101"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "equipment vendor  mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_2e
    const-string v10, "45001"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is KOR SIM mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_2f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is not VOLTE SIM mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_30
    const-string v10, "imsi information is not correct now so cannot enable VoLTE setting"

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_31
    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_32
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_33
    const-string v10, "volte_settings_in_mobile_networks_common"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VOICECALL_TYPE_KEY :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "voicecall_type"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "voicecall_type"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_34

    const/4 v10, 0x1

    :goto_d
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_34
    const/4 v10, 0x0

    goto :goto_d

    :cond_35
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateDataEnabledEnterpriseDeviceManager()V

    goto/16 :goto_9

    :cond_36
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_a

    :cond_37
    const-string v10, "network_mode_only_cmcc_card_support_4g"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_39

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v10, :cond_38

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v10}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabledForCMCC()Z

    :cond_38
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v10, :cond_39

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v10}, Lcom/android/phone/NetworkModeSpinner;->checkAndSetEnabledForCMCC()Z

    :cond_39
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v10, :cond_3a

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v10}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    :cond_3a
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v10}, Lcom/android/phone/NetworkModeSpinner;->getPreferredNetworkType()V

    goto/16 :goto_b

    :cond_3b
    const/4 v10, 0x0

    goto/16 :goto_c
.end method

.method public showGlobalNetworkDialog(Ljava/lang/CharSequence;II)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "global_network_cdma_gsm_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    if-ne v4, p2, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAbsentSimStateAndDisplayToast()Z

    move-result v4

    if-nez v4, :cond_2

    if-eq p2, p3, :cond_3

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->setDontShowAgainDB(Z)V

    const-string v2, "global_network_cdma_gsm_enable_for_usc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const v1, 0x7f0a0585

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0a057f

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x104000a

    new-instance v5, Lcom/android/phone/MobileNetworkSettings$29;

    invoke-direct {v5, p0, p2, p3}, Lcom/android/phone/MobileNetworkSettings$29;-><init>(Lcom/android/phone/MobileNetworkSettings;II)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/phone/MobileNetworkSettings$28;

    invoke-direct {v5, p0, p3}, Lcom/android/phone/MobileNetworkSettings$28;-><init>(Lcom/android/phone/MobileNetworkSettings;I)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/android/phone/MobileNetworkSettings$27;

    invoke-direct {v4, p0}, Lcom/android/phone/MobileNetworkSettings$27;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mWarnDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v2, v3}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandEnabled(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    const/16 v4, 0x8

    if-ne v4, p2, :cond_6

    const-string v2, "global_network_cdma_gsm_enable_for_usc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    const-string v2, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAbsentSimStateAndDisplayToast()Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f0a0580

    invoke-direct {p0, p2, v2, p1}, Lcom/android/phone/MobileNetworkSettings;->showSearchingForDialog(IILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const/4 v4, 0x3

    if-ne v4, p2, :cond_8

    const-string v2, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x7f0a0581

    invoke-direct {p0, p2, v2, p1}, Lcom/android/phone/MobileNetworkSettings;->showSearchingForDialog(IILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->showGsmUmtsDialog()V

    goto :goto_1

    :cond_8
    const-string v4, "network_mode_global_lte_cdma_gsm_umts"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x9

    if-ne v4, p2, :cond_a

    const-string v2, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x7f0a0582

    invoke-direct {p0, p2, v2, p1}, Lcom/android/phone/MobileNetworkSettings;->showSearchingForDialog(IILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->showGsmUmtsDialog()V

    goto :goto_1

    :cond_a
    const-string v4, "network_mode_global_lte_wcdma"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    const/4 v5, 0x2

    if-ne v5, p2, :cond_b

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandEnabled(Z)V

    goto :goto_1

    :cond_b
    move v2, v3

    goto :goto_2

    :cond_c
    const-string v2, "global_network_cdma_gsm_enable_for_usc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x4

    if-ne v2, p2, :cond_d

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_d
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v2, v3}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandEnabled(Z)V

    goto/16 :goto_1
.end method

.method public showGlobalNetworkDialog(Ljava/lang/String;II)V
    .locals 3

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/phone/MobileNetworkSettings;->showGlobalNetworkDialog(Ljava/lang/CharSequence;II)V

    :cond_0
    return-void
.end method

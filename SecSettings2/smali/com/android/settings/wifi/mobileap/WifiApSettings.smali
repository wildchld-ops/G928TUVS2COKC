.class public Lcom/android/settings/wifi/mobileap/WifiApSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApSettings.java"


# static fields
.field private static final DBG:Z

.field private static mDefaultTempPassword:Ljava/lang/String;

.field private static mWifiApSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MHS_REQUEST:I

.field private bDisableMifi:Z

.field private isNoHotSpotModeWarningShown:Z

.field private isOverflowMenuOpen:Z

.field private isRoaming:Z

.field private key_compare:I

.field mAllowedMenuItem:Landroid/view/MenuItem;

.field public mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mConfigureMenuItem:Landroid/view/MenuItem;

.field private mConnectedDevices:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mContinueOpen:Z

.field private mDeviceInfo:Landroid/preference/PreferenceScreen;

.field private mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

.field private mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

.field private mDismissDialog:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mFilter:Landroid/content/IntentFilter;

.field public mHandler:Landroid/os/Handler;

.field private mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

.field private mHowToCategory:Landroid/preference/PreferenceCategory;

.field private mIsFromHelp:Z

.field private mIsTablet:Z

.field private mNewPassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mPassword:Landroid/preference/PreferenceCategory;

.field private mPasswordDialog:Landroid/app/AlertDialog;

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mPasswordHasFocus:Z

.field private mPasswordPreference:Landroid/preference/Preference;

.field private mPinDialog:Lcom/android/settings/wifi/mobileap/PinDialog;

.field public mPinDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenType:Z

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSharedPrefConnect:Landroid/content/SharedPreferences;

.field private mSsidPreference:Landroid/preference/Preference;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mTempPassworld:Ljava/lang/String;

.field private mTimeoutDlg:Landroid/app/AlertDialog;

.field private mView:Landroid/view/View;

.field private mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private misLightTheme:Z

.field private noHotspotModeWarningDialog:Landroid/app/AlertDialog;

.field passwordWatcher:Landroid/text/TextWatcher;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private toast:Landroid/widget/Toast;

.field private wps_tether_pin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->DBG:Z

    sput-object v2, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    sput-object v2, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->MHS_REQUEST:I

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isRoaming:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordHasFocus:Z

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$15;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$15;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPinDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$16;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->passwordWatcher:Landroid/text/TextWatcher;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.UPDATE_DEFAULT_CONFIGURATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mNewPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mNewPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->comparePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->creatApConfigWithNewPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/mobileap/PinDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPinDialog:Lcom/android/settings/wifi/mobileap/PinDialog;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->validate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method private addPasswordPreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPassword:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "WifiApSettings"

    const-string v1, "Wifi Config is null or Security is Open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v1, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    sget-object v1, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPassword:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPassword:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPassword:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private comparePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->channel:I

    if-eq v2, v3, :cond_0

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->insertMHSChannelLogging(I)V

    :cond_0
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v3, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eq v2, v3, :cond_1

    iget-boolean v2, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->insertMHSHiddenSSIDLogging(Z)V

    :cond_1
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eq v2, v3, :cond_2

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->insertMHSMaxClientLogging(I)V

    :cond_2
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    if-eq v2, p3, :cond_3

    invoke-direct {p0, p3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->insertMHSSecurityLogging(I)V

    :cond_3
    const-string v2, "SPRINT"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "TMO"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NEWCO"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eq v2, v3, :cond_6

    :cond_5
    :goto_0
    return v0

    :cond_6
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->channel:I

    if-ne v2, v3, :cond_5

    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v3, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    if-ne v2, p3, :cond_5

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private creatApConfigWithNewPassword(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    return-void
.end method

.method private createHelpStep1Dialog()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400cd

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private getRandomAlphabet(IJ)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/String;

    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    const-string v4, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private getRandomDigits(IJ)Ljava/lang/String;
    .locals 10

    const-wide/16 v6, 0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_1
    cmp-long v4, p2, v6

    if-nez v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long p2, v4, v6

    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0xa

    const/4 v1, 0x1

    :goto_1
    if-ge v1, p1, :cond_3

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%%0%dd"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getRandomSymbol(IJ)Ljava/lang/String;
    .locals 8

    new-instance v4, Ljava/lang/String;

    const-string v5, "!@#$/^&*()"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, p2, p3}, Ljava/util/Random;-><init>(J)V

    const-string v3, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getRvfMode()I
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1

    const/16 v0, 0x4b0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromPreference()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "600"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiApSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEvent action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateCurrent(Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT_CONNECT_TIME"

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "WifiApSettings"

    const-string v3, "cleared sharedprefs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-eqz v2, :cond_1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_4
    const-string v2, "com.samsung.intent.action.UPDATE_DEFAULT_CONFIGURATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    goto :goto_0
.end method

.method private insertMHSChannelLogging(I)V
    .locals 4

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHBC"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v2, "extra"

    const-string v3, "AUTO"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const-string v2, "extra"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    const-string v2, "extra"

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    const-string v2, "extra"

    const-string v3, "3"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    const-string v2, "extra"

    const-string v3, "4"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    const-string v2, "extra"

    const-string v3, "5"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_7

    const-string v2, "extra"

    const-string v3, "6"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x7

    if-ne p1, v2, :cond_8

    const-string v2, "extra"

    const-string v3, "7"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    const-string v2, "extra"

    const-string v3, "8"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const/16 v2, 0x9

    if-ne p1, v2, :cond_a

    const-string v2, "extra"

    const-string v3, "9"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const/16 v2, 0xa

    if-ne p1, v2, :cond_b

    const-string v2, "extra"

    const-string v3, "10"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const/16 v2, 0xb

    if-ne p1, v2, :cond_c

    const-string v2, "extra"

    const-string v3, "11"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x95

    if-ne p1, v2, :cond_0

    const-string v2, "extra"

    const-string v3, "149"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private insertMHSHiddenSSIDLogging(Z)V
    .locals 4

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHHD"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v2, "extra"

    const-string v3, "ON"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void

    :cond_0
    const-string v2, "extra"

    const-string v3, "OFF"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertMHSMaxClientLogging(I)V
    .locals 4

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHMC"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string v2, "extra"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const-string v2, "extra"

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const-string v2, "extra"

    const-string v3, "3"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    const-string v2, "extra"

    const-string v3, "4"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    const-string v2, "extra"

    const-string v3, "5"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    const-string v2, "extra"

    const-string v3, "6"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    if-ne p1, v2, :cond_7

    const-string v2, "extra"

    const-string v3, "7"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/16 v2, 0x8

    if-ne p1, v2, :cond_8

    const-string v2, "extra"

    const-string v3, "8"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/16 v2, 0x9

    if-ne p1, v2, :cond_9

    const-string v2, "extra"

    const-string v3, "9"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    const-string v2, "extra"

    const-string v3, "10"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertMHSSecurityLogging(I)V
    .locals 4

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHSC"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v2, "extra"

    const-string v3, "OPEN"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void

    :cond_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    :cond_2
    const-string v2, "extra"

    const-string v3, "WPA2 PSK"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xc5

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method private saveTimeoutPreference(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CONNECTION_TIMEOUT"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "wifiap_power_mode_alarm_option"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setHelpPreference(Ljava/lang/Boolean;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHelpPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOrder(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->addPasswordPreference()V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0a044c

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setOrder(I)V

    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOrder(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->addPasswordPreference()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0a0441

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const-string v0, "VZW"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setMaxClient(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iput-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setMaxClient(I)V

    goto :goto_1
.end method

.method private setTimeout(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->saveTimeoutPreference(I)V

    return-void
.end method

.method private showInvalidActionToast()V
    .locals 3

    const v2, 0x7f0a0f76

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showNoHotspotModeWarningDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a04b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a04b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a07c0

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$23;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$23;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a07c1

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$24;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$24;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$25;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$25;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateConnectedDevices()V
    .locals 36

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v26

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v7, "SAMSUNG_HOTSPOT_CONNECT_TIME"

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v3, v7, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    const/16 v21, 0x0

    const-string v27, "Mac_Addresses "

    const/16 v22, 0x0

    if-eqz v26, :cond_4

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v22, v3, 0x12

    const-string v3, "WifiApSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "staList.length() = "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, ",  num = "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v21

    if-eqz v21, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v3, "WifiApSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "macAddress from macList "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_0

    :cond_2
    const-string v3, " "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v3, v0

    const/4 v7, 0x1

    if-le v3, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, v25

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_3

    aget-object v3, v25, v19

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    if-nez v22, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    if-eqz v26, :cond_10

    if-lez v22, :cond_10

    const/4 v8, 0x0

    const-string v3, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v24, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v7, "SAMSUNG_HOTSPOT_CONNECT_TIME"

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v3, v7, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v24

    new-instance v9, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v7, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x2000

    invoke-direct {v9, v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_2
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    const-string v3, " "

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    array-length v3, v14

    const/4 v7, 0x4

    if-lt v3, v7, :cond_c

    const/4 v3, 0x0

    aget-object v3, v14, v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    aget-object v3, v14, v3

    if-eqz v3, :cond_c

    const/4 v3, 0x2

    aget-object v3, v14, v3

    if-eqz v3, :cond_c

    const/4 v3, 0x3

    aget-object v3, v14, v3

    if-eqz v3, :cond_c

    move/from16 v0, v17

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    aget-object v3, v28, v17

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    aget-object v3, v14, v3

    aget-object v7, v28, v17

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x3

    aget-object v3, v14, v3

    const-string v7, "*"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f0a044a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    aget-object v3, v28, v17

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x2

    aget-object v6, v14, v3

    const/4 v3, 0x0

    aget-object v12, v14, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    const-wide/16 v34, 0xe10

    add-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    if-eqz v24, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "WifiApSettings"

    const-string v7, "cMac is equal to mac , so using sharedprefs value"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const/4 v3, 0x3

    aget-object v4, v14, v3

    goto :goto_4

    :cond_9
    if-nez v2, :cond_a

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "WifiApSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "new device , so getting from dhcp and putting in sharedprefs and connect system time is1  "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v7, "SAMSUNG_HOTSPOT_CONNECT_TIME"

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v3, v7, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    aget-object v3, v28, v17

    move-object/from16 v0, v16

    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_a
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception v15

    move-object v8, v9

    :goto_6
    :try_start_2
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_b

    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_b
    :goto_7
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_8

    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    :cond_d
    if-eqz v9, :cond_e

    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_e
    move-object v8, v9

    goto :goto_7

    :catch_1
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    goto :goto_7

    :catch_2
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_3
    move-exception v15

    :goto_9
    :try_start_5
    invoke-virtual {v15}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_b

    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception v3

    :goto_a
    if-eqz v8, :cond_f

    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_f
    :goto_b
    throw v3

    :catch_5
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :cond_10
    new-instance v23, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0465

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceCategory;->setSelectable(Z)V

    :cond_11
    return-void

    :catchall_1
    move-exception v3

    move-object v8, v9

    goto :goto_a

    :catch_6
    move-exception v15

    move-object v8, v9

    goto :goto_9

    :catch_7
    move-exception v15

    goto/16 :goto_6
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f0200ac

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f020221

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateStatus()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v0, :cond_0

    const-string v0, "VZW"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->showSummary()V

    :cond_0
    const-string v0, "SPRINT"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const-string v1, "#0094b0"

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string v5, "WPA"

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setHowToView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSsid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v1, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    sget-object v1, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const-string v1, "#0094b0"

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string v5, "WPA2"

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setHowToView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "WifiApSettings"

    invoke-virtual {v6}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const-string v1, "#0094b0"

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setHowToView(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const-string v1, "#0094b0"

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setHowToView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const-string v1, "#0094b0"

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setHowToView(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const-string v1, "#0094b0"

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setHowToView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const-string v1, "#0094b0"

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setHowToView(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private validate()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public createHelpStep2Dialog()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400dd

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    :cond_1
    return-void
.end method

.method protected dismissHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    return-void
.end method

.method public enableSwitchBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0x10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v5, 0x7f0700bd

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v8, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    :cond_0
    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v5, :cond_1

    const-string v5, "TMO"

    const-string v8, "TMO"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "NEWCO"

    const-string v8, "TMO"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v8, 0x7f020276

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_3
    const-string v5, "MTR"

    const-string v8, "TMO"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "SAMSUNG_HOTSPOT"

    invoke-virtual {v5, v8, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "DONT_DISPLAY_MPCS_WARNING"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_10

    move v1, v6

    :goto_0
    if-nez v1, :cond_5

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/high16 v8, 0x40000

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->misLightTheme:Z

    iput-object v11, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-direct {v5, v4, v8, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;)V

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0d008d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_6
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v7, v7, v3, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    const-string v5, "SPRINT"

    const-string v8, "TMO"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v8, 0x7f0a04b7

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5, p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    const-string v5, "wifi_ap_password"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPassword:Landroid/preference/PreferenceCategory;

    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    const-string v5, "wifi_ap_connected_devices"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    const-string v5, "wifi_ap_howto_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-direct {v5, v0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v5, v7}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v5, v7}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setSelectable(Z)V

    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    invoke-direct {v5, v0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    invoke-virtual {v5, v7}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setSelectable(Z)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHasOptionsMenu(Z)V

    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v5, "MTR"

    const-string v8, "TMO"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v5, 0xd

    if-eq v2, v5, :cond_8

    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v5, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v5, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    :cond_8
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v5

    if-lez v5, :cond_9

    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-nez v5, :cond_9

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V

    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    :cond_9
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v5, :cond_c

    const-string v5, "VZW"

    const-string v8, "TMO"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "SPRINT"

    const-string v8, "TMO"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_a
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :cond_c
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v5

    if-lez v5, :cond_e

    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v5, :cond_e

    const-string v5, "VZW"

    const-string v6, "TMO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "SPRINT"

    const-string v6, "TMO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v11, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-string v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_f
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_10
    move v1, v7

    goto/16 :goto_0

    :cond_11
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v8, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "WifiApSettings"

    const-string v2, "WifiApSettings onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->enableSwitchBar(Z)V

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateSwitchBarText(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v1, :cond_4

    const-string v1, "VZW"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SPRINT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    sput-boolean v3, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    const-string v1, "VZW"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SPRINT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    :cond_2
    :goto_1
    sget-object v1, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "WifiApSettings"

    const-string v2, "mDefaultTempPassword is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    invoke-direct {p0, v2, v6, v7}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    const-wide/16 v4, 0x1

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v6, v7}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRandomSymbol(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    :cond_3
    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFromHelp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fromHelp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    const-string v1, "fromHelp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 22

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0063

    invoke-direct {v14, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v2, "layout_inflater"

    invoke-virtual {v14, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    const-string v2, "VZW"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->dismissHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    :goto_1
    return-object v2

    :cond_1
    new-instance v2, Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromPreference()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutIndexFromValue(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v20

    new-instance v19, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0444

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0166

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    const v2, 0x7f04022c

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v17

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    const-string v2, "WifiApSettings"

    const-string v3, "create dialog  DIALOG_OPEN_SECURITY_WARNING"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a04b1

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f040226

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v2, :cond_4

    const v2, 0x7f1004e4

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    const v2, 0x7f1004e5

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    const v2, 0x7f1004e6

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a07c1

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$11;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    const v2, 0x7f040225

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f1004e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a011c

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a07c0

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$12;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings$12;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v11, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_1

    :cond_6
    const/16 v2, 0x38

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v2, 0x39

    move/from16 v0, p1

    if-eq v0, v2, :cond_7

    const/16 v2, 0x3a

    move/from16 v0, p1

    if-eq v0, v2, :cond_7

    const/16 v2, 0x3b

    move/from16 v0, p1

    if-eq v0, v2, :cond_7

    const/16 v2, 0x9

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    const-string v2, "WifiApSettings"

    const-string v3, "create dialog  DIALOG_MODIFY_PASSWORD"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldPassword:Ljava/lang/String;

    const v2, 0x7f040227

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    const v2, 0x7f100471

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a03fb

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a03f3

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a04ed

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$14;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0x7f0a0440

    invoke-interface {p1, v6, v5, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const/4 v7, 0x3

    const v8, 0x7f0a043d

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    iget-boolean v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v7, :cond_0

    const-string v7, "TMO"

    const-string v8, "TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "NEWCO"

    const-string v8, "TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const v7, 0x7f0a043e

    invoke-interface {p1, v6, v11, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v7, 0x7f020224

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const-string v7, "SPRINT"

    const-string v8, "TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    const v8, 0x7f0a0496

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v7, 0x7f020223

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    const-string v7, "VZW"

    const-string v8, "TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v7, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.samsung.helphub"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    const v10, 0x7f0a0e5b

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v7, 0x7f0200de

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-boolean v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v11, :cond_5

    :goto_2
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_5
    move v5, v6

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v13, 0x1

    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings is null. Make WeakReference again for WifiApSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    :cond_0
    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v0, :cond_1

    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings is not acivated. Is this function called after onPause?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v13

    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0, v13}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    iput-boolean v13, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    :cond_3
    move v0, v13

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    move v0, v13

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showInvalidActionToast()V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showInvalidActionToast()V

    :cond_7
    :goto_1
    move v0, v13

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a043f

    const/16 v6, 0x64

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    :cond_9
    const-class v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0a043f

    move-object v3, p0

    move-object v4, p0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a0496

    const/16 v6, 0x64

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v0, v13

    goto/16 :goto_0

    :cond_a
    const-class v0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v8, v7

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    :pswitch_4
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.helphub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    if-eqz v11, :cond_c

    iget v0, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    if-ne v0, v4, :cond_c

    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.samsung.helphub.HELP"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "helphub:section"

    const-string v1, "tethering_vzw"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->startActivity(Landroid/content/Intent;)V

    :cond_b
    :goto_3
    :pswitch_5
    move v0, v13

    goto/16 :goto_0

    :cond_c
    if-eqz v11, :cond_b

    iget v0, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.samsung.helphub.HELP"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "helphub:appid"

    const-string v1, "tethering"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    :pswitch_6
    move v0, v13

    goto/16 :goto_0

    :pswitch_7
    move v0, v13

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "VZW"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    const v1, 0x7f100471

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordHasFocus:Z

    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->onClickItem(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    move v1, v3

    :goto_0
    sput-boolean v3, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    const-string v2, "VZW"

    const-string v5, "TMO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApDialog;->dismissSpinnerPopup()V

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v2

    if-lez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V

    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iput-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v5}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateCurrent(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApDialog;->showSoftInput()V

    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0a00fc

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->finish()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a13a2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_9
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordHasFocus:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    const v3, 0x7f100471

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiApDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iput-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordHasFocus:Z

    :cond_a
    return-void

    :cond_b
    move v1, v4

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public removeAllConnectedDevice()V
    .locals 8

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v1, v5, 0x12

    const-string v5, "WifiApSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAllConnectedDevice(), num = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeSelectedDevice(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeSelectedDevice(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    const-string v2, "mac"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_0
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveLast2gChannel(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_last_2g_channel"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    return-void
.end method

.method public updateSwitchBarText(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    :cond_0
    return-void
.end method

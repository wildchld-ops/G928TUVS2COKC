.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/app/Activity$OnShowButtonBackgroundChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$Scanner;,
        Lcom/android/settings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final ChinaNalSecurityType:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SHOW_BUTTON_BACKGROUND:Z

.field private static final WIFI_AUTOJOIN:Z

.field private static final WIFI_ERRORCODE:Z

.field private static final WIFI_SSIDSTATUSBARINFO:Z

.field public static cancel_network:I

.field public static forget_network:I

.field private static final mEapMethod:Ljava/lang/String;

.field private static final mHiddenAps:Z

.field public static mInOffloadDialog:Z

.field public static mIsReconn:I

.field private static final mIwlan:Ljava/lang/String;

.field public static mManageNetworkConnected:I

.field private static final mReset:Z

.field private static final mSalesCode:Ljava/lang/String;

.field public static mShowSnsDialog:Landroid/preference/CheckBoxPreference;

.field public static mStartWith:I

.field public static mVerboseLogging:I

.field public static mWpsInProgress:Z

.field static rememberedAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsSupportSecWFC:Z

.field private static savedNetworksExist:Z

.field private static tempConfig:Landroid/net/wifi/WifiConfiguration;


# instance fields
.field private final ALWAYS_ALLOW_SCANNING_OFF:I

.field private final ALWAYS_ALLOW_SCANNING_ON:I

.field private final CMCC_CHARGE_WARNING_OFF:I

.field private final CMCC_CHARGE_WARNING_ON:I

.field private final CONNECTION_METHOD_ALWAYS_ASK:I

.field private final CONNECTION_METHOD_AUTOMATIC:I

.field private final CONNECTION_METHOD_MANUALLY:I

.field private final ERROR_DIALOG_DURATION_TIME:I

.field private final IWLAN_OFF:I

.field private final IWLAN_ON:I

.field private final PASSPOINT_OFF:I

.field private final PASSPOINT_ON:I

.field private final SLEEP_POLICY_ALWAYS:I

.field private final SLEEP_POLICY_NEVER:I

.field private final SLEEP_POLICY_ONLY_WHEN_PLUGGED_IN:I

.field private final WLAN_PERMISSION_REQUEST_OFF:I

.field private final WLAN_PERMISSION_REQUEST_ON:I

.field bRetryPopup:Z

.field private helpMenuCheck:Z

.field private isDcm:Z

.field private isKioskContainer:Z

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mActivity:Landroid/app/Activity;

.field private mAllowUpdateScanList:I

.field private mAlwaysAllowDialog:Landroid/app/Dialog;

.field private mAutojoinMenuItem:Landroid/view/MenuItem;

.field private mBackgroundResId:I

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mDhcpErrorApNetId:I

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDurationDialogHandler:Landroid/os/Handler;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mErrorApInfo:Landroid/net/wifi/WifiInfo;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mErrorDialogStopScan:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFirst5GScanFlag:Z

.field private mForceShowDialog:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mIgnoreConnectedMsg:Z

.field private mInManageNetwork:Z

.field private mInPickerDialog:Z

.field private mInSecPickerActivity:Z

.field private mInSetupWizardWifiScreen:Z

.field private mIsEmerMode:Z

.field private mIsFromLocation:Z

.field private mIsOOBE:Z

.field private mIsShouldSendResult:Z

.field private mIwlanDialog:Landroid/app/Dialog;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private final mMHSFilter:Landroid/content/IntentFilter;

.field private final mMHSReceiver:Landroid/content/BroadcastReceiver;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobilePolicyDataEnable:Z

.field private mNfcManager:Landroid/nfc/NfcManager;

.field private mP2pSupported:Z

.field private mPasspointDialog:Landroid/app/Dialog;

.field private mPermissionRequestDialog:Landroid/app/Dialog;

.field private mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetDialog:Landroid/app/Dialog;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedApCount:I

.field private final mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

.field private mSccDiffDialog:Landroid/app/AlertDialog;

.field private mScrollTimer:J

.field private mSecSetupWizardMode:Z

.field private mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mWifiDirect:Landroid/widget/TextView;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

.field private mWifiSnsSetupWizardDialog:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

.field private mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

.field private mWpsDialog:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    sput v2, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    sput v2, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SHOW_BUTTON_BG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->SHOW_BUTTON_BACKGROUND:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    sput v2, Lcom/android/settings/wifi/WifiSettings;->mVerboseLogging:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuAutoJoin"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_AUTOJOIN:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuResetConfiguration"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mReset:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_HideExcludedApList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mHiddenAps:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuIWLAN4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->mIwlan:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "SalesCode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->mSalesCode:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->ChinaNalSecurityType:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->sIsSupportSecWFC:Z

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$27;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$27;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mBackgroundResId:I

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDhcpErrorApNetId:I

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mActivity:Landroid/app/Activity;

    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->ERROR_DIALOG_DURATION_TIME:I

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->ALWAYS_ALLOW_SCANNING_ON:I

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->ALWAYS_ALLOW_SCANNING_OFF:I

    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->PASSPOINT_ON:I

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->PASSPOINT_OFF:I

    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->WLAN_PERMISSION_REQUEST_ON:I

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->WLAN_PERMISSION_REQUEST_OFF:I

    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->CMCC_CHARGE_WARNING_ON:I

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->CMCC_CHARGE_WARNING_OFF:I

    iput v4, p0, Lcom/android/settings/wifi/WifiSettings;->SLEEP_POLICY_ALWAYS:I

    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->SLEEP_POLICY_ONLY_WHEN_PLUGGED_IN:I

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->SLEEP_POLICY_NEVER:I

    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->IWLAN_ON:I

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->IWLAN_OFF:I

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->CONNECTION_METHOD_AUTOMATIC:I

    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->CONNECTION_METHOD_MANUALLY:I

    iput v4, p0, Lcom/android/settings/wifi/WifiSettings;->CONNECTION_METHOD_ALWAYS_ASK:I

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsOOBE:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->isDcm:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->isKioskContainer:Z

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mMobilePolicyDataEnable:Z

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$26;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiSettings$26;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mMHSFilter:Landroid/content/IntentFilter;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mMHSReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isKioskContainer:Z

    return-void
.end method

.method private RemoveNotUsedWpsButton()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPermissionRequestDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->changeHotspot20(Z)V

    return-void
.end method

.method static synthetic access$1800()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/ProgressCategoryWifi;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isMobileApON()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    return-void
.end method

.method private changeHotspot20(Z)V
    .locals 10

    const/4 v7, 0x1

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const/16 v6, 0x29

    iput v6, v5, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "enable"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "WifiSettings"

    const-string v7, "HOTSPOT20 config store error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_hotspot20_enable"

    if-eqz p1, :cond_3

    move v6, v7

    :goto_0
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v4, Lcom/android/settings/wifi/WifiSettings$19;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiSettings$19;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v8, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private changeNextButtonState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private checkStartingDialogWithSettings()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sns_dialog_for_starting_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.wifi.WifiSnsExceptionActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10808000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "SSID"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_SNS_DIALOG_FOR_STARTING_SETTINGS == 11, create WifiSnsExceptionActivity SSID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 7

    const/4 v6, 0x1

    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectNetwork nid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->insertScanResultLogging()V

    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    :cond_2
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sput-boolean v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1, p2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "WifiSettings"

    const-string v1, "connectNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->insertScanResultLogging()V

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            "Landroid/net/wifi/WifiInfo;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/android/settings/wifi/WifiSettings$Multimap;

    const/4 v13, 0x0

    invoke-direct {v4, v13}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings$1;)V

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    sget-boolean v14, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1

    const/4 v13, 0x1

    :goto_0
    if-eq v14, v13, :cond_0

    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v13, :cond_2

    const/4 v13, 0x1

    :goto_1
    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/app/Activity;

    if-eqz v13, :cond_0

    move-object/from16 v13, p1

    check-cast v13, Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    if-nez v5, :cond_3

    const-string v13, "WifiSettings"

    const-string v14, "constructAccessPoints config is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v13, :cond_4

    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v13, :cond_6

    :cond_4
    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-direct {v2, v0, v5, v13}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v13, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_10

    const/4 v8, 0x3

    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->mHiddenAps:Z

    if-eqz v13, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "hidden_ap_sinal_strength"

    const/4 v15, 0x3

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    :cond_8
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v13, :cond_9

    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "[IBSS]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v7, 0x0

    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->mHiddenAps:Z

    if-eqz v13, :cond_b

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_b

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_b

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getRssi()I

    move-result v13

    invoke-static {v13, v8}, Lcom/android/settings/wifi/WifiSettings;->isHiddenAccessPoint(II)Z

    move-result v13

    if-nez v13, :cond_a

    :cond_b
    invoke-virtual {v2, v11}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v7, 0x1

    goto :goto_5

    :cond_c
    if-nez v7, :cond_9

    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v13, :cond_d

    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v13, :cond_f

    :cond_d
    const/4 v13, 0x1

    :goto_6
    move-object/from16 v0, p1

    invoke-direct {v2, v0, v11, v13}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;Z)V

    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->mHiddenAps:Z

    if-eqz v13, :cond_e

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_e

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_e

    iget v13, v11, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v13, v8}, Lcom/android/settings/wifi/WifiSettings;->isHiddenAccessPoint(II)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v13, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_f
    const/4 v13, 0x0

    goto :goto_6

    :cond_10
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v3
.end method

.method private dismissDialog(I)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->getSnsSettingDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSetupWizardDialog:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSetupWizardDialog:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->getWifiSnsSetupWizardDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSetupWizardDialog:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    iget v5, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v4, v5, :cond_0

    iget-object v4, v2, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    const/4 v2, 0x0

    :cond_1
    iget-object v4, p1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    return-object v4
.end method

.method private getAccessPoint(I)Lcom/android/settings/wifi/AccessPoint;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    :cond_0
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, p1, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6

    const/4 v1, 0x0

    const/4 v3, -0x1

    sget-object v5, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/AccessPoint;->checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    :cond_1
    if-eqz v1, :cond_2

    move v4, v3

    :goto_0
    return v4

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    move v4, v3

    goto :goto_0
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v13, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "wifi_state"

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WifiSettings;->updateWifiState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v13, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "WifiSettings"

    const-string v14, ">>> SCAN_RESULTS_AVAILABLE_ACTION RECEIVED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mAllowUpdateScanList = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_3

    const-string v13, "WifiSettings"

    const-string v14, "SKIP SCAN LIST UPDATE!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v13, :cond_0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    const-string v13, "WifiSettings"

    const-string v14, "Force scan for 5G APs"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->isTalkbackPaused()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSavedApCount:I

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    const/4 v14, 0x3

    if-eq v13, v14, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSavedApCount:I

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->speakTTS()V

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    goto :goto_1

    :cond_6
    const-string v13, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    const-string v13, "wifiConfiguration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    const-string v13, "changeReason"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eqz v9, :cond_0

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">>> CONFIGURED_NETWORKS_CHANGED_ACTION nid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", reason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "network.status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "bRetryPopup = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "network.disableReason = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v13, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    iget v13, v9, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    iget v13, v9, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/wifi/WifiSettings;->showConnectionFailDialog(Landroid/net/wifi/WifiConfiguration;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    goto/16 :goto_0

    :cond_7
    const-string v13, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    :cond_8
    const-string v13, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "newState"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/SupplicantState;

    sget-object v13, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v11, v13, :cond_9

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    :cond_9
    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">>> SUPPLICANT_STATE_CHANGED_ACTION SupplicantState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "networkInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v13, "connectivity"

    invoke-virtual {v2, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    const/4 v12, 0x0

    if-eqz v3, :cond_a

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">>> SUPPLICANT_STATE_CHANGED_ACTION : wifiNetworkInfo.isConnected() :: mLastInfo = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    :cond_a
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v11, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_0

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">>> SUPPLICANT_STATE_CHANGED_ACTION state:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    :cond_b
    const-string v13, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    const-string v13, "networkInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    const-string v13, "network_reconnect"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    sput v13, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">>> SEC_COMMAND_ID_GET_RECONNECT RECEIVED code:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_c

    const-string v13, "linkProperties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mLinkProperties:Landroid/net/LinkProperties;

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mForceShowDialog:Z

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v13, :cond_d

    if-eqz v7, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    :cond_d
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mForceShowDialog:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    :cond_e
    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">>> NETWORK_STATE_CHANGED_ACTION state:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    if-eqz v8, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v13, :cond_f

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    goto/16 :goto_0

    :cond_f
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v13, "ssid"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "bssid"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "security"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "frequency"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14, v6}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_11
    const-string v13, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    :cond_12
    const-string v13, "com.samsung.android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    const-string v13, "launch_with"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_13
    const-string v13, "android.net.wifi.ERROR"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    const-string v13, "errorCode"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">>> ERROR_ACTION RECEIVED code:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v13, "wifiInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    const-string v13, "netid"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/wifi/WifiSettings;->mDhcpErrorApNetId:I

    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    const/4 v13, 0x5

    const/16 v14, 0x7530

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    :cond_14
    const-string v13, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15

    const-string v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15

    const-string v13, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_16
    const-string v13, "com.samsung.android.intent.action.WIFI_P2P_LAUNCH"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static insertLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v2, "WifiSettings"

    const-string v3, "LOGGING: feature is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method public static insertPasspointLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 1

    const-string v0, "WPST"

    invoke-static {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static isHiddenAccessPoint(II)Z
    .locals 2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v1, -0x41

    if-ge p0, v1, :cond_0

    goto :goto_0

    :pswitch_1
    const/16 v1, -0x46

    if-ge p0, v1, :cond_0

    goto :goto_0

    :pswitch_2
    const/16 v1, -0x4b

    if-ge p0, v1, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isMobileApON()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    const-string v2, "WifiSettings"

    const-string v3, "Wifi Manager is null so returning false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUsimUseable()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    :goto_0
    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a03be

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :goto_1
    return v4

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    const-string v6, "SKT"

    sget-object v7, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v6, "45005"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "45000"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a03c0

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    const-string v6, "KTT"

    sget-object v7, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v6, "45008"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "45002"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a03bf

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private loggingWps()V
    .locals 4

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "LWPS"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private setOffMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0a0369

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    return-void
.end method

.method private setProgressBarVisible(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetupWizard --> WifiSettings setProgressBarVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f100592

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_5

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    :cond_6
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_7

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    :cond_8
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0
.end method

.method private showConnectionFailDialog(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showConnectionFailDialog : config.status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "config.disableReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v4, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiSettings"

    const-string v2, "AP Dialog is aleady showing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getAccessPoint(I)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "WifiSettings"

    const-string v2, "Fail to show retry popup. Can not find access point."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "WifiSettings"

    const-string v2, "Fail to show retry popup. It\'s default AP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v1, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0b5b

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_4
    const-string v1, "WifiSettings"

    const-string v2, "Show retry popup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiSettings;->showRetryDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method private showDurationDialog(IIZ)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, ""

    const-string v1, "ollehWiFi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a03ac

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showRetryDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 8

    const/16 v7, 0xa

    const/4 v2, 0x0

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getPromptCredentialsEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "getPromptCredentialsEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private startWith(I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiSettings activity start with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onSmartNetworkSwitchPressed()V

    goto :goto_0

    :pswitch_3
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "wifi_auth_fail_nId"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "changeReason"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v6, :cond_1

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LAUNCH_WITH_SHOW_RETRY_DIALOG : nId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->showConnectionFailDialog(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    sput-boolean v5, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateAccessPoints()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x7f0a036b

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v8, "WifiSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[updateAccessPoints] wifiState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v8

    sput v8, Lcom/android/settings/wifi/WifiSettings;->mVerboseLogging:I

    packed-switch v7, :pswitch_data_0

    :cond_3
    :goto_1
    iget-wide v8, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1f4

    cmp-long v8, v8, v10

    if-lez v8, :cond_13

    const-string v8, "WifiSettings"

    const-string v9, "scroll end"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    goto :goto_0

    :pswitch_0
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v8}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "WifiSettings"

    const-string v9, "Skip updateAccessPoints"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v8

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v8, :cond_8

    const v8, 0x7f0a088e

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/settings/ProgressCategoryWifi;->setProgress(Z)V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    invoke-virtual {v8}, Lcom/android/settings/ProgressCategoryWifi;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    :cond_6
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    const-string v8, "DeviceManager3LM"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v2

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v8, :cond_c

    sget-object v8, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    sget-boolean v8, Lcom/android/settings/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    if-eqz v8, :cond_b

    const-string v8, "Swisscom_Auto_Login"

    iget-object v9, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const-string v8, "Swisscom"

    iget-object v9, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v5, v0

    goto :goto_3

    :cond_8
    const v8, 0x7f0a036a

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v8, :cond_a

    const/4 v3, 0x1

    :cond_a
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_b
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_c
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->isDcm:Z

    if-nez v8, :cond_e

    const-string v8, "CMCC"

    sget-object v9, Lcom/android/settings/Utils;->CSC_Vendor_Notification_Style:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_d

    :cond_e
    sget-boolean v8, Lcom/android/settings/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    if-eqz v8, :cond_11

    const-string v8, "Swisscom_Auto_Login"

    iget-object v9, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const-string v8, "Swisscom"

    iget-object v9, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    move-object v5, v0

    goto :goto_4

    :cond_f
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v8, :cond_10

    const/4 v3, 0x1

    :cond_10
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_11
    const-string v8, ""

    iget-object v9, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_12
    sget-boolean v8, Lcom/android/settings/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v8, "WifiSettings"

    const-string v9, "network removed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_1

    :pswitch_2
    const v8, 0x7f0a0333

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v8

    if-lez v8, :cond_0

    const-string v8, "WifiSettings"

    const-string v9, "force scroll up"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 8

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v4, :cond_4

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_3

    sget v4, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    if-eqz v4, :cond_4

    :cond_3
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_7

    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    :cond_5
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_2
    if-ltz v1, :cond_8

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_6

    move-object v0, v3

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    :cond_8
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIsOOBE:Z

    if-eqz v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    sget-boolean v4, Lcom/android/settings/wifi/WifiSettings;->sIsSupportSecWFC:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/tmowfc/wfcutils/WfcUtilsHelper;->isValidSim(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIsOOBE:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/StandardDialogs$Type;->OOBE_WIFI_CONNECTED:Lcom/samsung/tmowfc/wfcutils/StandardDialogs$Type;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/tmowfc/wfcutils/StandardDialogs;->showDialog(Landroid/content/Context;Lcom/samsung/tmowfc/wfcutils/StandardDialogs$Type;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_2
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isWifiDirectAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isWifiDirectAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "WifiSettings"

    const-string v3, "TALK BACK ON !!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    :cond_6
    const v0, 0x7f0a0332

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_0

    :pswitch_2
    const v0, 0x7f0a0333

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_9
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    :cond_a
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    const-string v0, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v14

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->isKioskContainer:Z

    if-nez v3, :cond_0

    :cond_0
    move v8, v14

    const-string v3, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "false"

    aput-object v4, v5, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    const-string v4, "getAllowUserProfiles"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "getAllowUserProfiles"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_1

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_b

    const/4 v8, 0x0

    :cond_1
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v6, 0x0

    const v15, 0x7f0a0352

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v6, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const-string v3, "ChinaNalSecurity"

    sget-object v4, Lcom/android/settings/wifi/WifiSettings;->ChinaNalSecurityType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v6, 0x0

    const v15, 0x7f0a00e6

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v6, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const v15, 0x7f0a0359

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v6, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const-string v3, "KTT"

    sget-object v4, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const v15, 0x7f0a035b

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v6, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_4
    const/4 v3, 0x0

    const/16 v4, 0x17

    const/4 v6, 0x0

    const v15, 0x7f0a04cf

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v6, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    const/4 v3, 0x1

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const-string v3, "CMCC"

    sget-object v4, Lcom/android/settings/Utils;->CSC_Vendor_Notification_Style:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v6, 0x0

    const v15, 0x7f0a0ad1

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v6, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v6, 0x0

    const v15, 0x7f0a035e

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v6, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v11, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.itsoninc.android.itsonclient"

    const-string v4, "com.itsoninc.android.core.ui.wifimanager.ConnectionsOptimizerActivity"

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v11, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_d

    const/4 v12, 0x1

    :goto_3
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ItsOn enabled - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/16 v4, 0x1a

    const/4 v6, 0x0

    const v15, 0x7f0a0368

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v6, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/Menu;->removeItem(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/Menu;->removeItem(I)V

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/Menu;->removeItem(I)V

    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/Menu;->removeItem(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x1a

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/Menu;->removeItem(I)V

    const-string v3, "WifiSettings"

    const-string v4, "ItsOn menu removed due to UPS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v6, 0x0

    const v15, 0x7f0a0d3e

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v6, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200a4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_a
    return-void

    :cond_b
    move v8, v14

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_3
.end method

.method protected connect(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method forget()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0a0d3f

    return v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v1, :cond_0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method insertScanResultLogging()V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v4, "SCNT"

    if-eqz v0, :cond_2

    const-string v2, "HIGH"

    :goto_1
    invoke-static {v3, v4, v2}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "LOW"

    goto :goto_1
.end method

.method public isTalkbackPaused()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 34

    invoke-super/range {p0 .. p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "VZW"

    sget-object v6, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    sput v3, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    const/4 v3, 0x0

    sput v3, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    const-string v3, "WifiSettings"

    const-string v6, "vzwViewFlag sets to false, onActivityCreated"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, "nfc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NfcManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mNfcManager:Landroid/nfc/NfcManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.wifi.direct"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    const-string v3, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v3, "wifip2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    if-nez v16, :cond_2

    const-string v3, "WifiSettings"

    const-string v6, " onActivityCreated Activity is null"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-eqz v3, :cond_3

    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v3, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v6, 0x64

    if-ge v3, v6, :cond_8

    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->isKioskContainer:Z

    if-nez v3, :cond_8

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_8

    const v3, 0x7f0a032d

    invoke-virtual {v15, v3}, Landroid/app/ActionBar;->setTitle(I)V

    new-instance v27, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x2

    const/4 v6, -0x2

    const v7, 0x800015

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v6, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-super/range {p0 .. p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f040236

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    if-eqz v15, :cond_4

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_4
    const v3, 0x7f10053a

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a035c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a08bb

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    new-instance v28, Landroid/util/TypedValue;

    invoke-direct/range {v28 .. v28}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v6, 0x11600b4

    const/4 v7, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v3, v6, v0, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object/from16 v0, v28

    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_17

    const/16 v24, 0x1

    :goto_2
    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->SHOW_BUTTON_BACKGROUND:Z

    if-eqz v3, :cond_5

    if-eqz v24, :cond_5

    const/4 v3, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->View:[I

    const v7, 0x10102d8

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v17

    const/16 v3, 0xd

    const v6, 0x1080873

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/wifi/WifiSettings;->mBackgroundResId:I

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->addOnShowButtonBackgroundChangeListener(Landroid/app/Activity$OnShowButtonBackgroundChangeListener;)V

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "show_button_background"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_18

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->onShowButtonBackgroundChange(Z)V

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    new-instance v6, Lcom/android/settings/wifi/WifiSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "isWifiDirectAllowed"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_8

    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "isWifiDirectAllowed"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_5
    const-string v3, "connectivity"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_9

    const-string v3, "edit_mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    const-string v3, "wifi_ap_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "wifi_ap_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_9
    invoke-static/range {v16 .. v16}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-nez v3, :cond_a

    new-instance v3, Landroid/speech/tts/TextToSpeech;

    new-instance v6, Lcom/android/settings/wifi/WifiSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v6}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v3, "wifi_enable_next_on_connect"

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    const-string v3, "force_show_dialog"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "force_show_dialog"

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mForceShowDialog:Z

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v18, :cond_c

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    :cond_c
    const-string v3, "VZW"

    sget-object v6, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    sput v3, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    :cond_d
    const v3, 0x7f0700c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v3, :cond_1b

    const-string v3, "WifiSettings"

    const-string v6, "onCreate:only_access_points"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    sput v3, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    const v3, 0x7f0700ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v3

    const/high16 v6, 0x1a40000

    invoke-virtual {v3, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_f
    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->sIsSupportSecWFC:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mIsOOBE:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mIsOOBE:Z

    if-nez v3, :cond_10

    const v3, 0x7f0700c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    :cond_10
    const-string v3, "show_wifi_smart_network_switch_dialog"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    sput-object v3, Lcom/android/settings/wifi/WifiSettings;->mShowSnsDialog:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v3, :cond_1e

    :cond_11
    const-string v3, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecSetupWizardMode, show WifiSnsSetupWizardDialog : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/settings/wifi/WifiSettings;->mShowSnsDialog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_poor_connection_warning"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_watchdog_poor_network_test_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v3, :cond_1f

    const-string v3, "VZW"

    sget-object v6, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x1020004

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const/high16 v3, 0x41900000    # 18.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x30

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const v3, 0x7f0a0355

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :goto_8
    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->sIsSupportSecWFC:Z

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v3, :cond_12

    const v3, 0x7f0700c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setForcedClick(Z)V

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    :goto_9
    const-string v3, "wifi_start_connect_ssid"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "wifi_start_connect_ssid"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v30

    const/16 v21, 0x0

    :goto_a
    invoke-virtual/range {v30 .. v30}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_14

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_21

    move-object/from16 v14, v29

    check-cast v14, Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v14, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget v3, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_21

    iget v3, v14, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v3, 0x7f0d000c

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v6, 0x7f0d001c

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v3, v6

    const v6, 0x7f0d0019

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v9, v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_22

    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v3, :cond_15

    const v3, 0x7f0202fd

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, 0x3000000

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    const v3, 0x7f020055

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelector(I)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_17
    const/16 v24, 0x0

    goto/16 :goto_2

    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->onShowButtonBackgroundChange(Z)V

    goto/16 :goto_3

    :cond_19
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1a
    const v3, 0x7f0a0354

    invoke-virtual {v15, v3}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v3, :cond_1c

    const v3, 0x7f0700c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    const-string v3, "wifi_progress_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ProgressCategoryWifi;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    const-string v3, "VZW"

    sget-object v6, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    sput v3, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    goto/16 :goto_6

    :cond_1c
    const v3, 0x7f0700c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v3, :cond_1d

    const-string v3, "wifi_progress_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ProgressCategoryWifi;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    :cond_1d
    const-string v3, "VZW"

    sget-object v6, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    sput v3, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    goto/16 :goto_6

    :cond_1e
    sget-object v3, Lcom/android/settings/wifi/WifiSettings;->mShowSnsDialog:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_20
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    goto/16 :goto_9

    :cond_21
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_a

    :cond_22
    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WifiSettings"

    const-string v2, "Ignore Illegal state exception here."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdvancedMenuPressed()V
    .locals 10

    const/4 v6, 0x0

    const v3, 0x7f0a035e

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.SECSETUP_WIFI_ADVANCED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onAlwaysAllowScanningPressed()V
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_scan_always_enabled"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a033c

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    if-ne v2, v5, :cond_0

    :goto_0
    new-instance v6, Lcom/android/settings/wifi/WifiSettings$13;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSettings$13;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0a0166

    new-instance v6, Lcom/android/settings/wifi/WifiSettings$14;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSettings$14;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAlwaysAllowDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040218

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f1004a0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a033d

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAlwaysAllowDialog:Landroid/app/Dialog;

    check-cast v5, Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1, v9, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAlwaysAllowDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const/4 v5, 0x2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 16

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/settings/wifi/WifiConfigController;->getDialogButton(I)Z

    move-result v5

    const-string v12, "VZW"

    sget-object v13, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/settings/wifi/WifiConfigController;->getVzwButton(I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v12, "WifiSettings"

    const-string v13, "onClick() mController is null "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v12, "WifiSettings"

    const-string v13, "onClick() mDialog is null "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0a0f76

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const/16 v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    goto :goto_0

    :pswitch_3
    if-eqz v3, :cond_0

    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_8

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiConfigController;->isNeedtoForgetNetwork()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    iput v10, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    iget-boolean v12, v12, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v12, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v12, v3, v13}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    const/4 v12, -0x1

    if-eq v10, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v12, v3, v13}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v13, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    const/4 v12, -0x1

    if-ne v9, v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0a0374

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iput v9, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const v12, 0x7f0a0373

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v7, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0

    :pswitch_4
    if-nez v3, :cond_a

    const-string v12, "WifiSettings"

    const-string v13, " config null "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    :cond_a
    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    iget-boolean v12, v12, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v12, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiConfigController;->isNeedtoForgetNetwork()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    iput v10, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v12, v3, v13}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    const/4 v12, -0x1

    if-eq v10, v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v12, :cond_d

    const-string v12, "WifiSettings"

    const-string v13, "onClick SUBMIT button but, mDialog is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    if-eqz v3, :cond_10

    iget-object v12, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    const/4 v2, 0x0

    iget-object v12, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_f

    :cond_e
    const-string v12, "WifiSettings"

    const-string v13, "caCert is null or empty!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v3, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v12, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v12, v3, v13}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    :cond_11
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_16

    sget-boolean v12, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v12

    if-nez v12, :cond_12

    const-string v12, "WifiSettings"

    const-string v13, "disabling AP..."

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto/16 :goto_0

    :cond_12
    sget-boolean v12, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v12

    if-nez v12, :cond_14

    const-string v12, "WifiSettings"

    const-string v13, "disconnecting AP..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    if-nez v11, :cond_13

    const-string v12, "WifiSettings"

    const-string v13, "selectedConfig == null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    const/16 v12, 0xcb

    iput v12, v8, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v12, "netId"

    iget v13, v11, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "reason"

    const/16 v13, 0xe

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_15

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    goto/16 :goto_0

    :cond_16
    const/4 v12, -0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_17

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    goto/16 :goto_0

    :cond_17
    const/4 v12, -0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_1

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    :sswitch_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    :sswitch_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v5, :cond_4

    const-string v4, "WifiSettings"

    const-string v5, "Invalid network id "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    goto :goto_0

    :sswitch_2
    sget-boolean v4, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v4, "WifiSettings"

    const-string v5, "selectedConfig == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v4, 0xcb

    iput v4, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "netId"

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "reason"

    const/16 v5, 0xe

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    :sswitch_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v4, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    sget-boolean v4, Lcom/android/settings/wifi/WifiSettings;->WIFI_AUTOJOIN:Z

    if-eqz v4, :cond_0

    if-nez v2, :cond_6

    const-string v4, "WifiSettings"

    const-string v5, "selectedConfig == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autojoin val for selected AP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    :goto_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x47

    iput v4, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "netId"

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "autojoin"

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    :cond_7
    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0x15 -> :sswitch_5
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v3, :cond_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "firstRun"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiSecSetupActivity;

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiPickerDialog;

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiOffloadDialog;

    sput-boolean v3, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    sget v3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "wifi_settings_start_with"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->isDcm:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "com.samsung.android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mInSecPickerActivity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "extra_location_services"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "extra_location_services"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    :cond_3
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sput-boolean v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-nez v3, :cond_5

    sput-boolean v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsWifiScreen:Z

    :goto_0
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate : mIsWifiScreen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsWifiScreen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsbRetryPopup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_5
    sput-boolean v7, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsWifiScreen:Z

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    :cond_1
    const-string v2, "WifiSettings"

    const-string v4, "InSecPickerActivity : ignore context menu, in Help mode"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v0, p3

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/preference/Preference;

    move-object/from16 v0, v21

    instance-of v2, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_2

    check-cast v21, Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/16 v18, 0x0

    sget-boolean v2, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v18

    :cond_4
    const/4 v14, 0x0

    const-string v2, "security.mdpp"

    const-string v4, "None"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v2, "Enabled"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Enforcing"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v22

    if-eqz v22, :cond_7

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v2, :cond_7

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v15

    const/4 v2, 0x7

    if-eq v15, v2, :cond_6

    const/16 v2, 0x8

    if-ne v15, v2, :cond_7

    :cond_6
    const/4 v14, 0x1

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-nez v2, :cond_8

    if-nez v14, :cond_8

    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const v7, 0x7f0a035f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->WIFI_AUTOJOIN:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    const/16 v4, 0x15

    const/4 v5, 0x0

    const v7, 0x7f0a0361

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    move-object/from16 v0, v22

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_10

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_9
    :goto_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isEnterpriseNetwork"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "getAllowUserPolicyChanges"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v17, :cond_13

    if-eqz v13, :cond_13

    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "isEnterpriseNetwork"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "isEnterpriseNetwork"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "getAllowUserPolicyChanges"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    if-nez v18, :cond_b

    sget-boolean v2, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const v7, 0x7f0a0363

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    :goto_3
    if-eqz v17, :cond_c

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v13, :cond_d

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_d
    sget-boolean v2, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_e

    const/4 v2, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x0

    const v7, 0x7f0a0364

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_e
    if-nez v18, :cond_f

    const/4 v2, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const v7, 0x7f0a0365

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mNfcManager:Landroid/nfc/NfcManager;

    invoke-virtual {v2}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    if-nez v2, :cond_2

    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v22

    if-eqz v22, :cond_2

    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v2, :cond_2

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/16 v4, 0xb

    const/4 v5, 0x0

    const v7, 0x7f0a0366

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_12
    const/4 v2, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const v7, 0x7f0a0362

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    throw v2

    :cond_13
    if-nez v18, :cond_b

    const/4 v2, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const v7, 0x7f0a0362

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_0
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    new-instance v6, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object v8, p0

    move-object v9, v3

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    if-eqz v0, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLinkProperties:Landroid/net/LinkProperties;

    move-object v2, p0

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/AccessPoint;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSnsSettingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->getSnsSettingDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_8

    :cond_6
    const-string v0, "FTM"

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ORO"

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "IDE"

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "AMO"

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/WifiSnsSettingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->getSnsSettingDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSetupWizardDialog:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSetupWizardDialog:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->getWifiSnsSetupWizardDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "WifiSettings"

    const-string v1, "WIFI_WARNING_CA_CERT_DIALOG_ID show!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a03c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a03c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0166

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$25;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$25;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a04f0

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$24;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$24;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateView() -:- mSecSetupWizardMode ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b00c2

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchBar()V

    :cond_0
    return-void
.end method

.method public onHelpMenuPressed()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHelpMenuPressed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "helphub:section"

    const-string v4, "wifi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_3
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "helphub:appid"

    const-string v4, "wi_fi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public onInstallCertificateMenuPressed()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "install_as_uid"

    const/16 v2, 0x3f2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onIwlanMenuPressed()V
    .locals 13

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.lguplus.common.wificm.mwlan"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    const-string v10, "mwlan"

    const/4 v11, 0x4

    invoke-virtual {v5, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v10, "mwlan"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v10, "permission_allowed_2"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const/4 v4, 0x1

    :cond_0
    const-string v10, "permission_allowed_2"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v10, "mwlan_permission_allowed_2"

    invoke-interface {v1, v10, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a0325

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0051

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v10, 0x1

    if-ne v4, v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    new-instance v11, Lcom/android/settings/wifi/WifiSettings$22;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/WifiSettings$22;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0a0166

    new-instance v11, Lcom/android/settings/wifi/WifiSettings$23;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/WifiSettings$23;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mIwlanDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f040218

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v10, 0x7f1004a0

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a0326

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mIwlanDialog:Landroid/app/Dialog;

    check-cast v10, Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v2, v11, v12}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mIwlanDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    const/4 v10, 0x2

    goto :goto_1

    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method public onManageNetworkMenuPressed()V
    .locals 10

    const v3, 0x7f0a0354

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "manage_network"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWpsPushBtnPressed()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWpsPinBtnPressed()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onHelpMenuPressed()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/Settings$WifiP2pSettingsActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_5
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    goto :goto_0

    :sswitch_6
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onSmartNetworkSwitchPressed()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onManageNetworkMenuPressed()V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onSleepPolicyPressed()V

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAlwaysAllowScanningPressed()V

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onPasspointPressed()V

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWLANPermissionRequestPressed()V

    goto :goto_0

    :sswitch_e
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onInstallCertificateMenuPressed()V

    goto :goto_0

    :sswitch_f
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onResetMenuPressed()V

    goto :goto_0

    :sswitch_10
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onIwlanMenuPressed()V

    goto :goto_0

    :sswitch_11
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sprint.sco.itson.preference.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    const-string v3, "WifiSettings"

    const-string v4, "Itson SCO intent sent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x5 -> :sswitch_6
        0x6 -> :sswitch_8
        0x7 -> :sswitch_5
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_e
        0xf -> :sswitch_d
        0x10 -> :sswitch_3
        0x11 -> :sswitch_9
        0x13 -> :sswitch_c
        0x17 -> :sswitch_7
        0x18 -> :sswitch_f
        0x19 -> :sswitch_10
        0x1a -> :sswitch_11
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onP2pMenuPressed()V
    .locals 10

    const/4 v6, 0x0

    const v3, 0x7f0a035c

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onPasspointPressed()V
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_hotspot20_enable"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a02de

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    if-ne v2, v5, :cond_0

    :goto_0
    new-instance v6, Lcom/android/settings/wifi/WifiSettings$17;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/wifi/WifiSettings$17;-><init>(Lcom/android/settings/wifi/WifiSettings;I)V

    invoke-virtual {v0, v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0a0166

    new-instance v6, Lcom/android/settings/wifi/WifiSettings$18;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSettings$18;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040218

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f1004a0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a02e2

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointDialog:Landroid/app/Dialog;

    check-cast v5, Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1, v9, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a02e1

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    const-string v4, "WifiSettings"

    const-string v5, "WifiSettings onPause"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_settings_run_foreground"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x1a

    iput v4, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "enable"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "lock"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "WifiSettings"

    const-string v5, "mSkipScanAssocLock set false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/WifiDialog;->isFocusedView(Z)Z

    :cond_5
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    sget-boolean v4, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    sget-boolean v4, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v6

    if-ne v6, v5, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    instance-of v6, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_13

    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-nez v6, :cond_5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    const-string v6, "ssid"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "bssid"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "security"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "frequency"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v8, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return v5

    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    const-string v6, "ssid"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "bssid"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "security"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "frequency"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v8, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    goto/16 :goto_0

    :cond_5
    const-string v6, "T wifi zone_secure"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_6
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v6, v8, :cond_2

    :cond_7
    const-string v6, "VZW"

    sget-object v7, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_c

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v6, v9}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_1

    :cond_8
    const-string v6, "ollehWiFi"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    :cond_9
    const-string v6, "U+zone"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    :cond_a
    const-string v6, "U+zone_5G"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    :cond_b
    const-string v6, "5G_U+zone"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    :cond_c
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v6

    if-eq v6, v8, :cond_d

    const/4 v0, 0x1

    :goto_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v6, v9}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x0

    goto :goto_2

    :cond_e
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v6, v9}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_1

    :cond_f
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v6, v8, :cond_11

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    sget-boolean v6, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v6, :cond_10

    sput-boolean v5, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_10
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v6, "WifiSettings"

    const-string v7, "Ignore Illegal state exception here."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_11
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a04ef

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_12
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v6, "WifiSettings"

    const-string v7, "Ignore Illegal state exception here."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_1
.end method

.method public onResetMenuPressed()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0300

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0302

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$20;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$20;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$21;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$21;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mResetDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mResetDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onResume()V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    const-string v3, "WifiSettings"

    const-string v4, "WifiSettings onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_settings_run_foreground"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x4a

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "enable"

    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "lock"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "WifiSettings"

    const-string v4, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_3

    sput-boolean v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3, v8}, Lcom/android/settings/wifi/WifiDialog;->isFocusedView(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiDialog;->mCurrentFocusView:Landroid/widget/EditText;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiDialog;->mCurrentFocusView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiDialog;->mCurrentFocusView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/app/Activity;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    const v4, 0x7f100471

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_5
    sget v3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    if-eqz v3, :cond_8

    sget v3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->startWith(I)V

    sput v8, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->show()V

    goto/16 :goto_0

    :cond_7
    const-string v3, "WifiSettings"

    const-string v4, "[onResume], mDialog.mCurrentFocusView is null  !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkStartingDialogWithSettings()V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onScanMenuPressed()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_0
    return-void
.end method

.method public onShowButtonBackgroundChange(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const v1, 0x10809a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mBackgroundResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onSleepPolicyPressed()V
    .locals 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0349

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_sleep_policy"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v4, v2, -0x2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$9;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0166

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$10;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$10;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method onSmartNetworkSwitchPressed()V
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method public onStart()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    sput-boolean v5, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart() :: mLastState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart(), wifiNetworkInfo.isConnected() :: mLastInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiOffloadDialog;

    sput-boolean v3, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWLANPermissionRequestPressed()V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a00e6

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040253

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wlan_permission_available"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    if-ne v2, v4, :cond_0

    :goto_0
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$11;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$11;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0166

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$12;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$12;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mPermissionRequestDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mPermissionRequestDialog:Landroid/app/Dialog;

    check-cast v4, Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mPermissionRequestDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public onWpsPinBtnPressed()V
    .locals 3

    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->show()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->RemoveNotUsedWpsButton()V

    return-void
.end method

.method public onWpsPushBtnPressed()V
    .locals 3

    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->show()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->RemoveNotUsedWpsButton()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->loggingWps()V

    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    :cond_0
    return-void
.end method

.method public setSwitchBarInSetupWizard(Lcom/android/settings/widget/SwitchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-void
.end method

.method public showPasspointWarningDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a02e6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a02f3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0e5e

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$15;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSettings$15;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0166

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$16;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSettings$16;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public speakTTS()V
    .locals 4

    const v1, 0x7f0a04ee

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 5

    const/4 v3, -0x1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_4
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v3, :cond_6

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isRetryDialog()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-connect ap id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, ""

    const-string v3, "ollehWiFi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const/4 v0, 0x0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const-string v2, "WifiSettings"

    const-string v3, "caCert is null or empty!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v1, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0
.end method

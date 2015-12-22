.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field mAlertDlg:Landroid/app/AlertDialog;

.field private mAttentionView:Landroid/webkit/WebView;

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mDefaultSsidPwd:Ljava/lang/String;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mIsLightTheme:Z

.field private mIsRaceCondition:Z

.field private mMassStorageActive:Z

.field private mNcmEnabled:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetheredData:I

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/SwitchPreference;

.field private mUsbTetherEnabling:Z

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiApSettings:Landroid/preference/PreferenceScreen;

.field private mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private wifiAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/TetherSettings;->DBG:Z

    new-instance v0, Lcom/android/settings/TetherSettings$16;

    invoke-direct {v0}, Lcom/android/settings/TetherSettings$16;-><init>()V

    sput-object v0, Lcom/android/settings/TetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mIsLightTheme:Z

    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbTetherEnabling:Z

    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    iput v2, p0, Lcom/android/settings/TetherSettings;->mTetheredData:I

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/TetherSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/TetherSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/TetherSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/TetherSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/TetherSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/TetherSettings;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    move-object v0, p0

    array-length v5, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    move-object v1, p1

    array-length v6, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_2
    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->generateDefaultSSID()V

    :cond_0
    return-void
.end method

.method private static isProvisioningNeeded([Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    :cond_0
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v5, 0x7f0a06f7

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_tethering_enabled"

    if-ne p1, v3, :cond_3

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, p1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/settings/TetherSettings$15;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/TetherSettings$15;-><init>(Lcom/android/settings/TetherSettings;Z)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public static showInShortcuts(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5

    const/4 v4, 0x0

    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0

    :pswitch_1
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f0a00e0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f0a06fe

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const-string v3, "bluetooth.pan.tether_on"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21

    const/4 v6, 0x0

    move-object/from16 v4, p3

    array-length v12, v4

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v15, v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v13, v5

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v13, :cond_1

    aget-object v14, v5, v10

    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v6, 0x1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v9, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a00e1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_4
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v9, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a00e0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v9, v0, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const-string v18, "bluetooth.pan.tether_on"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    const v17, 0x7f0a0700

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a06ff

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_7
    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0702

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a06fe

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const-string v18, "bluetooth.pan.tether_on"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0701

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateState()V
    .locals 5

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0a0e2d

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v0, v4

    :goto_1
    const/4 v3, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "persist.sys.wifi_lock"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "wifi_lock.enabled"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-nez v0, :cond_5

    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isUsbTetheringEnabled"

    invoke-static {v4, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isBluetoothTetheringEnabled"

    invoke-static {v4, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_4
    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0a0e2e

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17

    const-string v15, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v15, :cond_1

    const/4 v11, 0x1

    :goto_0
    const/4 v12, 0x0

    move-object/from16 v1, p1

    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v9, v1, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v8, v2, v4

    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    if-nez v12, :cond_0

    invoke-virtual {v3, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v12

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    move-object/from16 v1, p2

    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_3
    if-ge v5, v6, :cond_9

    aget-object v9, v1, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_8

    aget-object v8, v2, v4

    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "usb"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    :cond_4
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "rndis"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_5
    const/4 v14, 0x1

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "ncm"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0a06fa

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    move-object/from16 v1, p3

    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_6
    if-ge v5, v6, :cond_c

    aget-object v9, v1, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v2

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v7, :cond_b

    aget-object v8, v2, v4

    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v13, 0x1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6

    :cond_c
    const-string v15, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    if-eqz v14, :cond_10

    const-string v15, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0a06f2

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_d
    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v15

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v15}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    :cond_e
    :goto_9
    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0a06f2

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    :cond_10
    if-eqz v11, :cond_13

    if-nez v12, :cond_12

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    if-nez v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0a06f1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    if-nez v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0a06f7

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_a

    :cond_13
    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0a06f7

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0a06f4

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0a06f5

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_9
.end method


# virtual methods
.method public generateDefaultSSID()V
    .locals 20

    const/4 v10, 0x0

    const-string v16, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    :cond_0
    if-nez v10, :cond_1

    const-string v10, ""

    :cond_1
    const-string v15, ""

    const-string v4, ""

    const-string v3, ""

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const v16, 0x7f0a0554

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x4

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v6

    :goto_1
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    aget-object v15, v9, v16

    goto/16 :goto_0

    :cond_5
    new-instance v12, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v12, v0, v1}, Ljava/util/Random;-><init>(J)V

    const/16 v16, 0x2327

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    move/from16 v0, v16

    add-int/lit16 v13, v0, 0x3e8

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v0, v8

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    :goto_4
    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_3

    const-string v16, "LAST4DIGIT"

    aget-object v17, v8, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    aget-object v16, v8, v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f0a0d49

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v1, "WifiAP_TetherSettings"

    const-string v2, "TetherSettings onActivityResult"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    if-ne p2, v4, :cond_3

    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    if-ne v1, v4, :cond_0

    iput v3, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    :cond_0
    const-string v1, "DCM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-static {v1, v2}, Lcom/android/settings/TetherService;->scheduleRecheckAlarm(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-ne v0, v5, :cond_5

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    :goto_2
    iput v4, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const-string v2, "bluetooth.pan.tether_on"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0551

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v11, "TETHER_TYPE"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    :cond_0
    const v11, 0x7f0700a4

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string v12, "no_config_tethering"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    instance-of v11, v11, Lcom/android/settings/Settings$TetherSettingsActivity;

    if-eqz v11, :cond_1

    const-string v11, "TetherSettings"

    const-string v12, "onCreate: DISALLOW_CONFIG_TETHERING > this activity is finished."

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0875

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v13, 0x5

    invoke-virtual {v1, v11, v12, v13}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    const v12, 0x7f0a06ea

    invoke-virtual {v11, v12}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_4
    :goto_1
    const-string v11, "wifi_ap_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const-string v11, "usb_tether_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const-string v11, "enable_bluetooth_tethering"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v11, v11

    if-eqz v11, :cond_6

    const/4 v9, 0x1

    :goto_2
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v11, v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, p0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    const-string v11, "TetherSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mWifiRegexs.length : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v6, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_8

    aget-object v8, v2, v5

    const-string v11, "TetherSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "debug : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    const v12, 0x7f0a06eb

    invoke-virtual {v11, v12}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    :cond_8
    const-string v11, "TetherSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ">>> wifiAvailable : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "VZW"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "SPRINT"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_9
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    :cond_a
    const-string v11, "TetherSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<<< wifiAvailable : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v11, v11

    if-eqz v11, :cond_e

    const/4 v3, 0x1

    :goto_5
    const-string v11, "wifi"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/16 v11, 0x15

    iput v11, v7, Landroid/os/Message;->what:I

    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    iput v11, p0, Lcom/android/settings/TetherSettings;->mTetheredData:I

    if-eqz v9, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v11

    if-nez v11, :cond_f

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_b
    :goto_6
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_c
    iget-boolean v11, p0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    if-eqz v11, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    :goto_7
    if-eqz v3, :cond_11

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_d
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const-string v12, "bluetooth.pan.tether_on"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070016

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7

    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_8
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13

    const/4 v9, 0x1

    if-ne p1, v9, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v9, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v9, v0, p0, v10}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    :goto_0
    return-object v2

    :cond_0
    const/16 v9, 0xa

    if-ne p1, v9, :cond_1

    const-string v9, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0a1530

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v9, 0x1e

    const/16 v10, 0x1e

    const/16 v11, 0x1e

    const/16 v12, 0x1e

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v9, 0x7f0a1531

    new-instance v10, Lcom/android/settings/TetherSettings$2;

    invoke-direct {v10, p0}, Lcom/android/settings/TetherSettings$2;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v6, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/settings/TetherSettings$3;

    invoke-direct {v10, p0}, Lcom/android/settings/TetherSettings$3;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v6, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v9, 0x4

    if-ne p1, v9, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ja"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v3, "ja"

    :goto_1
    const-string v7, ""

    const-string v9, "file:///android_asset/html/%y/tethering_attention.html"

    const-string v10, "%y"

    invoke-virtual {v9, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v9, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    instance-of v9, v5, Landroid/view/ViewGroup;

    if-eqz v9, :cond_2

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040014

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a07c0

    new-instance v11, Lcom/android/settings/TetherSettings$6;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$6;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a07c1

    new-instance v11, Lcom/android/settings/TetherSettings$5;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$5;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/settings/TetherSettings$4;

    invoke-direct {v10, p0}, Lcom/android/settings/TetherSettings$4;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    const-string v3, "en"

    goto :goto_1

    :cond_4
    const-string v9, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const/4 v9, 0x5

    if-ne p1, v9, :cond_6

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a045a

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a07c0

    new-instance v11, Lcom/android/settings/TetherSettings$7;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$7;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a06e7

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    const/16 v9, 0xd

    if-ne p1, v9, :cond_7

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a1533

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a07c0

    new-instance v11, Lcom/android/settings/TetherSettings$8;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$8;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a04b1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    const/16 v9, 0xc

    if-ne p1, v9, :cond_8

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a0430

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a07c0

    new-instance v11, Lcom/android/settings/TetherSettings$10;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$10;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a07c1

    new-instance v11, Lcom/android/settings/TetherSettings$9;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$9;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a04b1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const-string v9, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x6

    if-ne p1, v9, :cond_9

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a045a

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a07c0

    new-instance v11, Lcom/android/settings/TetherSettings$11;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$11;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a06e9

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helphub"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v1, :cond_2

    sget-boolean v2, Lcom/android/settings/TetherSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "TetherSettings"

    const-string v3, "onDestory:close profile proxy"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v6

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "helphub:section"

    const-string v4, "tethering_vzw"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v3, "helphub:section"

    const-string v4, "tethering"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "helphub:appid"

    const-string v4, "tethering"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100616
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 15

    const-string v12, "connectivity"

    invoke-virtual {p0, v12}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v12, :cond_0

    const-string v12, "wifi"

    invoke-virtual {p0, v12}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    iput-object v12, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    const-string v12, "phone"

    invoke-virtual {p0, v12}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    const-string v12, "enable_bluetooth_tethering"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v12, "device_policy"

    invoke-virtual {p0, v12}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v1, :cond_1

    const/4 v12, 0x2

    if-eq v0, v12, :cond_2

    :cond_1
    const-string v12, "TetherSettings"

    const-string v13, "Internet Sharing is restricted by MDM."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const-string v13, "bluetooth.pan.tether_on"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x104081a

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_2
    const-string v12, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    const/4 v13, 0x5

    if-eq v12, v13, :cond_3

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const-string v13, "bluetooth.pan.tether_on"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const/4 v12, 0x6

    invoke-virtual {p0, v12}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_5

    const/4 v12, 0x2

    invoke-direct {p0, v12}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    const/4 v12, 0x0

    goto :goto_0

    :cond_5
    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v10, v12}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v4, v2}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_7

    const/4 v7, 0x1

    :cond_7
    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    if-eqz v3, :cond_8

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    :cond_8
    if-eqz v7, :cond_9

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v13, 0x7f0a0702

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_9
    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v13, 0x7f0a0701

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_a
    const-string v12, "usb_tether_settings"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v12, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_b
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    const/4 v13, 0x5

    if-eq v12, v13, :cond_c

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const/4 v12, 0x5

    invoke-virtual {p0, v12}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_c
    const-string v12, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const/16 v12, 0xd

    invoke-virtual {p0, v12}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_d
    if-eqz v6, :cond_15

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const-string v13, "com.android.settings"

    const-string v14, "THER"

    invoke-static {v12, v13, v14}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v12, 0xa

    invoke-virtual {p0, v12}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_1

    :cond_e
    const-string v12, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    const-string v12, "MTR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    :cond_f
    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->getWifiDetailedState(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/16 v12, 0xc

    invoke-virtual {p0, v12}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_1

    :cond_10
    iget-boolean v12, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    if-nez v12, :cond_4

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_1

    :cond_11
    const-string v12, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_12

    const/4 v12, 0x3

    if-ne v11, v12, :cond_13

    :cond_12
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f0a04ec

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f0a04e9

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f0a07c0

    new-instance v14, Lcom/android/settings/TetherSettings$13;

    invoke-direct {v14, p0}, Lcom/android/settings/TetherSettings$13;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f0a07c1

    new-instance v14, Lcom/android/settings/TetherSettings$12;

    invoke-direct {v14, p0}, Lcom/android/settings/TetherSettings$12;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/settings/TetherSettings$14;

    invoke-direct {v13, p0}, Lcom/android/settings/TetherSettings$14;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_13
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_1

    :cond_14
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_1

    :cond_15
    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    :cond_16
    invoke-direct {p0, v6}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-boolean v5, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x1020004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    if-eqz v2, :cond_0

    const v5, 0x7f0a0875

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v5, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    new-instance v5, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "file"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v0, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x17

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    const-string v5, "TetherSettings"

    const-string v6, "set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    const-string v1, "TetherSettings"

    const-string v2, "set Discoverable mode to SCAN_MODE_CONNECTABLE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

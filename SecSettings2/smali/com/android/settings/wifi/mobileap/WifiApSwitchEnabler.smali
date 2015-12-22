.class public Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;,
        Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private bDisableMifi:Z

.field private intentReceiver:Landroid/content/Intent;

.field private isSetChecked:Z

.field private mActivity:Ljava/lang/Object;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field private mChangeState:Z

.field mCm:Landroid/net/ConnectivityManager;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

.field private mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

.field private mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsAirplaneMode:Z

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mNoSimDialog:Landroid/app/AlertDialog;

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mTetherHandler:Landroid/os/Handler;

.field private mWarnRoam:Landroid/app/AlertDialog;

.field mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

.field private mWarningDialog:Landroid/app/AlertDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private warnWifiDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchbar()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings/wifi/WifiApDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->disableWifiDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterSsidDialog()V

    return-void
.end method

.method private afterAttentionDialog()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterSsidDialog()V

    goto :goto_0
.end method

.method private afterSsidDialog()V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "TMO"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NEWCO"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v2, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    const-string v1, "WifiApSwitchEnabler"

    const-string v2, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->disableWifiDialog()V

    :cond_2
    return-void
.end method

.method private disableWifiDialog()V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const-string v2, "TMO"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NEWCO"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isP2pConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiApSwitchEnabler"

    const-string v3, "WiFi p2p is connected. Create dailog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-eq v1, v6, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiIBSSState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiIBSSState()I

    move-result v2

    if-ne v2, v4, :cond_6

    :cond_5
    const-string v2, "WifiApSwitchEnabler"

    const-string v3, "WifiApswitch ibss is connected. Create dailog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "WifiApSwitchEnabler"

    const-string v3, "WiFi p2p on. Create dailog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_0
.end method

.method private enableWifiCheckBox()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    const-string v0, "MTR"

    const-string v3, "TMO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a13a2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->finish()V

    goto :goto_1
.end method

.method private getRvfMode()I
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 4

    const v0, 0x7f0a0334

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    const v0, 0x7f0a04bd

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->procHelpCtrl(Z)V

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    const v0, 0x7f0a04be

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->procHelpCtrl(Z)V

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private initSwitchEnabler()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    const-string v0, "MTR"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    const-string v0, "SPRINT"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0a04b7

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    return-void
.end method

.method private isDualModeSlot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isDualSlotAllOff()Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "gsm.sim.state"

    const-string v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "CDMA"

    invoke-static {v5}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-ne v5, v7, :cond_0

    const-string v5, "3"

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    array-length v5, v1

    if-le v5, v7, :cond_2

    const-string v5, "3"

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "3"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2

    :cond_3
    array-length v5, v4

    if-ne v5, v7, :cond_4

    const-string v5, "READY"

    aget-object v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    array-length v5, v4

    if-le v5, v7, :cond_2

    const-string v5, "READY"

    aget-object v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "READY"

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isDualSlotAndSLot1Off()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "gsm.sim.state"

    const-string v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "CDMA"

    invoke-static {v5}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v5, "3"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v5, "READY"

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isLTEMode()Z
    .locals 5

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isLTEMode() network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isP2pConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isProvisioningCheck()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiApSwitchEnabler"

    const-string v2, "Skip isProvisioningCheck"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->sendSetChecked(Z)V

    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    const-string v0, "WifiApSwitchEnabler"

    const-string v2, "Skip isProvisioningCheck - DPM"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto :goto_0

    :cond_2
    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isOpenWifiApAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "isOpenWifiApAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WifiApSwitchEnabler"

    const-string v2, "Skip isProvisioningCheck - Wifi Policy"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isSimCheck()Z
    .locals 2

    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWifiApBlocked()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v0, "persist.sys.wifi_lock"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "wifi_lock.enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    if-nez v7, :cond_2

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isWifiTetheringEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isWifiTetheringEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    if-nez v7, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_4
    :goto_0
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v1, "WifiApSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi is connected to AP and wifiInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private preProvisioning()V
    .locals 9

    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v3, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimCheck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MTR"

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v7, :cond_4

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "READY"

    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAllOff()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v7, :cond_8

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAllOff()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_8
    const-string v3, "VZW"

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    if-ne v3, v8, :cond_9

    if-eqz v0, :cond_9

    const-string v3, "us"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private procHelpCtrl(Z)V
    .locals 3

    const-string v0, "WifiApSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procHelpCtrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-interface {v0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;->show(Z)V

    goto :goto_0
.end method

.method private setRvfMode(I)V
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1b

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private setSummary(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showProgress(Z)V
    .locals 3

    const-string v0, "WifiApSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgress is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    :cond_0
    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TETHER_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0, v3}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 13

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_5
    if-eqz v11, :cond_7

    iget-object v12, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    if-eqz v10, :cond_6

    const v12, 0x7f0a0334

    invoke-direct {p0, v12}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public dismissDialog(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    :cond_1
    return-void

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getStaNum()I
    .locals 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STANUM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public initSwitchbar()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method isProvisioningNeeded()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningCheck()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    if-eqz p2, :cond_4

    const-string v0, "USC"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ACG"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "persist.sys.wifi_lock"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi_lock.enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    if-eqz v0, :cond_6

    const-string v1, "USC"

    const-string v3, "TMO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ACG"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismissSpinnerPopup()V

    goto :goto_0
.end method

.method public saveIsShowPassword()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

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

.method public secSetSoftapEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "DCM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getStaNum()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public sendSetChecked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 2

    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "setInformation: SettingsPreferenceFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    return-void
.end method

.method public setSoftapEnabled(Z)Z
    .locals 13

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    :goto_0
    return v7

    :cond_0
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p1, :cond_4

    if-eq v6, v10, :cond_1

    if-eq v6, v11, :cond_1

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    if-eq v6, v10, :cond_2

    if-ne v6, v11, :cond_3

    :cond_2
    const-string v9, "wifi_saved_state"

    invoke-static {v1, v9, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v10, 0x258

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getRvfMode()I

    move-result v9

    if-lez v9, :cond_5

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setRvfMode(I)V

    const-string v9, "WifiApSwitchEnabler"

    const-string v10, "setRvfMode(0) for Hotspot configuration"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_5

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v12, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v10, 0x258

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    const-string v9, "WifiApSwitchEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Check airplane mode once again: on ? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz v9, :cond_6

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_6
    const-string v9, "WifiApSwitchEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSoftapEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v9

    if-eqz v9, :cond_7

    sput-boolean v8, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    const-string v9, "WifiApSwitchEnabler"

    const-string v10, "Provisioning succeeded."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiConnected()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_8
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v12, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    if-eqz p1, :cond_9

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    const/16 v9, 0x4d

    iput v9, v4, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v9, "feature"

    const-string v10, "HOTS"

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "extra"

    const-string v10, "mobile"

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_9
    :goto_3
    if-eqz p1, :cond_c

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v12}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v9, :cond_a

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->sendSetChecked(Z)V

    :cond_a
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_b
    const v9, 0x7f0a0334

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_3

    :cond_c
    if-nez p1, :cond_d

    const/4 v5, 0x0

    :try_start_2
    const-string v9, "wifi_saved_state"

    invoke-static {v1, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    :goto_4
    if-ne v5, v8, :cond_d

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v9, "wifi_saved_state"

    invoke-static {v1, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    move v7, v8

    goto/16 :goto_0

    :catch_2
    move-exception v9

    goto :goto_4
.end method

.method public showDialog(I)V
    .locals 29

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0a04cb

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0900ae

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    const/high16 v23, 0x41800000    # 16.0f

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v23, 0x1e

    const/16 v24, 0x1e

    const/16 v25, 0x1e

    const/16 v26, 0x1e

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v23, 0x40000000    # 2.0f

    const/high16 v24, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v23, 0x7f0a04b6

    new-instance v24, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v23, 0x7f0a07c1

    new-instance v24, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v23, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0900d2

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0a045a

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v23, 0x7f0a07c0

    new-instance v24, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v23, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v23, 0x7f0a0459

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0a04bf

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v23, 0x7f0a07c0

    new-instance v24, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v23, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v23, 0x7f0a045b

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_3
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a0491

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "$20.48"

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v23, v0

    const v24, 0x7f0a076c

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v23, v0

    const v24, 0x7f0a0490

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_4
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v21, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0a0430

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c0

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c1

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a0431

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_6
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0a0446

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c0

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c1

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a04b1

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f04025e

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "ja"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    const-string v11, "ja"

    :goto_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<a href=\"http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".html\">"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f0a04b3

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "</a>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".html"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const v23, 0x7f100589

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v23, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c0

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$19;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$19;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c1

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$17;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$17;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x1040014

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_1
    const-string v11, "en"

    goto/16 :goto_2

    :pswitch_8
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0a04b4

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c0

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c1

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$20;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$20;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a045b

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_9
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0a04b5

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c0

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$25;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$25;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c1

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a06e8

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_a
    const-string v23, "WifiApSwitchEnabler"

    const-string v24, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v23, Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    invoke-direct/range {v23 .. v26}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/wifi/WifiApDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/WifiApDialog;->show()V

    goto/16 :goto_0

    :pswitch_b
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0a0437

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c0

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$29;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$29;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c1

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$28;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$28;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a04b1

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_c
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0a03fe

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c0

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$32;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$32;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a07c1

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$31;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$31;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$30;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$30;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f0a04b1

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x10404d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0a054e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.class public Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static final DBG:Z

.field private static MAX_CLIENTS:I

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field private static backOffState:I

.field static currentMccMnc:Ljava/lang/String;

.field private static mGateTraceTag:Ljava/lang/String;

.field private static final mHotspotActionForSimStatus:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z

.field public static mIsHelpFromTetherSettings:Z

.field public static mIsHelpFromWifiApSettings:Z

.field public static mIsProvisioningResultOk:Z

.field private static mLastClientNum:I


# instance fields
.field private mIsDeviceATT:Z

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    const-string v0, "GATE"

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    sput-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    sput-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    sput-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    sput-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromWifiApSettings:Z

    sput v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    sput-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    sput-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    sput v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    sput v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigHotSpotActionForSimStatus"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3

    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "600"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Provisioning.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 9

    const-string v6, "WifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const-string v6, "extra_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v6, "req_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/4 v6, 0x4

    if-ne p2, v6, :cond_2

    if-nez v2, :cond_0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    :cond_0
    const/16 v6, 0xc

    if-eq v5, v6, :cond_3

    const/16 v6, 0xd

    if-eq v5, v6, :cond_3

    add-int v6, v0, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    const/4 v6, 0x4

    if-eq v0, v6, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v6, 0x5

    if-ne p2, v6, :cond_5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_1

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1

    :cond_3
    :goto_1
    const-string v6, "statusbar"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v6, Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "wifiap_warning_dialog_type"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "req_type"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "extra_type"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const/16 v6, 0x32

    if-ne p2, v6, :cond_6

    :cond_6
    const/16 v6, 0xc

    if-eq v5, v6, :cond_7

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    :cond_7
    const-string v6, "WifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1
.end method

.method private startHotspotProvisioningRequest(Landroid/content/Context;I)V
    .locals 3

    const-string v1, "WifiApBroadcastReceiver"

    const-string v2, "startHotspotProvisioningRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 2

    sget-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method clearTimeoutNotification(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0a0426

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 40

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "onReceive: action "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_1

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "action is null"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v35, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    const-string v35, "wifi_state"

    const/16 v36, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v35, 0x0

    sput v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v35

    if-eqz v35, :cond_2

    sget-object v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v36, "<GATE-M> WIFI_HOTSPOT_UNCHECKED </GATE-M>"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v35, "hotspot"

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    const-string v35, ""

    const-string v36, "vold.encrypt_progress"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    const-string v35, "phone"

    invoke-static/range {v35 .. v35}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    const-string v35, "ril.backoffstate"

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v35

    sput v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    sget v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    move/from16 v0, v35

    and-int/lit16 v0, v0, 0xfb

    move/from16 v35, v0

    sput v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "WIFI_AP_STATE_DISABLED, backOffState = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v12

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "RemoteException occurs in setTransmitPower"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v35

    if-eqz v35, :cond_3

    sget-object v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v36, "<GATE-M> WIFI_HOTSPOT_CHECKED </GATE-M>"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v35, "hotspot"

    const/16 v36, 0x1

    invoke-static/range {v35 .. v36}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    const-string v35, ""

    const-string v36, "vold.encrypt_progress"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    const-string v35, "phone"

    invoke-static/range {v35 .. v35}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    const-string v35, "ril.backoffstate"

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v35

    sput v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    sget v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    move/from16 v0, v35

    and-int/lit16 v0, v0, 0xfb

    move/from16 v35, v0

    or-int/lit8 v35, v35, 0x4

    sput v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "WIFI_AP_STATE_ENABLED, backOffState = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    sget v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    const-string v35, "ATT"

    const-string v36, "TMO"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    :cond_5
    const-string v35, "VZW"

    const-string v36, "TMO"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    :try_start_2
    const-string v35, "wifi_ap_saved_state"

    move-object/from16 v0, v35

    invoke-static {v11, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    const/16 v35, 0x1

    sput-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    const-string v35, "wifi_ap_saved_state"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_b

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v35, v0

    if-nez v35, :cond_7

    const-string v35, "SAMSUNG_HOTSPOT"

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v35, v0

    const-string v36, "PROVISIONING_RESULT"

    const/16 v37, 0x0

    invoke-interface/range {v35 .. v37}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "value of provisioning result is  and flag value "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "  "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-boolean v37, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_b

    sget-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-nez v35, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v35

    if-nez v35, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    move/from16 v35, v0

    if-nez v35, :cond_b

    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v35

    const/16 v36, 0xd

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_8

    if-nez v31, :cond_a

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "Provisioning is failed, start provisioning once again"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v35, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v35, v0

    if-nez v35, :cond_9

    const-string v35, "SAMSUNG_HOTSPOT"

    const/16 v36, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v35, "PROVISIONING_RESULT"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :catch_1
    move-exception v12

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "RemoteException occurs in setTransmitPower"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "Setting the mIsProvisioningResultOk flag  to false"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto :goto_3

    :cond_b
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto :goto_3

    :cond_c
    const-string v35, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    new-instance v21, Landroid/os/Message;

    invoke-direct/range {v21 .. v21}, Landroid/os/Message;-><init>()V

    const/16 v35, 0x4d

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v35, "feature"

    const-string v36, "HOTS"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v35, "extra"

    const-string v36, "Hotspot_conn"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    :cond_d
    const-string v35, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_17

    const-string v35, "wifiap_power_mode_alarm_option"

    const/16 v36, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    :try_start_3
    const-string v35, "wifi_ap_plugged_type"

    move-object/from16 v0, v35

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v27

    :goto_4
    const-string v35, "TMO"

    const-string v36, "TMO"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_e

    const-string v35, "NEWCO"

    const-string v36, "TMO"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_f

    :cond_e
    if-nez v27, :cond_0

    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v29

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "ALARM_START : set "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " sec"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v29, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v38, v0

    add-long v14, v36, v38

    new-instance v6, Landroid/content/Intent;

    const-string v35, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v35

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v35, "wifiap_power_mode_alarm_option"

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v35, 0x0

    const/high16 v36, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    const-string v35, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v14, v15, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    const/16 v35, 0x1

    sput-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    :catch_2
    move-exception v12

    const/16 v27, 0x0

    goto/16 :goto_4

    :cond_10
    sget-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v35, :cond_11

    new-instance v6, Landroid/content/Intent;

    const-string v35, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v35

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v35, "wifiap_power_mode_alarm_option"

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v35, 0x0

    const/high16 v36, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    const-string v35, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_11
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    :cond_12
    const/16 v35, 0x4

    move/from16 v0, v23

    move/from16 v1, v35

    if-ne v0, v1, :cond_13

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "WIFIAP_POWER_MODE_VALUE_CHANGED, mLastClientNum = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v35, :cond_0

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_13
    const/16 v35, 0x1

    move/from16 v0, v23

    move/from16 v1, v35

    if-ne v0, v1, :cond_16

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "ALARM_EXPIRE"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/16 v35, 0x1

    sput-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    const-string v35, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/PowerManager;

    const/16 v35, 0x1

    const-string v36, "MobileAPCloseService"

    move-object/from16 v0, v28

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v32

    const/16 v33, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v29

    new-instance v21, Landroid/os/Message;

    invoke-direct/range {v21 .. v21}, Landroid/os/Message;-><init>()V

    const/16 v35, 0x3

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->what:I

    const/16 v22, 0x0

    :try_start_5
    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v22

    :goto_6
    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "powermode_value = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v22, :cond_15

    const/16 v35, 0xd

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_15

    if-eqz v29, :cond_15

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "--> ap disable"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string v35, "ATT"

    const-string v36, "TMO"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showTimeoutNotification(Landroid/content/Context;)V

    :cond_14
    :try_start_6
    const-string v35, "wifi_saved_state"

    move-object/from16 v0, v35

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_a

    move-result v33

    :goto_7
    const/16 v35, 0x1

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_15

    const-wide/16 v36, 0x258

    :try_start_7
    invoke-static/range {v36 .. v37}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v35, "wifi_saved_state"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_15
    if-eqz v16, :cond_0

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    const/16 v16, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v12

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_4
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_6

    :catch_5
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    :catch_6
    move-exception v12

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Cannot release wake lock ~~"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    const/16 v35, 0x2

    move/from16 v0, v23

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "ALARM_STOP"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v35, :cond_0

    sget-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v35, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v35, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v35

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v35, "wifiap_power_mode_alarm_option"

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v35, 0x0

    const/high16 v36, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    const-string v35, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    :cond_17
    const-string v35, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_19

    const-string v35, "wifiap_plug_state_changed_option"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_18

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "Unplugged"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v32

    const/16 v35, 0xd

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    sget v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v35, :cond_0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_18
    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "Plugged"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v35, :cond_0

    sget-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v35, :cond_0

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_19
    const-string v35, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1f

    const-string v35, "NUM"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "ClientNum from WIFI_AP_STA_STATUS_CHANGED_ACTION = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v4, :cond_1a

    const/4 v4, 0x0

    :cond_1a
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v35

    if-eqz v35, :cond_1b

    sget v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v35

    if-le v4, v0, :cond_1d

    sget-object v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v36, "<GATE-M> WIFI_HOTSPOT_CONNECTED </GATE-M>"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_9
    if-nez v4, :cond_1e

    sget v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-eqz v35, :cond_1e

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    :cond_1c
    :goto_a
    sput v4, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    :cond_1d
    sget v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v35

    if-ge v4, v0, :cond_1b

    sget-object v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v36, "<GATE-M> WIFI_HOTSPOT_DISCONNECTED </GATE-M>"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_1e
    if-lez v4, :cond_1c

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_a

    :cond_1f
    const-string v35, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_20

    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_20
    const-string v35, "com.samsung.settings.WIFI_AP_SEC_SETTINGS"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_21

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_21
    const-string v35, "com.samsung.intent.action.MIP_ERROR"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_22

    const-string v35, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_22

    const-string v35, "com.samsung.android.intent.action.TETHERING_FAILED"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_26

    :cond_22
    const-string v35, "SPRINT"

    const-string v36, "TMO"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_0

    const-string v35, "com.samsung.intent.action.MIP_ERROR"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_23

    const-string v35, "CODE"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "mipErrorCode : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v20, :cond_0

    const-string v35, "67"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_23
    const-string v35, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_24

    const/16 v35, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_24
    sget-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v35, :cond_25

    const-string v35, "Provisioning.disable"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "1"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_0

    :cond_25
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_26
    const-string v35, "com.samsung.android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_27

    const/16 v35, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_27
    const-string v35, "com.samsung.android.intent.action.WIFI_P2P_ENABLE_WARNING"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_28

    :cond_28
    const-string v35, "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_29

    const/16 v35, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_29
    const-string v35, "SPRINT"

    const-string v36, "TMO"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2e

    const-string v35, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2e

    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v32

    const/16 v35, 0xc

    move/from16 v0, v32

    move/from16 v1, v35

    if-eq v0, v1, :cond_2a

    const/16 v35, 0xd

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    :cond_2a
    const-string v35, "phoneName"

    const/16 v36, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Receive android.intent.action.RADIO_TECHNOLOGY, phoneType = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v35, "phone"

    invoke-static/range {v35 .. v35}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    const/16 v19, 0xa

    const/16 v35, 0x1

    move/from16 v0, v26

    move/from16 v1, v35

    if-ne v0, v1, :cond_2c

    :try_start_9
    const-string v35, "chameleon_gsmmaxuser"

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v19

    :cond_2b
    :goto_b
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v35, v0

    move/from16 v0, v19

    move/from16 v1, v35

    if-ge v0, v1, :cond_2d

    :goto_c
    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "maxClientNum = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v21, Landroid/os/Message;

    invoke-direct/range {v21 .. v21}, Landroid/os/Message;-><init>()V

    const/16 v35, 0xe

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v35, "maxClient"

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v21

    iput-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    :cond_2c
    const/16 v35, 0x2

    move/from16 v0, v26

    move/from16 v1, v35

    if-ne v0, v1, :cond_2b

    :try_start_a
    const-string v35, "chameleon_maxuser"

    move-object/from16 v0, v35

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_a} :catch_7

    move-result v19

    goto :goto_b

    :catch_7
    move-exception v12

    const/16 v19, 0xa

    goto :goto_b

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v19, v0

    goto :goto_c

    :cond_2e
    sget-object v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    if-eqz v35, :cond_2f

    sget-object v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    const-string v36, "turn off"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2f

    const-string v35, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2f

    const-string v35, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Recieve Sim State Changed : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v35, "IMSI"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    const-string v35, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    const-string v35, "WifiApBroadcastReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "INTENT_VALUE_ICC_IMSI changed mccmnc old = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " ,  new = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v35

    sput-object v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :cond_2f
    const-string v35, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_30

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "WIFI_AP_DRIVER_STATE_HANGED"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v35

    const/16 v36, 0xd

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v36, 0x258

    :try_start_b
    invoke-static/range {v36 .. v37}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_8

    :goto_d
    const/16 v35, 0x1

    sput-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-virtual/range {v34 .. v36}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :catch_8
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_d

    :cond_30
    const-string v35, "com.samsung.android.intent.action.WIFIAP_RESET"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_31

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "Received Skip Provision and Reset intent from SoftApStateMachine"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    const/16 v35, 0x1

    sput-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    new-instance v21, Landroid/os/Message;

    invoke-direct/range {v21 .. v21}, Landroid/os/Message;-><init>()V

    const/16 v35, 0xc5

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->what:I

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    :cond_31
    const-string v35, "com.samsung.intent.action.SETTINGS_SOFT_NETWORK_RESET"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_32

    const-string v35, "ATT"

    const-string v36, "TMO"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_32

    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v35

    if-eqz v35, :cond_0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "Mobile AP turned off"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_32
    const-string v35, "com.samsung.intent.action.PROVISION_DIALOG_DISMISSED"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    const/16 v33, 0x0

    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "wifi_saved_state"

    invoke-static/range {v35 .. v36}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_c .. :try_end_c} :catch_9

    move-result v33

    :goto_e
    const/16 v35, 0x1

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    const-string v35, "WifiApBroadcastReceiver"

    const-string v36, "Need to enabled Wifi since provision dialog got dismissed in onPause"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "wifi_saved_state"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :catch_9
    move-exception v35

    goto :goto_e

    :catch_a
    move-exception v35

    goto/16 :goto_7

    :catch_b
    move-exception v35

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method showTimeoutNotification(Landroid/content/Context;)V
    .locals 9

    const v8, 0x7f0a0426

    const/4 v6, 0x0

    const v1, 0x108008a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v1, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.class public Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WiFiHotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_AP_STATE:Ljava/lang/String; = "wifi_state"

.field private static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field private static final INFO_TYPE_DPM_HOTSPOT:I = 0x3

.field private static final KEY_LAST_USED_DATE:Ljava/lang/String; = "lastUsedDate"

.field private static final KNOX_MODE_USER_ID:I = 0x64

.field private static final MILLIS_PER_DAY:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "HotspotTile"

.field private static final WIFIAP_ENABLE_WARNING:Ljava/lang/String; = "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

.field private static final WIFI_AP_SAVED_STATE:Ljava/lang/String; = "wifi_ap_saved_state"

.field private static final WIFI_AP_STATE_DISABLED:I = 0xb

.field private static final WIFI_AP_STATE_ENABLED:I = 0xd

.field private static final WIFI_AP_STATE_FAILED:I = 0xe

.field private static final WIFI_DIALOG_ENABLING_HOTSPOT:I = 0x2

.field private static final WIFI_SAVED_STATE:Ljava/lang/String; = "wifi_saved_state"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field private final mCallback:Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private mDefaultSSIDPwd:Ljava/lang/String;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mErrorMsgResId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

.field private final mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Lcom/android/systemui/qs/tiles/WiFiHotspotTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    new-instance v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    new-instance v0, Lcom/android/systemui/qs/UsageTracker;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    const v3, 0x7f0f0046

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/UsageTracker;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    new-instance v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/ToddlerModeSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/ToddlerModeSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->setMode(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->generateDefaultSSID(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showWarningDialog(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateTetherState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method private dimClick()V
    .locals 0

    return-void
.end method

.method private generateDefaultSSID(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 18

    const/4 v8, 0x0

    const-string v3, ""

    const-string v2, ""

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v8

    :cond_0
    if-nez v8, :cond_1

    const-string v8, ""

    :cond_1
    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d049b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x4

    const/16 v17, 0x4

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v6

    :goto_1
    new-instance p2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object/from16 v0, p2

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p2

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string v15, "WPA2/PSK"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "WPA/PSK"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x9

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_3
    :goto_2
    const-string v15, "WPA2/PSK"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v15

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    const/4 v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :goto_4
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v2, v14, v15

    goto/16 :goto_0

    :cond_5
    new-instance v11, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v11, v0, v1}, Ljava/util/Random;-><init>(J)V

    const/16 v15, 0x2327

    invoke-virtual {v11, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    add-int/lit16 v12, v15, 0x3e8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v15, v13

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x9

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    :goto_5
    array-length v15, v13

    if-ge v5, v15, :cond_3

    const-string v15, "LAST4DIGIT"

    aget-object v16, v13, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    aget-object v15, v13, v5

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_9
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    :cond_a
    const-string v15, ""

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual/range {p1 .. p2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_4
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 3

    const v2, 0x7f020833

    const v1, 0x7f020825

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v0, :cond_0

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    :goto_0
    return-void

    :cond_0
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v0, :cond_2

    const v0, 0x7f020826

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :cond_2
    const v0, 0x7f020834

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v0, :cond_3

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :cond_3
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v0, :cond_4

    const v0, 0x7f020824

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :cond_4
    const v0, 0x7f020832

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotUSA:Z

    if-eqz v2, :cond_0

    const-string v2, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mWifiRegexs:[Ljava/lang/String;

    return-void

    :cond_0
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "HotspotTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isP2PConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v4, "HotspotTile"

    const-string v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isMSim()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HotspotTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimReady(): MSIM enabledsim # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getReadySimCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isMSim()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isMSim()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getReadySimCount()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const-string v3, "HotspotTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iput v9, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotUSA:Z

    if-eqz v3, :cond_1

    if-ne p1, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "HotspotTile"

    const-string v4, "send WIFIAP_ENABLE_WARNING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v4, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    if-ne v2, v9, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_saved_state"

    invoke-static {v1, v3, p1, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v3, "wifi_ap_saved_state"

    invoke-static {v1, v3, p1, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    if-ne p1, v4, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v0, v6, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_saved_state"

    invoke-static {v3, v6, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    new-instance v4, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$5;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    const-wide/16 v6, 0x258

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/systemui/qs/QSTile$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_1
.end method

.method private showAttentionDialog(Z)V
    .locals 15

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v12, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    const v13, 0x7f0400f1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iget-object v12, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ja"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v2, "ja"

    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0d0495

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<p>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</p>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0d0496

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<br>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<a href=\"http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".html\">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0d0497

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</a>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".html"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v12, 0x7f0e0444

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v12, 0x7f0e0445

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v12, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$10;

    invoke-direct {v12, p0, v3}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$10;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v12, Landroid/app/AlertDialog$Builder;

    iget-object v13, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x1040014

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x104000a

    new-instance v14, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$13;

    invoke-direct/range {v14 .. v16}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$13;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const/high16 v13, 0x1040000

    new-instance v14, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$12;

    invoke-direct {v14, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$12;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$11;

    invoke-direct {v13, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$11;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$14;

    invoke-direct {v13, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$14;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v12, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v12}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v12, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v12}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v7, 0x1

    :goto_2
    if-eqz v6, :cond_5

    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v12, :cond_4

    if-eqz v7, :cond_4

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d8

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    :cond_1
    :goto_3
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_2
    const-string v2, "en"

    goto/16 :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d9

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    goto :goto_3

    :cond_5
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d8

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    goto :goto_3
.end method

.method private showBatteryUsageWarningDialog(Z)V
    .locals 7

    const/16 v6, 0x7d8

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0499

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0498

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$16;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$16;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$15;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$15;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$18;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$18;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private showWarningDialog(Z)V
    .locals 8

    const/16 v7, 0x7d8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const v3, 0x7f0d0493

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0492

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$7;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$6;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_4

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private updateState(I)V
    .locals 2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iput p1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V

    return-void
.end method

.method private updateTetherState(Landroid/content/Intent;)V
    .locals 17

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v14, "activeArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const-string v14, "erroredArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    move-object v1, v3

    array-length v8, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v10, v1, v7

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mWifiRegexs:[Ljava/lang/String;

    array-length v9, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v11, v2, v6

    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v13, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    :cond_2
    move-object v1, v4

    array-length v8, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v10, v1, v7

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mWifiRegexs:[Ljava/lang/String;

    array-length v9, v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_4

    aget-object v11, v2, v6

    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v5, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    :cond_5
    if-eqz v13, :cond_6

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    :cond_6
    const-string v14, "HotspotTile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateTetherState():"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActionMessageOnCover()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getActionTypeOnCover()I
    .locals 11

    const/4 v10, -0x1

    const/4 v6, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "false"

    aput-object v8, v2, v7

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v9, "isWifiTetheringEnabled"

    invoke-static {v7, v8, v9, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v9, "isSettingsChangesAllowed"

    invoke-static {v7, v8, v9, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v1, v10, :cond_1

    if-eq v0, v10, :cond_1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v5, "HotspotTile"

    const-string v6, "onClick(): WiFiHotspot state change is not allowed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x1040b36

    iput v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    :goto_0
    return v4

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v7}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v7

    if-eqz v7, :cond_2

    const v5, 0x7f0d03fb

    iput v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    goto :goto_0

    :cond_2
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v7}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_3

    const v5, 0x7f0d03fc

    iput v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isSimReady()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_5

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v5, :cond_4

    const v5, 0x7f0d03dd

    iput v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    goto :goto_0

    :cond_4
    const v5, 0x7f0d03db

    iput v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    goto :goto_0

    :cond_5
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotUSA:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v6, :cond_6

    move v4, v5

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v6, :cond_7

    const-string v4, "DCM"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v6, :cond_9

    move v4, v5

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-eq v4, v5, :cond_9

    move v4, v5

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v5, :cond_a

    move v4, v6

    goto/16 :goto_0

    :cond_a
    move v4, v5

    goto/16 :goto_0
.end method

.method protected handleClick()V
    .locals 15

    const-string v13, "HotspotTile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleClick : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v12, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v12, v12, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v13, "HotspotTile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleClick isCoveredState : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v12, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v12, v12, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v12, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v12, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v12, v12, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    const-string v12, "DCM"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showAttentionDialog(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v12, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v12, v12, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showBatteryUsageWarningDialog(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v12, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v12, v12, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    :goto_1
    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showWarningDialog(Z)V

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    const/4 v12, 0x3

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v12, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v12, v12, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    :goto_2
    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->setMode(I)V

    goto :goto_0

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    :cond_7
    const/4 v12, 0x1

    new-array v9, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "false"

    aput-object v13, v9, v12

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v13, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v14, "isWifiTetheringEnabled"

    invoke-static {v12, v13, v14, v9}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v13, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v14, "isSettingsChangesAllowed"

    invoke-static {v12, v13, v14, v9}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v12, -0x1

    if-eq v3, v12, :cond_9

    const/4 v12, -0x1

    if-eq v2, v12, :cond_9

    if-eqz v3, :cond_8

    if-nez v2, :cond_9

    :cond_8
    const-string v12, "HotspotTile"

    const-string v13, "onClick(): WiFiHotspot state change is not allowed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v13, 0x1040b36

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_9
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v12, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v12, v12, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a

    const/4 v10, 0x1

    :goto_3
    const-string v12, "HotspotTile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleClick : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v12, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v12, v12, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->dimClick()V

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    goto :goto_3

    :cond_b
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v12}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v13, 0x7f0d03fb

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_c
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v12}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const v13, 0x7f0d03fc

    invoke-virtual {v12, v13}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(I)V

    goto/16 :goto_0

    :cond_d
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v12, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v12

    if-nez v12, :cond_0

    :cond_e
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isSimReady()Z

    move-result v12

    if-nez v12, :cond_15

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_15

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_f

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v12

    if-nez v12, :cond_0

    :cond_f
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v12, :cond_11

    const v12, 0x7f0d0571

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0d0573

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_4
    const v12, 0x104000a

    new-instance v13, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$2;

    invoke-direct {v13, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v12}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v12}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v12

    if-eqz v12, :cond_12

    const/4 v5, 0x1

    :goto_5
    if-eqz v4, :cond_14

    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v12, :cond_13

    if-eqz v5, :cond_13

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d8

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    :cond_10
    :goto_6
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$3;

    invoke-direct {v13, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$3;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    :cond_11
    const v12, 0x7f0d0571

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0d0572

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_12
    const/4 v5, 0x0

    goto :goto_5

    :cond_13
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d9

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    goto :goto_6

    :cond_14
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d8

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    goto :goto_6

    :cond_15
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotUSA:Z

    if-eqz v12, :cond_17

    const/4 v12, 0x3

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    if-eqz v10, :cond_16

    const/4 v12, 0x1

    :goto_7
    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->setMode(I)V

    const-string v12, "HotspotTile"

    const-string v13, "set as mMobileHotspotUSA"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    const/4 v12, 0x0

    goto :goto_7

    :cond_17
    const/4 v12, 0x1

    if-ne v10, v12, :cond_18

    const-string v12, "DCM"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showAttentionDialog(Z)V

    goto/16 :goto_0

    :cond_18
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    if-eqz v10, :cond_1b

    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showBatteryUsageWarningDialog(Z)V

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1b

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v12, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v12, v12, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1a

    const/4 v12, 0x1

    :goto_8
    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showWarningDialog(Z)V

    goto/16 :goto_0

    :cond_1a
    const/4 v12, 0x0

    goto :goto_8

    :cond_1b
    const/4 v12, 0x3

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    if-eqz v10, :cond_1c

    const/4 v12, 0x1

    :goto_9
    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->setMode(I)V

    goto/16 :goto_0

    :cond_1c
    const/4 v12, 0x0

    goto :goto_9
.end method

.method protected handleDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "true"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v5, "isWifiTetheringEnabled"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v1, v7, :cond_1

    if-eq v0, v7, :cond_1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v3, "HotspotTile"

    const-string v4, "onClick(): WiFiHotspot state change is not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v4, 0x1040b36

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const v4, 0x7f0d03fc

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03fb

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotSetting:Z

    if-eqz v3, :cond_4

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d03c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    const v0, 0x7f0d039f

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mJPNLabelType:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d03c5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    const v0, 0x7f0d03a0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    :cond_1
    :goto_0
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_0
    const v2, 0x7f0d0387

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v2, 0x7f0d0388

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v2, 0x7f0d0389

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public userSwitch(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/ToddlerModeSetting;->userSwitched(I)V

    :cond_0
    return-void
.end method

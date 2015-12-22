.class public Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final REASON_USB30:Ljava/lang/String; = "airplane_mode_on_reason_usb3"

.field private static final TAG:Ljava/lang/String; = "AirplaneModeTile"

.field private static final sSupportMovialWFC:Z

.field private static final sSupportSecEPDG:Z

.field private static final sSupportSecWFC:Z


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertShowing:Z

.field private mClickedTime:J

.field private mIsWaitingForEcmExit:Z

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneCount:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecWFC:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportMovialWFC:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecEPDG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z

    iput v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on_reason_usb3"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecEPDG:Z

    return v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecWFC:Z

    return v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportMovialWFC:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/systemui/qs/tiles/AirplaneModeTile;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mClickedTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/hardware/usb/UsbManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method private getPhoneId(I)I
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)V

    return-object v0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f020792

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f020793

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020791

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 4

    const/4 v2, 0x1

    const-string v1, "AirplaneModeTile"

    const-string v3, "init"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->registerPhoneStateListener(Landroid/content/Context;)V

    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    return-void

    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private isDataCapable(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method public static isSimCardInserted(I)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_1
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    move v5, v4

    goto :goto_0

    :pswitch_0
    aget-object v2, v0, v5

    goto :goto_1

    :pswitch_1
    aget-object v2, v0, v4

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSupportVoLte()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isVoiceCapable()Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    const-string v3, "AirplaneModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_0

    aget v1, v2, v6

    const-string v3, "AirplaneModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I

    aput v6, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setEnabled(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    return-void
.end method

.method private showConfirmCheckboxPopup(ZZ)V
    .locals 18

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v16, 0x7f0400e0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v15, 0x7f0e042d

    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v15, 0x7f0e042e

    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    new-instance v15, Lcom/android/systemui/qs/tiles/AirplaneModeTile$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$9;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v6, v15}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v15, :cond_0

    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v15}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v15}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v7, 0x1

    :cond_0
    :goto_0
    const/4 v14, -0x1

    if-eqz p1, :cond_9

    const v14, 0x7f0d04bf

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v15, :cond_1

    const v14, 0x7f0d04c1

    :cond_1
    :goto_1
    const/4 v12, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isVoiceCapable()Z

    move-result v15

    if-nez v15, :cond_b

    const v12, 0x7f0d04c4

    :goto_2
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v15, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSupportVoLte()Z

    move-result v15

    if-eqz v15, :cond_e

    const v12, 0x7f0d03ee

    :cond_2
    :goto_3
    const/4 v11, -0x1

    if-eqz v7, :cond_f

    const v11, 0x7f0d04d8

    :goto_4
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-nez v15, :cond_3

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v15, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    if-eqz p1, :cond_5

    if-nez v4, :cond_6

    :cond_5
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_6
    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_10

    :goto_5
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(I)V

    const/4 v13, -0x1

    if-eqz v7, :cond_11

    if-nez p1, :cond_11

    const v13, 0x1040947

    :goto_6
    new-instance v15, Lcom/android/systemui/qs/tiles/AirplaneModeTile$10;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v1, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$10;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;ZLandroid/widget/CheckBox;)V

    invoke-virtual {v3, v13, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v15, 0x1040000

    new-instance v16, Lcom/android/systemui/qs/tiles/AirplaneModeTile$11;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$11;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v16, Lcom/android/systemui/qs/tiles/AirplaneModeTile$12;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$12;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v15}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v15}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v15

    if-eqz v15, :cond_14

    const/4 v9, 0x1

    :goto_7
    if-eqz v8, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d9

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_9
    if-eqz v7, :cond_a

    const v14, 0x7f0d04d9

    goto/16 :goto_1

    :cond_a
    const v14, 0x7f0d04c0

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    const v12, 0x7f0d04c2

    goto/16 :goto_2

    :cond_c
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v15, :cond_d

    const v12, 0x7f0d04c5

    goto/16 :goto_2

    :cond_d
    const v12, 0x7f0d0506

    goto/16 :goto_2

    :cond_e
    const v12, 0x7f0d03f0

    goto/16 :goto_3

    :cond_f
    const v11, 0x7f0d04c3

    goto/16 :goto_4

    :cond_10
    move v12, v11

    goto/16 :goto_5

    :cond_11
    if-eqz p1, :cond_13

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v15, :cond_12

    const v13, 0x7f0d000f

    goto/16 :goto_6

    :cond_12
    const v13, 0x10407e9

    goto/16 :goto_6

    :cond_13
    const v13, 0x10407e8

    goto/16 :goto_6

    :cond_14
    const/4 v9, 0x0

    goto :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d8

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    goto :goto_8
.end method

.method private showConfirmPopup(Z)V
    .locals 9

    const v6, 0x7f0d04c3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const v5, 0x7f0d04bf

    :goto_0
    const/4 v4, 0x0

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v7, :cond_6

    if-eqz p1, :cond_5

    const v4, 0x1040a19

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isVoiceCapable()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_a

    const v4, 0x7f0d04c4

    :cond_0
    :goto_2
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowFlightModePopup:Z

    if-eqz v6, :cond_1

    const v5, 0x7f0d04bf

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v5, 0x7f0d04bf

    :cond_1
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v6}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v6

    if-eqz v6, :cond_2

    const v5, 0x7f0d04d9

    const v4, 0x7f0d04d8

    const/4 v0, 0x1

    :cond_2
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    if-eqz v0, :cond_b

    const v6, 0x1040947

    :goto_3
    new-instance v8, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    invoke-virtual {v7, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v6}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v6}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v2, 0x1

    :goto_4
    if-eqz v1, :cond_e

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    :cond_3
    :goto_5
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_4
    const v5, 0x7f0d04c0

    goto/16 :goto_0

    :cond_5
    move v4, v6

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz p1, :cond_7

    const v4, 0x7f0d04c2

    :goto_6
    goto/16 :goto_1

    :cond_7
    move v4, v6

    goto :goto_6

    :cond_8
    if-eqz p1, :cond_9

    const v4, 0x7f0d0506

    :goto_7
    goto/16 :goto_1

    :cond_9
    move v4, v6

    goto :goto_7

    :cond_a
    const v4, 0x1040945

    goto/16 :goto_2

    :cond_b
    if-eqz p1, :cond_c

    const v6, 0x10407e9

    goto/16 :goto_3

    :cond_c
    const v6, 0x10407e8

    goto/16 :goto_3

    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    :cond_e
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_5
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActionTypeOnCover()I
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowFlightModePopup:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tw_globalactions_dont_show_again"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public handleClick()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mClickedTime:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x1f4

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    const-string v5, "AirplaneModeTile"

    const-string v6, "handleClick() ignored. within 500ms"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mClickedTime:J

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v9, "isAirplaneModeAllowed"

    invoke-static {v5, v8, v9, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v9, "isSettingsChangesAllowed"

    invoke-static {v5, v8, v9, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eq v2, v12, :cond_3

    if-eq v3, v12, :cond_3

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    const-string v5, "AirplaneModeTile"

    const-string v6, "onClick(): AirplaneMode state change is not allowed by EDM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_4
    const-string v8, "AirplaneModeTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleClick : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", mSetting.getValue()="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v9}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v5, v13, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-eq v5, v6, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_0

    :cond_6
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v5, :cond_e

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tw_globalactions_dont_show_again"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_7

    move v5, v6

    :goto_1
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(ZZ)V

    goto/16 :goto_0

    :cond_7
    move v5, v7

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_9

    move v7, v6

    :cond_9
    invoke-direct {p0, v7, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(ZZ)V

    goto/16 :goto_0

    :cond_a
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_b

    :goto_2
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_b
    move v6, v7

    goto :goto_2

    :cond_c
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_d

    :goto_3
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmPopup(Z)V

    goto/16 :goto_0

    :cond_d
    move v6, v7

    goto :goto_3

    :cond_e
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowFlightModePopup:Z

    if-nez v5, :cond_f

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v5, :cond_13

    :cond_f
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tw_globalactions_dont_show_again"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_10

    :goto_4
    invoke-direct {p0, v6, v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(ZZ)V

    goto/16 :goto_0

    :cond_10
    move v6, v7

    goto :goto_4

    :cond_11
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_12

    :goto_5
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_12
    move v6, v7

    goto :goto_5

    :cond_13
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_14

    :goto_6
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_14
    move v6, v7

    goto :goto_6
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 7

    const/4 v6, -0x1

    const-string v4, "AirplaneModeTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLongClick : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v5, "isAirplaneModeAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v0, v6, :cond_1

    if-eq v1, v6, :cond_1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v3, "AirplaneModeTile"

    const-string v4, "handleLongClick(): Setting access is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v3, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d0386

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0385

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0d0389

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

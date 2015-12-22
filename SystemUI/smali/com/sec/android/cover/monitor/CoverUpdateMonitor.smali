.class public Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.super Ljava/lang/Object;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;,
        Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    }
.end annotation


# static fields
.field private static final MSG_BATTERY_LOW:I = 0x132

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_CHANGE_COVER_BACKGROUND:I = 0x13a

.field private static final MSG_CONFIGURATION_CHANGED:I = 0x135

.field private static final MSG_CONTENT_CHANGED:I = 0x141

.field private static final MSG_COVER_APP_COVERED:I = 0x14b

.field private static final MSG_COVER_DELAYED_TIMEOUT:I = 0x149

.field private static final MSG_COVER_STATE_CHANGED:I = 0x13f

.field private static final MSG_DATE_FORMAT_CHANGED:I = 0x142

.field private static final MSG_DISASTER_VIEW_UPDATE:I = 0x137

.field private static final MSG_EMERGENCY_STATE_CHANGED:I = 0x140

.field private static final MSG_FLOATING_MSG_HIDED:I = 0x13c

.field private static final MSG_FLOATING_MSG_SHOWED:I = 0x13b

.field private static final MSG_FONT_THEME_CHANGED:I = 0x148

.field private static final MSG_HOME_CITY_CHANGED:I = 0x12f

.field private static final MSG_INSERT_SPEN:I = 0x139

.field private static final MSG_LOCALE_CHANGED:I = 0x134

.field private static final MSG_OPEN_THEME_CHANGED:I = 0x14a

.field private static final MSG_PACKAGE_ADDED:I = 0x146

.field private static final MSG_PACKAGE_CHANGED:I = 0x147

.field private static final MSG_PACKAGE_REMOVED:I = 0x145

.field private static final MSG_PICKUP_COMMON_DAY:I = 0x144

.field private static final MSG_PICKUP_FESTIVAL_DAY:I = 0x143

.field private static final MSG_POWERSAVING_MODE_CHANGED:I = 0x138

.field private static final MSG_POWER_CONNECTION_UPDATE:I = 0x133

.field private static final MSG_REMOTE_VIEW_UPDATED:I = 0x136

.field private static final MSG_SCREEN_TURNED_OFF:I = 0x131

.field private static final MSG_SCREEN_TURNED_ON:I = 0x130

.field private static final MSG_SERVICE_STATE_CHANGED:I = 0x14c

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final MSG_USER_SWITCHED:I = 0x13e

.field private static final MSG_VOLUME_CHANGED:I = 0x13d

.field private static final TAG:Ljava/lang/String; = "CoverUpdateMonitor"

.field private static sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# instance fields
.field private mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCoverStateClone:Lcom/samsung/android/cover/CoverState;

.field private mCurrentThemePkgName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mInitiallyRegistContentUriList:[Landroid/net/Uri;

.field private mIsNetworkRoaming:Z

.field private final mRegisteredContentUriSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrIntentActionList:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    new-instance v7, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$1;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$1;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    const/16 v7, 0x20

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "android.intent.action.TIME_TICK"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "android.intent.action.TIME_SET"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "android.intent.action.TIMEZONE_CHANGED"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "android.intent.action.DATE_CHANGED"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "android.intent.action.SCREEN_ON"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "android.intent.action.SCREEN_OFF"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "android.intent.action.BATTERY_LOW"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "android.intent.action.LOCALE_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    const-string v9, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "android.settings.POWERSAVINGMODE_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    const-string v9, "android.settings.POWERSAVING_MODE_SWITCH_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "com.samsung.pen.INSERT"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    const-string v9, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "com.sec.android.sviewcover.CHANGE_MINI_COVER_BACKGROUND"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    const-string v9, "com.bst.floatingmsg.quicktalkshow"

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "com.bst.floatingmsg.quicktalkhide"

    aput-object v9, v7, v8

    const/16 v8, 0x15

    const-string v9, "android.media.VOLUME_CHANGED_ACTION"

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "android.intent.action.USER_SWITCHED"

    aput-object v9, v7, v8

    const/16 v8, 0x17

    const-string v9, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0x18

    const-string v9, "clock.date_format_changed"

    aput-object v9, v7, v8

    const/16 v8, 0x19

    const-string v9, "com.bst.action.PICKUP_FESTIVAL"

    aput-object v9, v7, v8

    const/16 v8, 0x1a

    const-string v9, "com.bst.action.PICKUP_COMMON"

    aput-object v9, v7, v8

    const/16 v8, 0x1b

    const-string v9, "dualclock.homecity_timezone"

    aput-object v9, v7, v8

    const/16 v8, 0x1c

    const-string v9, "com.samsung.cover.DELAYED_TIMEOUT"

    aput-object v9, v7, v8

    const/16 v8, 0x1d

    const-string v9, "FONT_THEME_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0x1e

    const-string v9, "com.samsung.android.theme.themecenter.THEME_APPLY"

    aput-object v9, v7, v8

    const/16 v8, 0x1f

    const-string v9, "android.intent.action.SERVICE_STATE"

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mStrIntentActionList:[Ljava/lang/String;

    const/4 v7, 0x7

    new-array v7, v7, [Landroid/net/Uri;

    const/4 v8, 0x0

    const-string v9, "time_12_24"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "content://settings/system/date_format"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "dualclock_menu_settings"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "torch_light"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "festival_effect_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "homecity_timezone"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mInitiallyRegistContentUriList:[Landroid/net/Uri;

    new-instance v7, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;

    invoke-direct {v7, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;

    invoke-direct {v7, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "CoverUI"

    const-string v8, "create CoverUpdateMonitor"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/content/Intent;)V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    new-instance v7, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v7}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mStrIntentActionList:[Ljava/lang/String;

    array-length v4, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "package"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mInitiallyRegistContentUriList:[Landroid/net/Uri;

    array-length v4, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v6, v1, v2

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerContentObserver(Landroid/net/Uri;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleDisasterViewUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePowerSavingModeChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleInsertSPen(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleChangeCoverBackground()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleFloatingMsgShowed()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleFloatingMsgHided()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleVolumeChanged()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleUserSwitched(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleEmergencyStateChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryUpdate(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleDateFormatChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePickupFestivalDay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePickupCommonDay()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleHomeCityChanged()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleThemeFontUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverDelayedTimout(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleOpenThemeUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverAppCovered(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleServiceStateChanged()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryLow()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePowerConnectionUpdate(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleLocaleChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleConfigurationChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    return-object v0
.end method

.method private handleBatteryLow()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onBatteryLow()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleBatteryUpdate(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    invoke-static {v4, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->isBatteryUpdateInteresting(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)Z

    move-result v0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v5

    :cond_2
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private handleChangeCoverBackground()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onChangeCoverBackground()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleConfigurationChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onConfigurationChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleContentChanged(Landroid/net/Uri;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onContentChanged(Landroid/net/Uri;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleCoverAppCovered(Z)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverAppCovered(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleCoverDelayedTimout(I)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverDelayedTimout(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleDateFormatChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onDateFormatChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleDisasterViewUpdate(Ljava/lang/String;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onDisasterViewUpdated(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleEmergencyStateChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onEmergencyStateChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleFloatingMsgHided()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onFloatingMsgHided()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleFloatingMsgShowed()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onFloatingMsgShowed()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleHomeCityChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onHomeCityChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleInsertSPen(Z)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onInsertSPen(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleLocaleChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onLocaleChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleOpenThemeUpdate(Ljava/lang/String;)V
    .locals 6

    const-string v3, "CoverUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleOpenThemeUpdate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onOpenThemeChanged(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlePackageAdded(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/android/cover/custom/MontblancCoverController;->onPackageUpdated(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPackageAdded(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePackageChanged(Ljava/lang/String;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPackageChanged(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePackageRemoved(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/android/cover/custom/MontblancCoverController;->onPackageUpdated(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPackageRemoved(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePickupCommonDay()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPickupCommonDay()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePickupFestivalDay(Ljava/lang/String;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPickupFestivalDay(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePowerConnectionUpdate(Z)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPowerConnectionUpdate(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePowerSavingModeChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPowerSavingModeChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleScreenTurnedOff()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onScreenTurnedOff()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleScreenTurnedOn()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onScreenTurnedOn()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleServiceStateChanged()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mIsNetworkRoaming:Z

    if-eq v4, v3, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mIsNetworkRoaming:Z

    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mIsNetworkRoaming:Z

    invoke-virtual {v0, v4}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRoamingStateChanged(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v5

    :cond_2
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private handleThemeFontUpdate(Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onThemeFontChanged(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onTimeChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleUserSwitched(II)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onUserSwitched(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleVolumeChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onVolumeChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static isBatteryUpdateInteresting(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_4
    iget v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-nez v5, :cond_5

    iget v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-nez v5, :cond_0

    :cond_5
    iget v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->batteryOnline:I

    iget v6, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->batteryOnline:I

    if-ne v5, v6, :cond_0

    move v3, v4

    goto :goto_1
.end method

.method private sendUpdates(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onTimeChanged()V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onOpenThemeChanged(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mIsNetworkRoaming:Z

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRoamingStateChanged(Z)V

    return-void
.end method


# virtual methods
.method public notifyCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, p1, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, p1, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIIIZI)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13f

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCoverAppCovered(Z)V
    .locals 4

    const-string v1, "CoverUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverAppCovered() covered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V
    .locals 6

    const-string v1, "CoverUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string v1, "CoverUpdateMonitor"

    const-string v3, "Object tried to add another callback"

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Called by"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v2

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendUpdates(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized registerContentObserver(Landroid/net/Uri;Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V
    .locals 4

    const-string v1, "CoverUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

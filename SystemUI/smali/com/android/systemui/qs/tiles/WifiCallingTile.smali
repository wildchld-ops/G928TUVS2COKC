.class public Lcom/android/systemui/qs/tiles/WifiCallingTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;
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
.field private static final TW_TAG:Ljava/lang/String; = "WifiCallingTile"


# instance fields
.field private isRegistered:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsProcessing:Z

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingWifiCall:Lcom/android/systemui/qs/GlobalSetting;

.field private mStateLocal:Z

.field private mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isRegistered:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsProcessing:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "wifi_call_enable"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingWifiCall:Lcom/android/systemui/qs/GlobalSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->init()V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForTMO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingWifiCall:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getMode()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForTMO:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegister(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    move-result-object v0

    sget-object v6, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    if-ne v0, v6, :cond_1

    move v1, v4

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForORANGE:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_call_enable"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_call_preferred"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v2, :cond_3

    move v1, v5

    :goto_1
    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1
.end method

.method private init()V
    .locals 5

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForTMO:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForORANGE:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_wifi_call_enable_broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingWifiCall:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    goto :goto_0
.end method

.method private setMode(Z)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForTMO:Z

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz p1, :cond_1

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    :goto_0
    invoke-static {v4, v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    goto :goto_0

    :cond_2
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForORANGE:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_call_enable"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_call_preferred"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_3

    move v5, v3

    :goto_2
    if-eq v0, v5, :cond_0

    if-eqz p1, :cond_4

    move v0, v3

    :goto_3
    const-string v3, "WifiCallingTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendIntent set wfcEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", wfcPreferred : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "action_wifi_call_enable_broadcast"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "wifi_call_enable"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "wifi_call_preferred"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_call_enable"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3
.end method


# virtual methods
.method protected handleClick()V
    .locals 9

    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleClick : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v8, :cond_0

    :goto_0
    return-void

    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v1, v3

    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "true"

    aput-object v4, v2, v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v4, v6, v7, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-nez v0, :cond_1

    const-string v4, "WifiCallingTile"

    const-string v5, "onClick(): Wifi calling  state change is not allowed by EDM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    move v3, v5

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsProcessing:Z

    if-eqz v4, :cond_3

    const-string v4, "WifiCallingTile"

    const-string v5, "handleClick(): Processing..."

    invoke-static {v4, v5}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsProcessing:Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setMode(Z)V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForTMO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected handleLongClick()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleLongClick : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v2, v7

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "true"

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v4, v5, v6, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-nez v1, :cond_1

    const-string v4, "WifiCallingTile"

    const-string v5, "onLongClick(): setting access is not allowed ny EDM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForTMO:Z

    if-eqz v4, :cond_2

    :try_start_0
    const-string v4, "com.samsung.tmowfc.wfcpref"

    const-string v5, "com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "WifiCallingTile"

    const-string v5, "Cannot find WfcSettings!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForORANGE:Z

    if-eqz v4, :cond_0

    :try_start_1
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.callsettings.WifiCallActivity"

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "WifiCallingTile"

    const-string v5, "Cannot find WifiCallActivity!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 7

    const v6, 0x7f02082c

    const v5, 0x7f020828

    const v4, 0x7f020811

    const v3, 0x7f0207c7

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForMTR:Z

    if-eqz v1, :cond_1

    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v1, :cond_2

    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForTMO:Z

    if-eqz v1, :cond_3

    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_3
    iput v6, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_4
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForMTR:Z

    if-eqz v1, :cond_5

    const v1, 0x7f0207c8

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v1, :cond_6

    const v1, 0x7f020829

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForTMO:Z

    if-eqz v1, :cond_7

    const v1, 0x7f020812

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_7
    const v1, 0x7f02082d

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :pswitch_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForMTR:Z

    if-eqz v1, :cond_8

    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_8
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v1, :cond_9

    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_9
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForTMO:Z

    if-eqz v1, :cond_a

    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_a
    iput v6, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :pswitch_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForMTR:Z

    if-eqz v1, :cond_b

    const v1, 0x7f0207c6

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_b
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v1, :cond_c

    const v1, 0x7f020827

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_c
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForTMO:Z

    if-eqz v1, :cond_d

    const v1, 0x7f020810

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_d
    const v1, 0x7f02082b

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public userSwitch(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;->onChange(Z)V

    return-void
.end method

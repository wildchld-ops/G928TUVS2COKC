.class public Lcom/android/systemui/qs/tiles/DormantModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DormantModeTile.java"


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
.field private static final DB_ALLOW_EXCEPTION:Ljava/lang/String; = "dnd_allowexception"

.field private static final DB_CAR_MODE_ON:Ljava/lang/String; = "car_mode_on"

.field private static final DB_DORMANT_SWITCH_ONOFF:Ljava/lang/String; = "dormant_switch_onoff"

.field private static final DORMANTMODE_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_dormantmode_checked"

.field private static final MSG_ZEN_MODE_AVAILABLE_CHANGED:I = 0xb

.field private static final MSG_ZEN_MODE_CHANGED:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DormantModeTile"

.field private static final TAG_INTERRUPTS:Ljava/lang/String; = "InterruptsTile"


# instance fields
.field private isRegistered:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mCarmodeObserver:Landroid/database/ContentObserver;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mHandlerInterrupt:Landroid/os/Handler;

.field private mIsCarMode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenMode:I

.field private mZenModeAvailable:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->isRegistered:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/DormantModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandlerInterrupt:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/DormantModeTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/DormantModeTile$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$10;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    new-instance v0, Lcom/android/systemui/qs/tiles/DormantModeTile$11;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile$11;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mCarmodeObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandlerInterrupt:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenModeAvailable:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenMode:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "car_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "car_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mCarmodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->updateState()V

    return-void

    :cond_0
    iput v3, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenMode:I

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/DormantModeTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandlerInterrupt:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/tiles/DormantModeTile;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenMode:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/DormantModeTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/qs/tiles/DormantModeTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DormantModeTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DormantModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DormantModeTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/DormantModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/DormantModeTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DormantModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/systemui/qs/tiles/DormantModeTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenModeAvailable:Z

    return p1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 3

    const v2, 0x7f0207be

    const v1, 0x7f0207ba

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0207bb

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0207bf

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    return-void

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private isAllOptionsDisabled()Z
    .locals 9

    const/4 v8, -0x2

    const/4 v5, 0x0

    const-string v6, "ro.build.characteristics"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dormant_disable_incoming_calls"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dormant_disable_notifications"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dormant_disable_alarm_and_timer"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dormant_disable_led_indicator"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_0

    const-string v6, "tablet"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mDeleteLEDBlocking:Z

    if-eqz v6, :cond_2

    :cond_1
    const/4 v3, 0x0

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DormantModeTile;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DormantModeTile;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/4 v2, 0x0

    :cond_4
    if-nez v2, :cond_5

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    if-nez v3, :cond_5

    const/4 v5, 0x1

    :cond_5
    return v5
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onDisplayDormantModeAlert()V
    .locals 11

    const/16 v10, 0x7d8

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v7, 0x7f0400d8

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f0e041b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    new-instance v7, Lcom/android/systemui/qs/tiles/DormantModeTile$4;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/qs/tiles/DormantModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d03e4

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/qs/tiles/DormantModeTile$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/systemui/qs/tiles/DormantModeTile$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$6;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0e041a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d03e2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/qs/tiles/DormantModeTile$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$7;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    :goto_0
    if-eqz v4, :cond_3

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v7, :cond_2

    if-eqz v5, :cond_2

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/Window;->setType(I)V

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private setEnabled(Z)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showConfirmPopup()V
    .locals 8

    const/16 v7, 0x7d8

    const/4 v3, 0x0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x1040014

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d03e5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/qs/tiles/DormantModeTile$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$9;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/systemui/qs/tiles/DormantModeTile$8;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$8;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mConfirmDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_3

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private showToast(I)V
    .locals 9

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400f6

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0d033e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f020248

    :goto_1
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v4, Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/16 v6, 0xbb8

    invoke-virtual {v4, v6}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0d033f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f020249

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateState()V
    .locals 3

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->refreshState(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getActionTypeOnCover()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public handleClick()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "DormantModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

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

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v4, v5, v6, v2}, Lcom/android/systemui/qs/tiles/DormantModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4, v7}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tiles/DormantModeTile;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dnd_allowexception"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4, v8}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    :goto_1
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/DormantModeTile;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenModeAvailable:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 5

    const-string v2, "DormantModeTile"

    const-string v3, "handleLongClick "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "true"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_0

    const-string v2, "DormantModeTile"

    const-string v3, "handleLongClick: Setting access is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$ZenModeDNDSettingsActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/DormantModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d039e

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DormantModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public userSwitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    :cond_0
    return-void
.end method

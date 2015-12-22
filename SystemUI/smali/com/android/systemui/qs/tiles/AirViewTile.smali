.class public Lcom/android/systemui/qs/tiles/AirViewTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AirViewTile.java"


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
.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field private static final AIR_MODE_MASTER_OFF:I = 0x0

.field private static final AIR_MODE_MASTER_ON:I = 0x1

.field private static final AUTO_AIR_MODE:I = 0x2

.field private static DB_AIR_VIEW:Ljava/lang/String; = null

.field private static final FINGER_AIR_MODE:I = 0x1

.field private static final PEN_AIR_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AirViewTile"

.field private static final URI_AIR_VIEW_MODE:Ljava/lang/String; = "air_view_mode"

.field private static mAirViewType:I


# instance fields
.field private isMagnificationEnabled:Z

.field private final mAirViewMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;

.field private final mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mAirViewMode:I

.field private mAirViewModeSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mAirViewState:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsProcessing:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mPenDettachedState:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mIsProcessing:Z

    new-instance v3, Lcom/android/systemui/qs/tiles/AirViewTile$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/AirViewTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->getAirViewModeType()I

    move-result v3

    sput v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v1, :cond_3

    const-string v3, "finger_air_view"

    sput-object v3, Lcom/android/systemui/qs/tiles/AirViewTile;->DB_AIR_VIEW:Ljava/lang/String;

    :cond_0
    :goto_0
    new-instance v3, Lcom/android/systemui/qs/tiles/AirViewTile$2;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    sget-object v6, Lcom/android/systemui/qs/tiles/AirViewTile;->DB_AIR_VIEW:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/AirViewTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    new-instance v3, Lcom/android/systemui/qs/tiles/AirViewTile$3;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "accessibility_display_magnification_enabled"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/AirViewTile$3;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;

    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v7, :cond_1

    new-instance v3, Lcom/android/systemui/qs/tiles/AirViewTile$4;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "air_view_mode"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/AirViewTile$4;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewModeSetting:Lcom/android/systemui/qs/SystemSetting;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mPenDettachedState:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->init()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->refreshState(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewState:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->isMagnificationEnabled:Z

    return-void

    :cond_3
    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v0, :cond_4

    const-string v3, "pen_hovering"

    sput-object v3, Lcom/android/systemui/qs/tiles/AirViewTile;->DB_AIR_VIEW:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v7, :cond_0

    const-string v3, "air_view_master_onoff"

    sput-object v3, Lcom/android/systemui/qs/tiles/AirViewTile;->DB_AIR_VIEW:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/AirViewTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mPenDettachedState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/AirViewTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirViewTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/AirViewTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewState:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/AirViewTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SecureSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/tiles/AirViewTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->isMagnificationEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewModeSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/qs/tiles/AirViewTile;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    return p1
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    return v0
.end method

.method private enableAirViewAndInforPreview(Z)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_highlight"

    if-eqz p1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view_information_preview"

    if-eqz p1, :cond_2

    :goto_2
    invoke-static {v1, v4, v2, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private getAirViewModeType()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f02078c

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
    const v0, 0x7f02078d

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f02078b

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

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    sget v1, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private setDBvalues(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    if-ne p1, v4, :cond_3

    iget v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mIsProcessing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirViewTile;->setDBvalues(I)V

    :cond_0
    return-void
.end method

.method private showConfirmPopup()V
    .locals 8

    const/16 v7, 0x7d8

    const/4 v3, 0x0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x1040014

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d03e9

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/qs/tiles/AirViewTile$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/AirViewTile$6;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/systemui/qs/tiles/AirViewTile$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/AirViewTile$5;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    sget v4, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d03ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

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

    :goto_0
    if-eqz v0, :cond_4

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public doNext()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->removeEnabledScreenReaderValue()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->isMagnificationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllFingerOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V

    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllPenOptionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->refreshState(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/AirViewTile;->setMode(I)V

    goto :goto_0
.end method

.method public doPrevious()V
    .locals 0

    return-void
.end method

.method public handleClick()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "AirViewTile"

    const-string v6, "handleClick()"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v3, v9, :cond_3

    move v2, v4

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v3, v6, v7}, Lcom/android/systemui/qs/tiles/AirViewTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isAirViewModeAllowed"

    invoke-static {v3, v6, v7}, Lcom/android/systemui/qs/tiles/AirViewTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v1, v8, :cond_4

    if-eq v0, v8, :cond_4

    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const-string v3, "AirViewTile"

    const-string v4, "onClick(): AirView state change is not allowed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirViewModeAllowed()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "AirViewTile"

    const-string v4, "onClick(): AirView state change is not allowed#2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewState:Z

    if-eq v3, v2, :cond_0

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isEnabledScreenReaderService()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->isMagnificationEnabled:Z

    if-eqz v3, :cond_7

    :cond_6
    const v3, 0x7f0d04ca

    const v4, 0x7f0d04cb

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/AirViewTile;->showTalkBackDisablePopup(II)V

    goto :goto_0

    :cond_7
    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v4, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllFingerOptionDisabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V

    goto :goto_0

    :cond_8
    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v9, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllPenOptionsDisabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V

    goto :goto_0

    :cond_9
    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v10, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllOptionDisabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V

    goto/16 :goto_0

    :cond_a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/AirViewTile;->refreshState(Ljava/lang/Object;)V

    if-eqz v2, :cond_b

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/AirViewTile;->setMode(I)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 3

    const-string v1, "AirViewTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$FingerAirViewSettingActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$PenAirViewSettingsMenuActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$AirViewSettingActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d03aa

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirViewTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0d0389

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->makeContentDescription(II)Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirViewTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAllFingerOptionDisabled()Z
    .locals 13

    const/4 v8, 0x1

    const/4 v12, -0x2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_magnifier"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_information_preview"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_pregress_bar_preview"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_speed_dial_tip"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_show_up_indicator"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_full_text"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_pointer"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sget v10, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    const-string v10, "AirViewTile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isAllFingerOptionDisabled()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int v10, v2, v1

    or-int/2addr v10, v4

    or-int/2addr v10, v7

    or-int/2addr v10, v6

    if-ge v10, v8, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    move v8, v9

    goto :goto_0

    :cond_2
    const-string v10, "AirViewTile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isAllFingerOptionDisabled()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int v10, v2, v5

    or-int/2addr v10, v1

    or-int/2addr v10, v0

    or-int/2addr v10, v3

    or-int/2addr v10, v4

    or-int/2addr v10, v7

    if-lt v10, v8, :cond_0

    move v8, v9

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllPenOptionsDisabled()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllFingerOptionDisabled()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mPenDettachedState:Z

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllPenOptionsDisabled()Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllFingerOptionDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isAllPenOptionsDisabled()Z
    .locals 11

    const/4 v6, 0x1

    const/4 v10, -0x2

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_information_preview"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_progress_preview"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_speed_dial_preview"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_icon_label"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_list_scroll"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_sound"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sget v8, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    const-string v8, "AirViewTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllPenOptionDisabled()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int v8, v1, v3

    or-int/2addr v8, v5

    or-int/2addr v8, v0

    or-int/2addr v8, v2

    or-int/2addr v8, v4

    if-ge v8, v6, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    move v6, v7

    goto :goto_0

    :cond_2
    const-string v8, "AirViewTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllPenOptionDisabled()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int v8, v1, v3

    or-int/2addr v8, v5

    or-int/2addr v8, v0

    or-int/2addr v8, v2

    if-lt v8, v6, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method protected showTalkBackDisablePopup(II)V
    .locals 9

    const/16 v8, 0x7d8

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isEnabledScreenReaderService()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d03e7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->isMagnificationEnabled:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d03e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/systemui/qs/tiles/AirViewTile$9;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/AirViewTile$9;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/systemui/qs/tiles/AirViewTile$8;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/AirViewTile$8;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/tiles/AirViewTile$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/AirViewTile$7;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_6

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_5

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/Window;->setType(I)V

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitch(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->userSwitched(I)V

    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    :cond_0
    return-void
.end method

.class public Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NetworkBoosterTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;
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
.field private static final DB_NETWORK_BOOSTER_DIALOG_CHECKED:Ljava/lang/String; = "smart_bonding_notification_do_not_show"

.field private static final DB_NETWORK_BOOSTER_ON:Ljava/lang/String; = "smart_bonding"

.field private static final TAG:Ljava/lang/String; = "NetworkBoosterTile"

.field private static mRoamingState:Z

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirpalneOn:Z

.field private mIsProcessing:Z

.field private mIsWfcRegistered:Z

.field private mNetWorkBoosterState:Z

.field private mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

.field private mWfcObserver:Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mWfcObserver:Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "airplane_mode_on"

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "smart_bonding"

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/ToddlerModeSetting;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/qs/ToddlerModeSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->init()V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z

    if-eqz v0, :cond_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    if-eqz v0, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getWfcMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->setMode(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getMode()I

    move-result v0

    return v0
.end method

.method private getBtnIdUnderNetworkStatus()I
    .locals 2

    const v0, 0x7f0d0414

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f0d040b

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const v0, 0x7f0d040a

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f0d0409

    goto :goto_0
.end method

.method private getMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    return v0
.end method

.method private getTextIdUnderNetworkStatus()I
    .locals 2

    const v0, 0x7f0d040f

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0d0408

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const v0, 0x7f0d040e

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const v0, 0x7f0d040d

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f0d040c

    goto :goto_0
.end method

.method private getWfcMode()Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegister(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f0207ae

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
    const v0, 0x7f0207af

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0207ad

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
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mWfcObserver:Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private static isMobileNetworkEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRoaming(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mRoamingState:Z

    sget-boolean v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mRoamingState:Z

    return v1
.end method

.method private isSimReady()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMSim()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMSim()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getReadySimCount()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method private static isWifiEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v1, "SmartBonding"

    const-string v2, "Can\'t get WifiManager."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    return-void
.end method

.method private showNotificationDialog()V
    .locals 13

    const v11, 0x104000a

    const/16 v12, 0x7d8

    const/4 v4, 0x1

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isRoaming(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    const v10, 0x7f0d0408

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0d0410

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$4;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$4;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    invoke-virtual {v0, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v10}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v11, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;

    invoke-direct {v11, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v10}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v10

    if-eqz v10, :cond_6

    :goto_2
    if-eqz v3, :cond_8

    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v10, :cond_7

    if-eqz v4, :cond_7

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/view/Window;->setType(I)V

    :cond_1
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z

    move-result v10

    if-nez v10, :cond_4

    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v10, :cond_3

    const v10, 0x7f0d03dd

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_4
    const v10, 0x7f0d0412

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$5;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$5;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    invoke-virtual {v0, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_3
    const v10, 0x7f0d0411

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_4
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v10, 0x7f0400dc

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v10, 0x7f0e0425

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getTextIdUnderNetworkStatus()I

    move-result v8

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v10

    if-ne v10, v4, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u200f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_5
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0e0426

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0d0413

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getBtnIdUnderNetworkStatus()I

    move-result v10

    new-instance v11, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$6;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$6;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$7;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$7;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_7
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d9

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_3

    :cond_8
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method protected handleClick()V
    .locals 13

    const-string v9, "NetworkBoosterTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleClick : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "false"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "true"

    aput-object v9, v5, v8

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v10, "isSettingsChangesAllowed"

    invoke-static {v8, v9, v10, v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v10, "isWifiEnabled"

    invoke-static {v8, v9, v10, v5}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v10, "isCellularDataAllowed"

    invoke-static {v8, v9, v10, v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const-string v8, "NetworkBoosterTile"

    const-string v9, "onClick(): NetworkBooster state change is not allowed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z

    if-eqz v8, :cond_3

    const-string v8, "NetworkBoosterTile"

    const-string v9, "onClick(): Processing..."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d03e8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0386

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0386

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    sput-object v8, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    sget-object v8, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v8, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v8, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->showNotificationDialog()V

    goto :goto_0

    :cond_5
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v8}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d03e8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d03ac

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d03ac

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v8, v7}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v9, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_7

    const/4 v8, 0x1

    :goto_1
    if-eq v9, v8, :cond_1

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "smart_bonding_notification_do_not_show"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_8

    const/4 v0, 0x1

    :goto_2
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->showNotificationDialog()V

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    const/4 v8, 0x1

    :goto_3
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->setMode(I)V

    goto/16 :goto_0

    :cond_a
    const/4 v8, 0x0

    goto :goto_3
.end method

.method protected handleDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public handleLongClick()V
    .locals 9

    const v8, 0x7f0d03ac

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "NetworkBoosterTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLongClick : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "true"

    aput-object v3, v1, v6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_0

    const-string v3, "NetworkBoosterTile"

    const-string v4, "handleLongClick(): Setting Access is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SmartBondingSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d03ab

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0d0389

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->makeContentDescription(II)Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public onDimClick()V
    .locals 7

    const v6, 0x7f0d03a5

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    sget-object v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    return-void
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

    const-string v1, ",S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",A:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitch(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    return-void
.end method

.class public Lcom/android/systemui/qs/tiles/DefaultDataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DefaultDataTile.java"


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
.field private static final DB_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field private static final DELAYREADY:I = 0x2

.field private static final MOBILE_DATA_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_mobiledata_checked"

.field private static final NOTREADY:I = 0x1

.field private static final READY:I = 0x0

.field private static final SLOT1:I = 0x0

.field private static final SLOT2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefaultDataTile"

.field private static final UNKNOWN:I = -0x1

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCurrentDataNW:I

.field private mDelayHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirPlaneMode:Z

.field private mIsSwitchReady:Z

.field private mMobileData:Z

.field private final mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "mobile_data"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "quickpanel_mobiledata_checked"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/DefaultDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/DefaultDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->updateActivateStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getMobileData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getDefaultDataReady()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getDefaultDataReady()I
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    const-string v2, "DefaultDataTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultDataReady:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getMobileData()Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    :goto_0
    const-string v3, "DefaultDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMSim getMobileData() ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return v1

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    goto :goto_1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f0207ff

    const v1, 0x7f0207fe

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    :pswitch_4
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    const/4 v0, 0x2

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0207a5

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0207a4

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0207a3

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0207a8

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0207a7

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private isCallStatus()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v1

    const-string v4, "DefaultDataTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCallStatus slot1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slot2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 11

    const/16 v10, 0x7d8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isMSim()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "DefaultDataTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSimReady(): MSIM enabledsim # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getReadySimCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isMSim()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isMSim()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getReadySimCount()I

    move-result v7

    if-nez v7, :cond_6

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v7, :cond_7

    const v7, 0x7f0d03dc

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d03dd

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/qs/tiles/DefaultDataTile$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$6;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/qs/tiles/DefaultDataTile$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$7;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v5

    :goto_1
    if-eqz v2, :cond_a

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_9

    if-eqz v3, :cond_9

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->setType(I)V

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    :cond_5
    move v5, v6

    :cond_6
    return v5

    :cond_7
    const v7, 0x7f0d03da

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d03db

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_8
    move v3, v6

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x7d9

    invoke-virtual {v5, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private setDataSlot(I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto :goto_0
.end method

.method private updateActivateStatus()V
    .locals 6

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getReadySimCount()I

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "DefaultDataTile"

    const-string v2, "No Sim is available"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const-string v3, "DefaultDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateActivateStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->hasSlotSwiching()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-ne v3, v2, :cond_4

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    if-eqz v3, :cond_6

    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-nez v0, :cond_5

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-nez v2, :cond_7

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public handleClick()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "DefaultDataTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / mCurrentDataNW : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / current mMobileData : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0d03fb

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getReadySimCount()I

    move-result v0

    if-ne v0, v4, :cond_3

    const-string v0, "DefaultDataTile"

    const-string v1, "Ready SIM # is only one!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isCallStatus()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0d020c

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-le v0, v4, :cond_5

    iput v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->updateActivateStatus()V

    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->setDataSlot(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_data"

    iget v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    goto/16 :goto_0
.end method

.method protected handleDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 4

    const-string v1, "DefaultDataTile"

    const-string v2, "handleLongClick "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v3, "isSettingsChangesAllowed"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_1

    const-string v1, "DefaultDataTile"

    const-string v2, "handleLongClick: Setting access is not allowed  by EDM"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "DefaultDataTile"

    const-string v2, "MobileData Long - disabled in Airplanemode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    sget-object v1, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f0d03fb

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isSimReady()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_3

    const-string v1, "com.samsung.settings.DATA_SLOT"

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.DataSlotChoice"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 8

    const v7, 0x7f0d0287

    const v6, 0x7f0d0286

    const v5, 0x7f0d0206

    const/4 v4, 0x0

    const/4 v3, 0x1

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0205

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getMobileData()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.net.conn.SwitchDataNetworkDuringVoiceCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.net.conn.SwitchDataNetworkDuringMMS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    return-void

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitch(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->userSwitched(I)V

    return-void
.end method

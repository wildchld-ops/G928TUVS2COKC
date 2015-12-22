.class public Lcom/android/systemui/qs/tiles/ApnTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ApnTile.java"


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

.field private static final NOTREADY:I = 0x1

.field private static final READY:I = 0x0

.field private static final SETUP_WIZARD_FINISHED:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field private static final SLOT1:I = 0x0

.field private static final SLOT2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ApnTile"

.field private static final UNKNOWN:I = -0x1

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mApnObserver:Landroid/database/ContentObserver;

.field private mApnSubName:Ljava/lang/String;

.field private mCurrentDataNW:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirPlaneMode:Z

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMobileData:Z

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneCount:I

.field private final mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentDataNW:I

    iput v4, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhoneCount:I

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/systemui/qs/tiles/ApnTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ApnTile$3;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/ApnTile$5;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/ApnTile$5;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mNeedFontChange:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/ApnTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/ApnTile$1;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/ApnTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "mobile_data"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/ApnTile$2;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/ApnTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/ApnTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mIsAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/ApnTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/ApnTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->updateActivateStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/ApnTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/ApnTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->getMobileData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/ApnTile;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ApnTile;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private getApnName()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSelectedApn()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultDataReady()I
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->hasSlotSwiching()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

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
    const-string v3, "ApnTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiSim getMobileData() ret="

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
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

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
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    goto :goto_1
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

    new-instance v0, Lcom/android/systemui/qs/tiles/ApnTile$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/ApnTile$4;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;I)V

    return-object v0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 6

    const v5, 0x7f0207cd

    const v4, 0x7f0207b5

    const v3, 0x7f02079e

    const/4 v2, 0x2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const v0, 0x7f02082a

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f02082a

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_3
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    :pswitch_4
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    :pswitch_5
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    :pswitch_6
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    :pswitch_7
    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    :pswitch_8
    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_1

    :pswitch_9
    goto :goto_0

    :pswitch_a
    const v0, 0x7f020cb1

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_b
    const v0, 0x7f020cb0

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_c
    const v0, 0x7f020caf

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_d
    const v0, 0x7f020cae

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_e
    const v0, 0x7f020cab

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_f
    const v0, 0x7f020caa

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_10
    const v0, 0x7f020cad

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnSubName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_0

    :pswitch_11
    const v0, 0x7f020cac

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnSubName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
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

.method private isSimReady()Z
    .locals 11

    const/16 v10, 0x7d8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->isMSim()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "ApnTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSimReady(): MSIM enabledsim # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->getReadySimCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->isMSim()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->isMSim()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->getReadySimCount()I

    move-result v7

    if-nez v7, :cond_6

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v7, :cond_7

    const v7, 0x7f0d03dc

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d03dd

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/qs/tiles/ApnTile$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/ApnTile$6;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/qs/tiles/ApnTile$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/ApnTile$7;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

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

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->setType(I)V

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

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
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x7d9

    invoke-virtual {v5, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private makeSettingValues(Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "ApnTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeSettingValues apnName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnSubName:Ljava/lang/String;

    if-eqz p2, :cond_6

    const/16 v0, 0x8

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_0
    const-string v4, "CTNET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "CTLTE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v0

    goto :goto_1

    :sswitch_2
    const-string v4, "CTWAP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    goto :goto_1

    :pswitch_0
    if-eqz p2, :cond_3

    const/4 v0, 0x4

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_3

    :pswitch_1
    if-eqz p2, :cond_4

    const/4 v0, 0x6

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_4

    :pswitch_2
    if-eqz p2, :cond_5

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    const/16 v0, 0x9

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x3d77dac -> :sswitch_1
        0x3d7836c -> :sswitch_0
        0x3d7a4b5 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setApnName()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->setSelectedApn()V

    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateActivateStatus()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->getApnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->getReadySimCount()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CTNET"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/tiles/ApnTile;->makeSettingValues(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "CTWAP"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/tiles/ApnTile;->makeSettingValues(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mIsAirPlaneMode:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/tiles/ApnTile;->makeSettingValues(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/ApnTile;->makeSettingValues(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/tiles/ApnTile;->makeSettingValues(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleClick()V
    .locals 3

    const-string v1, "ApnTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / current mMobileData : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mIsAirPlaneMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/ApnTile;->toastAlert:Landroid/widget/Toast;

    sget-object v0, Lcom/android/systemui/qs/tiles/ApnTile;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0d03fb

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    sget-object v0, Lcom/android/systemui/qs/tiles/ApnTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->setApnName()V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public handleLongClick()V
    .locals 5

    const-string v2, "ApnTile"

    const-string v3, "handleLongClick "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/qs/tiles/ApnTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_1

    const-string v2, "ApnTile"

    const-string v3, "handleLongClick: Setting access is not allowed by EDM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "ApnTile"

    const-string v3, "MobileData Long - disabled in Airplanemode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/qs/tiles/ApnTile;->toastAlert:Landroid/widget/Toast;

    sget-object v2, Lcom/android/systemui/qs/tiles/ApnTile;->toastAlert:Landroid/widget/Toast;

    const v3, 0x7f0d03fb

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    sget-object v2, Lcom/android/systemui/qs/tiles/ApnTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->isSimReady()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v2, :cond_3

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$ApnSettingsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v2, "simSlot"

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->getDefaultDataReady()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ApnSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 8

    const v7, 0x7f0d0287

    const v6, 0x7f0d0286

    const v5, 0x7f0d0206

    const/4 v4, 0x0

    const/4 v2, 0x1

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->pairedDeviceName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ApnTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0209

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0209

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d020a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d020a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d020b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d020b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnSubName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnSubName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->pairedDeviceName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnSubName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnSubName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->pairedDeviceName:Ljava/lang/String;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ApnTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->getMobileData()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mIsAirPlaneMode:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z

    if-eqz v3, :cond_1

    move v3, v2

    :goto_1
    iput v3, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/ApnTile;->registerPhoneStateListener(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0x41

    const/4 v6, 0x0

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhoneCount:I

    const-string v3, "ApnTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhoneCount:I

    if-ge v0, v3, :cond_3

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_0

    aget v1, v2, v6

    const-string v3, "ApnTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/ApnTile;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/ApnTile;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_1

    :cond_3
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitch(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    return-void
.end method

.class public Lcom/android/systemui/qs/tiles/VoLteTile;
.super Lcom/android/systemui/qs/QSTile;
.source "VoLteTile.java"


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

.field private static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field private static final TAG:Ljava/lang/String; = "VoLteTile"

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VoLTE:I

.field private static mToastAlert:Landroid/widget/Toast;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDDSChanged:Z

.field private mInitialized:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirPlaneMode:Z

.field private mMccmnc:Ljava/lang/String;

.field private mMobileData:Z

.field private final mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingDDS:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoLTEState:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInitialized:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMccmnc:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mDDSChanged:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$5;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile$1;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "mobile_data"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile$2;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "multi_sim_data_call"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile$3;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingDDS:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$4;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "voicecall_type"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile$4;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/VoLteTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/VoLteTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getVoLTEEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInitialized:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/VoLteTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMobileData:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMobileData:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/VoLteTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mDDSChanged:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mDDSChanged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTEState:Z

    return p1
.end method

.method private static checkMccmnc(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "VoLteTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMccmnc() mccmnc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v2, "45416"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "45419"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "45400"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "45403"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "45406"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46601"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "24099"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "24499"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46697"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46689"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46692"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46605"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "45001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52005"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52074"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52054"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52000"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52004"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto/16 :goto_0
.end method

.method private getMobileData()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isMSim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVoLTEEnabled()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMccmnc:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTEState:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMccmnc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->checkMccmnc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "VoLteTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoLTEEnabled() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mVoLTEState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTEState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mIsAirPlaneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f020820

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

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020823

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_4
    const v0, 0x7f020822

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_5
    const v0, 0x7f020821

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isSimReady()Z
    .locals 10

    const/16 v9, 0x7d8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isMSim()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v0, :cond_1

    if-eq v0, v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isMSim()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getReadySimCount()I

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v7, :cond_4

    const v7, 0x7f0d03dc

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d03dd

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/qs/tiles/VoLteTile$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$6;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/qs/tiles/VoLteTile$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$7;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_5

    move v3, v5

    :goto_1
    if-eqz v2, :cond_7

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_6

    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->setType(I)V

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    move v5, v6

    :cond_3
    return v5

    :cond_4
    const v7, 0x7f0d03da

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d03db

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_5
    move v3, v6

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x7d9

    invoke-virtual {v5, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method public static manualIMSDeregister(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x7

    invoke-static {v1, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    const-string v1, "VoLteTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manualIMSDeregister mInterfaceForGeneral:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualDeregister()V

    :cond_0
    return-void
.end method

.method public static manualIMSRegister(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x7

    invoke-static {v1, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_0

    const-string v1, "VoLteTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manualIMSRegister mInterfaceForGeneral:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleClick()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "VoLteTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    const v2, 0x7f0d0403

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-ne v1, v3, :cond_4

    :cond_3
    const-string v1, "LTE"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v2, "VoLteTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(): MobileData state change is not allowed during volte : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    const v2, 0x7f0d03f8

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInitialized:Z

    if-nez v1, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    const v2, 0x7f0d0404

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isSimReady()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMccmnc:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMccmnc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->checkMccmnc(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    const v2, 0x7f0d0405

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v6}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->manualIMSRegister(Landroid/content/Context;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowVolteOnPopup:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    const v4, 0x7f0d0406

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getVoLTEEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->manualIMSDeregister(Landroid/content/Context;)V

    goto :goto_1

    :cond_9
    move v1, v3

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDeregVolteInDataOff:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingDDS:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 4

    const-string v2, "VoLteTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLongClick : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v3, "isSettingsChangesAllowed"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_1

    const-string v1, "VoLteTile"

    const-string v2, "handleLongClick(): setting access is not allowed by EDM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "VoLteTile"

    const-string v2, "VoLTE Long - disabled in Airplanemode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    const v2, 0x7f0d03fb

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isSimReady()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 7

    const v6, 0x7f0d0402

    const/4 v5, 0x0

    const/4 v3, 0x1

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0401

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0286

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0287

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-ne v2, v4, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTEState:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "voicecall_type"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v4, v1, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTEState:Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getVoLTEEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    iput v3, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mDeregVolteInDataOff:Z

    if-eqz v2, :cond_2

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingDDS:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

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

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDeregVolteInDataOff:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingDDS:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    :cond_0
    return-void
.end method

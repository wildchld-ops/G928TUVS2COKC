.class public Lcom/android/systemui/qs/tiles/MobileDataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "MobileDataTile.java"


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
.field private static final DATA_OFF_ALERT:I = 0x0

.field private static final DATA_ON_ALERT:I = 0x1

.field private static final DATA_ROAMING_ON_ALERT:I = 0x2

.field private static final DB_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field private static final DB_ROAMING_MOBILE_DATA:Ljava/lang/String; = "data_roaming"

.field private static final KNOX_MODE_USER_ID:I = 0x64

.field private static final MOBILE_DATA_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_mobiledata_checked"

.field private static final TAG:Ljava/lang/String; = "MobileDataTile"

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private callingPid:I

.field private isAirPlaneMode:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mErrorMsgResId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMobileData:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

.field private final mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

.field private mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$19;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "mobile_data"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "data_roaming"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "quickpanel_mobiledata_checked"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/ToddlerModeSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/ToddlerModeSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/MobileDataTile;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/MobileDataTile;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/qs/tiles/MobileDataTile;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->callingPid:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataOnAlert()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/SecureSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/MobileDataTile;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I

    move-result v0

    return v0
.end method

.method private getAppNameByPID(I)Ljava/lang/String;
    .locals 12

    const-string v6, ""

    const-string v2, ""

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    :try_start_0
    iget v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v9, p1, :cond_0

    iget-object v6, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v5, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v9, "MobileDataTile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " getAppNameByPID :processName  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", appLabel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private getMobileData()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    :goto_0
    const-string v3, "MobileDataTile"

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

    :goto_1
    return v1

    :cond_0
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "MobileDataTile"

    const-string v6, "getMobileData : isDataRoaming !! "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    move v1, v3

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_6

    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    goto :goto_1

    :cond_6
    move v1, v4

    goto :goto_1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f0207a0

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
    const v0, 0x7f0207a1

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f02079f

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

.method private isDataRoaming()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseDataRoamingDB:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_2

    const-string v2, "MobileDataTile"

    const-string v4, "isDataRoaming : mTelephonyManager null "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    :cond_2
    if-nez v0, :cond_3

    const-string v2, "MobileDataTile"

    const-string v4, "isDataRoaming : currentPlmn null "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "oversea"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDataRoaming : isNetworkRoaming :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentplmn :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oversea = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "MobileDataTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSimReady(): MSIM enabledsim # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v0, :cond_1

    if-ne v0, v5, :cond_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v7, :cond_6

    const v7, 0x7f0d03dc

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d03dd

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/qs/tiles/MobileDataTile$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$6;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/qs/tiles/MobileDataTile$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$7;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v5

    :goto_1
    if-eqz v2, :cond_9

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_8

    if-eqz v3, :cond_8

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->setType(I)V

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    move v5, v6

    :cond_5
    return v5

    :cond_6
    const v7, 0x7f0d03da

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d03db

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_7
    move v3, v6

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x7d9

    invoke-virtual {v5, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private isVoiceCapable()Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

.method private isVolteEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private onCTCDisplayMobileDataOnAlert()V
    .locals 7

    const/16 v6, 0x7d8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0397

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d020d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d020e

    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$14;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$14;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v1, :cond_3

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private onDisplayMobileDataAlert(I)V
    .locals 12

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v10, 0x7f0400db

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v9, 0x7f0e0423

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0e0424

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0418

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    move v0, p1

    if-eqz p1, :cond_3

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v9, 0x1

    if-ne p1, v9, :cond_2

    const v9, 0x7f0d0211

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x2

    if-eq p1, v9, :cond_5

    const v9, 0x7f0d03bb

    :goto_2
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    new-instance v10, Lcom/android/systemui/qs/tiles/MobileDataTile$16;

    invoke-direct {v10, p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile$16;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/systemui/qs/tiles/MobileDataTile$17;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$17;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v9}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/systemui/qs/tiles/MobileDataTile$18;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$18;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v9}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v4, 0x1

    :goto_3
    if-eqz v3, :cond_8

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v9, :cond_7

    if-eqz v4, :cond_7

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    :cond_1
    :goto_4
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    const v9, 0x7f0d0212

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const v9, 0x7f0d0213

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    new-instance v9, Lcom/android/systemui/qs/tiles/MobileDataTile$15;

    invoke-direct {v9, p0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile$15;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    :cond_5
    const v9, 0x7f0d020f

    goto/16 :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_4

    :cond_8
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_4
.end method

.method private onDisplayMobileDataOffAlert()V
    .locals 13

    const v12, 0x7f0d03f2

    const/16 v11, 0x7d8

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0400db

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v8, 0x7f0e0423

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mMobileDataStringForVZW:Z

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isVoiceCapable()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isVolteEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0d03f3

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v8, 0x7f0e0424

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0418

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v7, v3, v3, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d03f1

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v8, 0x104000a

    new-instance v9, Lcom/android/systemui/qs/tiles/MobileDataTile$8;

    invoke-direct {v9, p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$8;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v8, 0x1040000

    new-instance v9, Lcom/android/systemui/qs/tiles/MobileDataTile$9;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$9;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v9, Lcom/android/systemui/qs/tiles/MobileDataTile$10;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$10;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v2, :cond_8

    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v8, :cond_7

    if-eqz v3, :cond_7

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/Window;->setType(I)V

    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0d03f7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0d03ed

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_8
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private onDisplayMobileDataOnAlert()V
    .locals 7

    const/16 v6, 0x7d8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0397

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mIsDomesticSKTModel:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mIsDomesticKTTModel:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mIsDomesticLGTModel:Z

    if-eqz v4, :cond_2

    :cond_0
    const v4, 0x7f0d03f6

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$11;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$11;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$12;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$12;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$13;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$13;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-eqz v1, :cond_5

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    const v4, 0x7f0d03ff

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private setDataRoaming(Z)V
    .locals 5

    const/4 v4, 0x2

    const-string v1, "MobileDataTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataRoaming() on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v1, "OPEN"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MobileDataTile"

    const-string v2, "Feature.getOperator is not OPEN !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataAlert(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setRoamingDataEnabled(Z)V

    goto :goto_0
.end method

.method private setMobileData(Z)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "MobileDataTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMobileData() on="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mNotShowMobileDataOffPopup:Z

    if-eqz v5, :cond_1

    if-nez p1, :cond_1

    const-string v3, "MobileDataTile"

    const-string v4, "Do not show MobileData OFF popup"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "EverPoppedUp"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v5, "true"

    const-string v6, "gsm.operator.isroaming"

    const-string v7, "false"

    invoke-static {v6, v3, v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "true"

    const-string v6, "gsm.operator.isroaming"

    const-string v7, "false"

    invoke-static {v6, v4, v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v0, v4

    :goto_2
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    const-string v3, "MobileDataTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCheckedRoamingOn (CTC): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "EverPoppedUp"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onCTCDisplayMobileDataOnAlert()V

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    goto :goto_1

    :cond_6
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseDataRoamingDB:Z

    if-eqz v5, :cond_9

    if-nez p1, :cond_8

    if-nez v2, :cond_7

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataAlert(I)V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataAlert(I)V

    goto/16 :goto_1

    :cond_9
    if-nez v2, :cond_c

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataOnAlert()V

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataOffAlert()V

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    goto/16 :goto_1
.end method

.method private setMobileDataEnabled(Z)V
    .locals 7

    const/4 v3, 0x2

    const/4 v2, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z

    move-result v4

    if-ne v4, p1, :cond_1

    const-string v4, "MobileDataTile"

    const-string v5, "isMSim: MobileData is same to new one to be updated!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    if-eqz v4, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    const-string v2, "MobileDataTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMSim- setMobileDataEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_1

    :cond_3
    const-string v2, "MobileDataTile"

    const-string v3, "isMSim : setMobileDataEnabled : mTelephonyManager = null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setRoamingDataEnabled(Z)V

    goto :goto_1

    :cond_5
    const-string v4, "MobileDataTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMobileDataEnabled() enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z

    move-result v4

    if-ne v4, p1, :cond_7

    const-string v4, "MobileDataTile"

    const-string v5, "The current MobileData is same to new one to be updated!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    if-eqz v4, :cond_6

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "MobileDataTile"

    const-string v3, "setMobileDataEnabled : connectivityManager = null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setRoamingDataEnabled(Z)V
    .locals 5

    const/4 v2, 0x0

    const-string v1, "MobileDataTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRoamingDataEnabled : DataRoaming set to  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowRoamingToastForLGT:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f0d0210

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getActionMessageOnCover()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

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
    .locals 18

    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "false"

    aput-object v15, v10, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v15, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v16, "isCellularDataAllowed"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v10}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v15, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v16, "isSettingsChangesAllowed"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v10}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    const/4 v14, -0x1

    if-eq v2, v14, :cond_2

    const/4 v14, -0x1

    if-eq v7, v14, :cond_2

    if-eqz v2, :cond_0

    if-nez v7, :cond_2

    :cond_0
    const v14, 0x1040b37

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    const/4 v1, 0x3

    :cond_1
    :goto_0
    return v1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z

    if-eqz v14, :cond_3

    const v14, 0x7f0d03fb

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v14}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v14

    if-eqz v14, :cond_4

    const v14, 0x7f0d03fc

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mMobileDataStringForVoLTE:Z

    if-eqz v14, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isVolteEnabled()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    const-string v14, "volte"

    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const v14, 0x7f0d03f8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    if-eqz v12, :cond_6

    const/4 v14, 0x1

    if-ne v12, v14, :cond_9

    :cond_6
    const/4 v5, 0x1

    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v14}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v14

    if-nez v14, :cond_a

    const/4 v3, 0x1

    :goto_2
    if-nez v4, :cond_7

    if-eqz v5, :cond_7

    if-nez v8, :cond_8

    :cond_7
    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I

    move-result v14

    if-nez v14, :cond_c

    :cond_8
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v14, :cond_b

    const v14, 0x7f0d03dd

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    :goto_3
    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    :cond_b
    const v14, 0x7f0d03db

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    goto :goto_3

    :cond_c
    const/4 v1, 0x2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v14

    const-string v15, "CTC"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "EverPoppedUp"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const-string v14, "true"

    const-string v15, "gsm.operator.isroaming"

    const/16 v16, 0x0

    const-string v17, "false"

    invoke-static/range {v15 .. v17}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "true"

    const-string v15, "gsm.operator.isroaming"

    const/16 v16, 0x1

    const-string v17, "false"

    invoke-static/range {v15 .. v17}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_d
    const/4 v6, 0x1

    :goto_4
    if-eqz v3, :cond_1

    if-eqz v6, :cond_1

    if-nez v9, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v6, 0x0

    goto :goto_4

    :cond_f
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v14, :cond_10

    const/4 v11, 0x1

    :goto_5
    if-nez v3, :cond_1

    if-eqz v11, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v14}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v14

    if-nez v14, :cond_11

    const/4 v11, 0x1

    goto :goto_5

    :cond_11
    const/4 v11, 0x0

    goto :goto_5
.end method

.method public handleClick()V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v7, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleClick : isCoveredState()"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileData(Z)V

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v2, v6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v8, "isCellularDataAllowed"

    invoke-static {v4, v7, v8, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v8, "isSettingsChangesAllowed"

    invoke-static {v4, v7, v8, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v0, v11, :cond_5

    if-eq v1, v11, :cond_5

    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    :cond_4
    const-string v4, "MobileDataTile"

    const-string v5, "onClick(): MobileData state change is not allowed by EDM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    const v5, 0x1040b37

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    const-string v7, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleClick : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v4, v9, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    const v5, 0x7f0d03fb

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->setShowForAllUsers()V

    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const v5, 0x7f0d03fc

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(I)V

    goto/16 :goto_0

    :cond_7
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mMobileDataStringForVoLTE:Z

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isVolteEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string v4, "volte"

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v5, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick(): MobileData state change is not allowed during volte : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    const v5, 0x7f0d03f8

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isSimReady()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-nez v4, :cond_9

    :goto_2
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V

    goto/16 :goto_0

    :cond_9
    move v5, v6

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-nez v4, :cond_b

    :goto_3
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileData(Z)V

    goto/16 :goto_0

    :cond_b
    move v5, v6

    goto :goto_3
.end method

.method protected handleDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseDataRoamingDB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    :cond_1
    return-void
.end method

.method public handleLongClick()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "true"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v5, "isCellularDataAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v0, v7, :cond_2

    if-eq v1, v7, :cond_2

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const-string v3, "MobileDataTile"

    const-string v4, "onLongClick(): MobileData state change is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v3, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    sget-object v3, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    const v4, 0x1040b37

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    sget-object v3, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-ne v3, v8, :cond_3

    const-string v3, "MobileDataTile"

    const-string v4, "MobileData Long - disabled in Airplanemode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v3, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    sget-object v3, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    const v4, 0x7f0d03fb

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    sget-object v3, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const v4, 0x7f0d03fc

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(I)V

    goto :goto_0

    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v3, :cond_5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "MobileDataTile"

    const-string v4, "Blocked onLongClick() - MobileNetworkSettings activity."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v3, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLongClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isSimReady()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_6

    const-string v3, "com.samsung.settings.DATA_SLOT"

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.DataSlotChoice"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_a

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mLinkToCdmaSetting:Z

    if-eqz v3, :cond_8

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CdmaSettingsEnhancedActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "LGT"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$GlobalRoamingSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "LGT"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$GlobalRoamingSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 6

    const v5, 0x7f0d0397

    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_2

    const/4 v3, 0x3

    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "MobileDataTile"

    const-string v4, "updateActivateStatus :   isDataRoaming, TextId is quickpanel_data_roaming_text"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d020f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v2, :pswitch_data_0

    :goto_3
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :cond_2
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03bb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_2

    :pswitch_0
    const v3, 0x7f0d0387

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_3

    :pswitch_1
    const v3, 0x7f0d0388

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_3

    :pswitch_2
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_3

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseDataRoamingDB:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    return-void

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :cond_2
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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

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

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->userSwitched(I)V

    return-void
.end method

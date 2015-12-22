.class public Lcom/android/systemui/qs/tiles/AllShareCastTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AllShareCastTile.java"


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
.field private static final TAG:Ljava/lang/String; = "AllShareCastTile"


# instance fields
.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;-><init>(Lcom/android/systemui/qs/tiles/AllShareCastTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/AllShareCastTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "wifi_display_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AllShareCastTile$1;-><init>(Lcom/android/systemui/qs/tiles/AllShareCastTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/AllShareCastTile;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AllShareCastTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/AllShareCastTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f0207f6

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
    const v0, 0x7f0207f7

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0207f5

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

.method private hasPendingDialogs()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-eq v1, v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    if-ne v1, v0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActivityRunning(Ljava/lang/String;)Z
    .locals 7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private requestPopup(I)V
    .locals 5

    const-string v2, "AllShareCastTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPopup cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10808000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AllShareCastTile"

    const-string v3, "startActivity failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showPickerDialog()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "wlan.wfd.settingontop"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "wlan.wfd.settingontop"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->hasPendingDialogs()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "wlan.wfd.pickerdialogontop"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "wlan.wfd.pickerdialogontop"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string v2, "show_dialog_once"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "tag_write_if_success"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AllShareCastTile"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    goto :goto_0
.end method


# virtual methods
.method public getActionTypeOnCover()I
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public handleClick()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "AllShareCastTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v4

    if-nez v4, :cond_0

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v4, v5, v6, v3}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    if-nez v2, :cond_2

    const-string v4, "AllShareCastTile"

    const-string v5, "onClick(): BlockingMode state change is not allowed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v9, :cond_9

    const-string v4, "AllShareCastTile"

    const-string v5, "Enable Wifi display"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "wlan.wfd.settingontop"

    const-string v5, "-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "wlan.wfd.settingontop"

    const-string v5, "-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->hasPendingDialogs()Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "wlan.wfd.pickerdialogontop"

    const-string v5, "-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "wlan.wfd.pickerdialogontop"

    const-string v5, "-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4, v7}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    const-string v4, "show_dialog_once"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "tag_write_if_success"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x14800000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "AllShareCastTile"

    const-string v5, "mDevicePolicyManager.getAllowWifi false"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v4, "AllShareCastTile"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    if-ne v4, v9, :cond_5

    const-string v4, "AllShareCastTile"

    const-string v5, "Disable wifi display"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4, v7}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    goto :goto_1

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v9, :cond_b

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4, v7}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->showPickerDialog()V

    goto :goto_1

    :cond_b
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4, v7}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    const v4, 0x2207b

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->requestPopup(I)V

    goto :goto_1

    :cond_c
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    goto/16 :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "AllShareCastTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleLongClick : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "true"

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_0

    const-string v2, "AllShareCastTile"

    const-string v3, "handleLongClick: Setting access is not allowed by EDM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_6

    const-string v2, "wlan.wfd.pickerdialogontop"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "wlan.wfd.settingontop"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WifiDisplaySettingsActivity"

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->isActivityRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DETACH_WIFIDISPLAY_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    const-string v2, "wlan.wfd.pickerdialogontop"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "wlan.wfd.settingontop"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    if-eq v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    :cond_4
    const-string v2, "AllShareCastTile"

    const-string v3, "PickDialog on the top onPause status and long click to launch setting"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiDisplaySettingsActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->showPickerDialog()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    goto/16 :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d039a

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x0

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "device_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    return-void

    :cond_0
    move v2, v3

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

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

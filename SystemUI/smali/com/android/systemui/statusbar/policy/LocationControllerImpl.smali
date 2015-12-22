.class public Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "LocationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/LocationControllerImpl$StatusBarHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EVENT_STOP_GPS_TONE:I = 0x40

.field private static final GPS_NOTIFICATION_ID:I = 0x3d8d7

.field public static final LOCATION_STATUS_ICON_ID:I = 0x7f02053e

.field public static final LOCATION_STATUS_ICON_PLACEHOLDER:Ljava/lang/String; = "location"

.field private static final TAG:Ljava/lang/String; = "StatusBar.LocationController"

.field private static final mHighPowerRequestAppOpArray:[I

.field private static sIsDCMDevice:Z

.field private static sIsVzwDevice:Z


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAreActiveLocationRequests:Z

.field private mContext:Landroid/content/Context;

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private final mHandler:Landroid/os/Handler;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x2a

    aput v3, v2, v0

    sput-object v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->DBG:Z

    const-string v0, "DCM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->sIsDCMDevice:Z

    const-string v0, "VZW"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->sIsVzwDevice:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$StatusBarHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.location.MODE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v6, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    move-object v5, p1

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->refreshViews()V

    return-void
.end method

.method private GenerateBeep()V
    .locals 11

    const/4 v10, 0x1

    sget-boolean v7, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "StatusBar.LocationController"

    const-string v8, "GenerateBeep Method call"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v3, 0xe

    const/16 v0, 0x64

    move v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    invoke-virtual {v4, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    sget-boolean v7, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "StatusBar.LocationController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GenerateBeep: Volumei Level:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-lt v6, v2, :cond_5

    if-gt v6, v1, :cond_5

    if-ne v6, v1, :cond_4

    move v6, v0

    :goto_0
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "StatusBar.LocationController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GenerateBeep: valid Volume:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v10, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    const/16 v8, 0x1c

    invoke-virtual {v7, v8}, Landroid/media/ToneGenerator;->startTone(I)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    return-void

    :cond_4
    mul-int/2addr v6, v3

    goto :goto_0

    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->DBG:Z

    if-eqz v7, :cond_6

    const-string v7, "StatusBar.LocationController"

    const-string v8, "Error getting current volume: Setting volume as max volume"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v6, v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->locationSettingsChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Landroid/media/ToneGenerator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method private areActiveHighPowerLocationRequests()Z
    .locals 10

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v9, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    invoke-virtual {v8, v9}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_0

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_2
    return v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isUserLocationRestricted(I)Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_share_location"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method private locationSettingsChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private locationSettingsChanged(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V

    return-void
.end method

.method private refreshViews()V
    .locals 0

    return-void
.end method

.method private updateActiveLocationRequests()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->areActiveHighPowerLocationRequests()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->refreshViews()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->locationSettingsChanged(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V

    return-void
.end method

.method public isLocationEnabled()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "location_mode"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v1, "enabled"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->DBG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->sIsDCMDevice:Z

    if-eqz v1, :cond_0

    const-string v1, "StatusBar.LocationController"

    const-string v2, " onReceive: [GPS ICON]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "StatusBar.LocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onReceive: action = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", gpsEnabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v9, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->DBG:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->sIsDCMDevice:Z

    if-eqz v1, :cond_1

    const-string v1, "StatusBar.LocationController"

    const-string v2, " onReceive: GPS is getting fixes"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v11, 0x1080782

    const v16, 0x7f0d02d8

    const/16 v18, 0x1

    :cond_2
    :goto_0
    if-eqz v18, :cond_c

    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v13

    const/4 v1, 0x0

    iput-object v1, v13, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    iput-object v1, v13, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseOldLocationDisplayConcept:Z

    if-eqz v1, :cond_b

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->sIsVzwDevice:Z

    if-eqz v1, :cond_3

    const v1, 0x10101010

    iput v1, v13, Landroid/app/Notification;->commonValue:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "location"

    const v4, 0x7f02053e

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const v19, 0x7f0d02d9

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v2, 0x3d8d7

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v12, v1, v2, v13, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V

    goto :goto_2

    :cond_4
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v9, :cond_6

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->DBG:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->sIsDCMDevice:Z

    if-eqz v1, :cond_5

    const-string v1, "StatusBar.LocationController"

    const-string v2, " onReceive: GPS is off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v16, 0x0

    move/from16 v11, v16

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->DBG:Z

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->sIsDCMDevice:Z

    if-eqz v1, :cond_7

    const-string v1, "StatusBar.LocationController"

    const-string v2, " onReceive: GPS is on, but not receiving fixes"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->sIsVzwDevice:Z

    if-eqz v1, :cond_9

    const v11, 0x1080782

    :goto_3
    const v16, 0x7f0d02d7

    const/16 v18, 0x1

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->sIsDCMDevice:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v1, "gps_noti_sound_enabled"

    const/4 v2, 0x0

    invoke-static {v15, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    const/16 v17, 0x1

    :goto_4
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "StatusBar.LocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: valueFromPrefs = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v17, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->GenerateBeep()V

    goto/16 :goto_0

    :cond_9
    const v11, 0x7f02053a

    goto :goto_3

    :cond_a
    const/16 v17, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "location"

    const v4, 0x7f02053e

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const v19, 0x7f0d02d9

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v1, "StatusBar.LocationController"

    const-string v2, " onReceive: cancel noti"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseOldLocationDisplayConcept:Z

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->sIsVzwDevice:Z

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v2, 0x3d8d7

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v12, v1, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    return-void
.end method

.method public removeSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLocationEnabled(Z)Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isUserLocationRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v2, 0x3

    :cond_1
    const-string v3, "location_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v2

    goto :goto_0
.end method

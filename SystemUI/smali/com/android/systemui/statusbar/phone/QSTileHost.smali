.class public Lcom/android/systemui/statusbar/phone/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;,
        Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;
    }
.end annotation


# static fields
.field private static final ACTION_QUICKSETTING_SVOICE_COMMAND:Ljava/lang/String; = "com.sec.android.quicksetting.SVOICE_COMMAND"

.field private static final DB_LIST_UPDATE:Ljava/lang/String; = "notification_panel_active_app_list"

.field private static final DB_NUMBER_OF_APPS:Ljava/lang/String; = "notification_panel_active_number_of_apps"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "QSTileHost"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-QSTileHost"


# instance fields
.field private final mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private final mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private mIsEditMode:Z

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

.field private mQsDatabaseUtils:Lcom/android/systemui/qs/QsDatabaseUtils;

.field private final mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mSVoiceCommandReceiver:Landroid/content/BroadcastReceiver;

.field private final mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mShopdemoObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "QSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mShopdemoObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDeviceProvisioned:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mIsEditMode:Z

    new-instance v4, Lcom/android/systemui/statusbar/phone/QSTileHost$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost$2;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSVoiceCommandReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContentResolver:Landroid/content/ContentResolver;

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/systemui/qs/QsDatabaseUtils;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/qs/QsDatabaseUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mQsDatabaseUtils:Lcom/android/systemui/qs/QsDatabaseUtils;

    :cond_0
    const-string v2, "com.sec.voice.permission.RECEIVE"

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.sec.android.quicksetting.SVOICE_COMMAND"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSVoiceCommandReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/os/HandlerThread;

    const-class v4, Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct {v1, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QSTileHost$1;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/phone/QSTileHost$1;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v4}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;->register()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mShopdemoObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;->register()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->recreateTiles()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mShopdemoObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/QSTileHost;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->removeTileSpecs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.systemui.qs.tiles."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Tile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/android/systemui/qs/QSTile$Host;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile;

    check-cast v2, Lcom/android/systemui/qs/QSTile;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "STATUSBAR-QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ClassNotFoundException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "STATUSBAR-QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NoSuchMethodException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "STATUSBAR-QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SecurityException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v2, "STATUSBAR-QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "InstantiationException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    move-exception v0

    const-string v2, "STATUSBAR-QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IllegalAccessException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_5
    move-exception v0

    const-string v2, "STATUSBAR-QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IllegalArgumentException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_6
    move-exception v0

    const-string v2, "STATUSBAR-QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "InvocationTargetException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private loadTileSpecs()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "notification_panel_active_app_list"

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v8}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mQsDatabaseUtils:Lcom/android/systemui/qs/QsDatabaseUtils;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/QsDatabaseUtils;->setDefaultQsTilesList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "STATUSBAR-QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded tile specs from QSdatabase: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " userId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v8}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v4, ""

    const-string v6, "STATUSBAR-QSTileHost"

    const-string v7, "Loaded tile specs from settingsDB : empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v6, "STATUSBAR-QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded tile specs from settingDB: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " userId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v8}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v5
.end method

.method private removeTileSpecs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v3, p1

    const-string v6, ""

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_1
    const-string v7, ";"

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v7, v6

    goto :goto_0
.end method


# virtual methods
.method public collapsePanels()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postAnimateCollapsePanels()V

    return-void
.end method

.method public dismissKeyguard()V
    .locals 2

    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method public getCastController()Lcom/android/systemui/statusbar/policy/CastController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFlashlightController()Lcom/android/systemui/statusbar/policy/FlashlightController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-object v0
.end method

.method public getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method public getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method public getLocationController()Lcom/android/systemui/statusbar/policy/LocationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method public getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method public getSecurityController()Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUserSwitcherController()Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-object v0
.end method

.method public getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDeviceProvisioned:Z

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDeviceProvisioned:Z

    return v1
.end method

.method public onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)Z"
        }
    .end annotation

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postQSButtonClickOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "STATUSBAR-QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClickQSButtonOnKeyguard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "QSTileHost"

    const-string v3, "Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClickQuickConnectButton()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postQuickConnectButtonOnClick()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QSTileHost"

    const-string v2, "ActivityNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recreateTiles()V
    .locals 11

    const-string v8, "STATUSBAR-QSTileHost"

    const-string v9, "Recreating tiles"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v0, "VoWiFi"

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v9, "STATUSBAR-QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Destroying tile: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v8}, Lcom/android/systemui/qs/QSTile;->destroy()V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v8, "STATUSBAR-QSTileHost"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Creating tile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, v8}, Lcom/android/systemui/qs/QSTile;->setStatusbar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v6, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v8, "STATUSBAR-QSTileHost"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error creating tile for spec: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSTile$Host$Callback;->onTilesChanged()V

    :cond_6
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mIsEditMode:Z

    return-void
.end method

.method public startSettingsActivity(Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartSettingsActivity(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QSTileHost"

    const-string v2, "ActivityNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

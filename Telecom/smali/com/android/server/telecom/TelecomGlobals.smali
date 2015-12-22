.class public final Lcom/android/server/telecom/TelecomGlobals;
.super Ljava/lang/Object;
.source "TelecomGlobals.java"


# static fields
.field private static final FEATURE_CHANGED_FILTER:Landroid/content/IntentFilter;

.field private static final INSTANCE:Lcom/android/server/telecom/TelecomGlobals;

.field private static final TAG:Ljava/lang/String;

.field private static final USER_SWITCHED_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private autoCSPConnection:Landroid/content/ServiceConnection;

.field private mActionMemoManager:Lcom/android/server/telecom/secutils/SecActionMemoManager;

.field private mAutoCSP:Lcom/android/server/telecom/IAutoCSP;

.field private mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mContext:Landroid/content/Context;

.field private final mFeatureChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mInCallController:Lcom/android/server/telecom/InCallController;

.field private mIsPenMultiwindow:Z

.field private mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

.field private mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

.field private mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

.field private mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

.field private mRcsSessionObserver:Landroid/database/ContentObserver;

.field private final mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/telecom/TelecomGlobals;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/TelecomGlobals;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/TelecomGlobals;->USER_SWITCHED_FILTER:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.telecom.CHANGE_FEATURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/TelecomGlobals;->FEATURE_CHANGED_FILTER:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/server/telecom/TelecomGlobals;

    invoke-direct {v0}, Lcom/android/server/telecom/TelecomGlobals;-><init>()V

    sput-object v0, Lcom/android/server/telecom/TelecomGlobals;->INSTANCE:Lcom/android/server/telecom/TelecomGlobals;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mIsPenMultiwindow:Z

    iput-object v1, p0, Lcom/android/server/telecom/TelecomGlobals;->mWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    new-instance v0, Lcom/android/server/telecom/TelecomGlobals$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/TelecomGlobals$1;-><init>(Lcom/android/server/telecom/TelecomGlobals;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/telecom/TelecomGlobals$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/TelecomGlobals$2;-><init>(Lcom/android/server/telecom/TelecomGlobals;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mFeatureChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/telecom/TelecomGlobals$4;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/TelecomGlobals$4;-><init>(Lcom/android/server/telecom/TelecomGlobals;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->autoCSPConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/TelecomGlobals;)Lcom/android/server/telecom/PhoneAccountRegistrar;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/TelecomGlobals;)Lcom/android/server/telecom/InCallController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mInCallController:Lcom/android/server/telecom/InCallController;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/TelecomGlobals;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/telecom/TelecomGlobals;Lcom/android/server/telecom/IAutoCSP;)Lcom/android/server/telecom/IAutoCSP;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/TelecomGlobals;->mAutoCSP:Lcom/android/server/telecom/IAutoCSP;

    return-object p1
.end method

.method private createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/telecom/TelecomGlobals;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/TelecomGlobals;->INSTANCE:Lcom/android/server/telecom/TelecomGlobals;

    return-object v0
.end method

.method private initializeForExtra(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/android/server/telecom/BluetoothVoIPService;->start(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/server/telecom/LowBatteryManager;->init(Landroid/content/Context;)V

    const-string v0, "auto_reject_notification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->newInstance(Landroid/content/Context;)V

    :cond_0
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsSessionObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/telecom/TelecomGlobals$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/TelecomGlobals$3;-><init>(Lcom/android/server/telecom/TelecomGlobals;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsSessionObserver:Landroid/database/ContentObserver;

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants$Cs;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsSessionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->getInstance()Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->telephonyManager(Landroid/content/Context;)V

    :cond_3
    const-string v0, "tmo_echolocate_logger"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/EcholocateHandoverMgr;->init(Landroid/content/Context;)V

    :cond_4
    const-string v0, "ltn_auto_csp"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AutoCSP"

    const-string v1, "Binding to AutoCSP Service "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.server.telecom.IAutoCSP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/telecom/TelecomGlobals;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/TelecomGlobals;->autoCSPConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_5
    const-string v0, "support_memo_uuid_for_calllog"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "use_action_memo_duringcall"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "com.samsung.android.snote"

    invoke-static {p1, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {p1}, Lcom/android/server/telecom/secutils/SecActionMemoManager;->init(Landroid/content/Context;)Lcom/android/server/telecom/secutils/SecActionMemoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mActionMemoManager:Lcom/android/server/telecom/secutils/SecActionMemoManager;

    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableWhitepages"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/whitepages/nameid/NameIDHelper;->init(Landroid/content/Context;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public getAutoCSP()Lcom/android/server/telecom/IAutoCSP;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mAutoCSP:Lcom/android/server/telecom/IAutoCSP;

    return-object v0
.end method

.method public getCallsManager()Lcom/android/server/telecom/CallsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3

    sget-object v0, Lcom/android/server/telecom/TelecomGlobals;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMWindowStyle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/TelecomGlobals;->mWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method public getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    return-object v0
.end method

.method public getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    return-object v0
.end method

.method initialize(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/TelecomGlobals;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Attempting to intialize TelecomGlobals a second time."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/server/telecom/TelecomGlobals;->TAG:Ljava/lang/String;

    const-string v1, "TelecomGlobals initializing"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeature(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->initialize(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/telecom/MissedCallNotifier;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/MissedCallNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    new-instance v0, Lcom/android/server/telecom/PhoneAccountRegistrar;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/PhoneAccountRegistrar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    new-instance v0, Lcom/android/server/telecom/CallsManager;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/TelecomGlobals;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    iget-object v3, p0, Lcom/android/server/telecom/TelecomGlobals;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/telecom/CallsManager;-><init>(Landroid/content/Context;Lcom/android/server/telecom/MissedCallNotifier;Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-static {v0}, Lcom/android/server/telecom/CallsManager;->initialize(Lcom/android/server/telecom/CallsManager;)V

    const-string v0, "CallsManager initialized"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getInCallController()Lcom/android/server/telecom/InCallController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mInCallController:Lcom/android/server/telecom/InCallController;

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->start(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomGlobals;->initializeForExtra(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomGlobals;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/telecom/TelecomGlobals;->USER_SWITCHED_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomGlobals;->mFeatureChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/telecom/TelecomGlobals;->FEATURE_CHANGED_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "tmo_echolocate_logger"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getInstance()Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->startEcholocate()V

    goto :goto_0
.end method

.method public isPenWindow()Z
    .locals 3

    sget-object v0, Lcom/android/server/telecom/TelecomGlobals;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPenWindow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/telecom/TelecomGlobals;->mIsPenMultiwindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mIsPenMultiwindow:Z

    return v0
.end method

.method public processChangeInContent(I)V
    .locals 3

    sget-object v0, Lcom/android/server/telecom/TelecomGlobals;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processChangeInContent::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager;->onChangeInContent(I)V

    return-void
.end method

.method public registerRcsObserver(I)V
    .locals 4

    sget-object v0, Lcom/android/server/telecom/TelecomGlobals;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRcsObserver::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/telecom/rcs/RcsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/telecom/rcs/RcsContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/rcs/RcsContentObserver;->registerSelfAsObserver(Landroid/content/ContentResolver;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/telecom/rcs/RcsCapaObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/telecom/rcs/RcsCapaObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomGlobals;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/rcs/RcsCapaObserver;->registerSelfAsObserver(Landroid/content/ContentResolver;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/telecom/TelecomGlobals;->mWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    sget-object v0, Lcom/android/server/telecom/TelecomGlobals;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMWindowStyle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/TelecomGlobals;->mWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setPenWindow(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/server/telecom/TelecomGlobals;->mIsPenMultiwindow:Z

    sget-object v0, Lcom/android/server/telecom/TelecomGlobals;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPenWindow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/telecom/TelecomGlobals;->mIsPenMultiwindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public unRegisterRcsObserver(I)V
    .locals 3

    sget-object v0, Lcom/android/server/telecom/TelecomGlobals;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterRcsObserver::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

    invoke-virtual {v0}, Lcom/android/server/telecom/rcs/RcsContentObserver;->unregisterSelfAsObseverAndCloseCursor()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/server/telecom/rcs/RcsCapaObserver;->unregisterSelfAsObseverAndCloseCursor()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

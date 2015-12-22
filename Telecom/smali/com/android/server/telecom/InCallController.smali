.class public final Lcom/android/server/telecom/InCallController;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "InCallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/InCallController$InCallServiceConnection;
    }
.end annotation


# static fields
.field private static final CONNECTION_TO_CALL_CAPABILITY:[I


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

.field private final mCallListener:Lcom/android/server/telecom/Call$Listener;

.field private final mContext:Landroid/content/Context;

.field private mDelayedEmergencyCall:Lcom/android/server/telecom/Call;

.field private final mHandler:Landroid/os/Handler;

.field private final mInCallComponentName:Landroid/content/ComponentName;

.field private final mInCallServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telecom/IInCallService;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingToUnbind:Z

.field private final mSecInCallController:Lcom/android/server/telecom/secutils/SecInCallController;

.field private final mServiceConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/telecom/InCallController$InCallServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mSimPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mSwisAgentComponentName:Landroid/content/ComponentName;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/telecom/InCallController;->CONNECTION_TO_CALL_CAPABILITY:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x4
        0x4
        0x8
        0x8
        0x80000
        0x80000
        0x100000
        0x100000
        0x20
        0x20
        0x40
        0x40
        0x80
        0x80
        0x100
        0x100
        0x200
        0x200
        0x400
        0x400
        0x800
        0x800
        0x1000
        0x1000
        0x2000
        0x2000
        0x4000
        0x4000
        0x40000
        0x40000
        0x200000
        0x200000
        0x20000
        0x20000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    new-instance v0, Lcom/android/server/telecom/InCallController$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/InCallController$1;-><init>(Lcom/android/server/telecom/InCallController;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallListener:Lcom/android/server/telecom/Call$Listener;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    new-instance v0, Lcom/android/server/telecom/CallIdMapper;

    const-string v1, "InCall"

    invoke-direct {v0, v1}, Lcom/android/server/telecom/CallIdMapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    new-instance v0, Lcom/android/server/telecom/InCallController$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/InCallController$2;-><init>(Lcom/android/server/telecom/InCallController;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/telecom/InCallController$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/InCallController$3;-><init>(Lcom/android/server/telecom/InCallController;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const v2, 0x7f080002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const v2, 0x7f080007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/telecom/InCallController;->mSwisAgentComponentName:Landroid/content/ComponentName;

    new-instance v0, Lcom/android/server/telecom/secutils/SecInCallController;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-direct {v0, v1, v2}, Lcom/android/server/telecom/secutils/SecInCallController;-><init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/CallIdMapper;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mSecInCallController:Lcom/android/server/telecom/secutils/SecInCallController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mDelayedEmergencyCall:Lcom/android/server/telecom/Call;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/InCallController;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/InCallController;->onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/InCallController;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->onDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/InCallController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->bindExceptWithSecInCallUI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/InCallController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->registerForServiceStateChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/telecom/InCallController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->unregisterForServiceStateChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/telecom/InCallController;)Lcom/android/server/telecom/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mDelayedEmergencyCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->addCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/telecom/InCallController;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/InCallController;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/InCallController;->toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;

    move-result-object v0

    return-object v0
.end method

.method private addCall(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->addCall(Lcom/android/server/telecom/Call;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->setTelecomCallId(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallListener:Lcom/android/server/telecom/Call$Listener;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    :cond_0
    return-void
.end method

.method private bind(Lcom/android/server/telecom/Call;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.telecom.InCallService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_0

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_INCALL_SERVICE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "android.permission.CONTROL_INCALL_EXPERIENCE"

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InCallService does not have BIND_INCALL_SERVICE permission: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InCall UI does not have CONTROL_INCALL_EXPERIENCE permission: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v3, Lcom/android/server/telecom/InCallController$InCallServiceConnection;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/android/server/telecom/InCallController$InCallServiceConnection;-><init>(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/InCallController$1;)V

    new-instance v7, Landroid/content/ComponentName;

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v0, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Attempting to bind to InCall %s, is dupe? %b "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v6, v8, v2

    iget-object v6, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-static {p0, v0, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.telecom.InCallService"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mSwisAgentComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    const-string v0, "- bind as important component"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x41

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v8, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v3, v0, v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mSecInCallController:Lcom/android/server/telecom/secutils/SecInCallController;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecInCallController;->bind()V

    :cond_9
    return-void
.end method

.method private bindExceptWithSecInCallUI()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/InCallController;->bindExceptWithSecInCallUI(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method private bindExceptWithSecInCallUI(Lcom/android/server/telecom/Call;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.telecom.InCallService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "bindExceptWithSecInCallUI start"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_0

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_INCALL_SERVICE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "android.permission.CONTROL_INCALL_EXPERIENCE"

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InCallService does not have BIND_INCALL_SERVICE permission: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InCall UI does not have CONTROL_INCALL_EXPERIENCE permission: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v3, Lcom/android/server/telecom/InCallController$InCallServiceConnection;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/android/server/telecom/InCallController$InCallServiceConnection;-><init>(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/InCallController$1;)V

    new-instance v7, Landroid/content/ComponentName;

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v0, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Attempting to bind to InCall %s, is dupe? %b "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v6, v8, v2

    iget-object v6, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-static {p0, v0, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.telecom.InCallService"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mSwisAgentComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    const-string v0, "- bind as important component"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x41

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v8, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v3, v0, v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    const-string v0, "bindExceptWithSecInCallUI stop"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static convertConnectionToCallCapabilities(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/server/telecom/InCallController;->CONNECTION_TO_CALL_CAPABILITY:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/android/server/telecom/InCallController;->CONNECTION_TO_CALL_CAPABILITY:[I

    aget v2, v2, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/telecom/InCallController;->CONNECTION_TO_CALL_CAPABILITY:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "onConnected to %s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "activate_your_phone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isOtaSpNumber(Ljava/util/Collection;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected - isOtaSpNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/InCallController;->unbind()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/internal/telecom/IInCallService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallService;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/android/server/telecom/InCallAdapter;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-direct {v0, v2, v3}, Lcom/android/server/telecom/InCallAdapter;-><init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/CallIdMapper;)V

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IInCallService;->setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Adding %s calls to InCallService after onConnected: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    :try_start_1
    const-string v3, "addCall after binding: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/telecom/InCallController;->addCall(Lcom/android/server/telecom/Call;)V

    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/InCallController;->toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IInCallService;->addCall(Landroid/telecom/ParcelableCall;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Failed to set the in-call adapter."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/InCallController;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->canAddCall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/InCallController;->onCanAddCallChanged(Z)V

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "keep_incallui_bind_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->unbindExceptWithSecInCallUI()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/telecom/InCallController;->unbind()V

    goto :goto_2
.end method

.method private onDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onDisconnected from %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "In-call UI %s disconnected."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->disconnectAllCalls()V

    invoke-virtual {p0}, Lcom/android/server/telecom/InCallController;->unbind()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "In-Call Service %s suddenly disconnected"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/InCallController$InCallServiceConnection;

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private registerForServiceStateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mSimPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mSimPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private static removeCapability(II)I
    .locals 1

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;
    .locals 26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getConnectionCapabilities()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/telecom/InCallController;->convertConnectionToCallCapabilities(I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isRespondViaSmsCapable()Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x20

    :cond_0
    const-string v3, "disable_add_call_mute_hold_during_emergency_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_1

    and-int/lit8 v2, v2, -0x41

    and-int/lit8 v2, v2, -0x3

    :cond_1
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->phoneIsCdma()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v3

    if-eqz v3, :cond_2

    and-int/lit8 v2, v2, -0x5

    :cond_2
    const-string v3, "china_cdma_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->phoneIsCdma(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x2

    or-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, -0x5

    :cond_3
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->hasEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/android/server/telecom/InCallController;->removeCapability(II)I

    move-result v8

    :goto_0
    const/4 v2, 0x3

    if-ne v5, v2, :cond_4

    const/16 v2, 0x100

    invoke-static {v8, v2}, Lcom/android/server/telecom/InCallController;->removeCapability(II)I

    move-result v2

    const/16 v3, 0x200

    invoke-static {v2, v3}, Lcom/android/server/telecom/InCallController;->removeCapability(II)I

    move-result v8

    :cond_4
    const/16 v2, 0x8

    if-ne v5, v2, :cond_5

    const/4 v5, 0x7

    :cond_5
    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v3, v2}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v20

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getChildCalls()Ljava/util/List;

    move-result-object v6

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v6, v2

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/telecom/Call;

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-lez v3, :cond_7

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v3, v2}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v6, v2

    if-eqz v2, :cond_9

    move-wide v10, v6

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v12

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDisplayNamePresentation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v14

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v2

    new-instance v24, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/telecom/Call;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v6, v2}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    goto :goto_2

    :cond_c
    const/4 v14, 0x0

    goto :goto_3

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v9, 0x1

    :goto_5
    new-instance v3, Landroid/telecom/ParcelableCall;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDisplayNamePresentation()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDualPhoneNumber()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v18

    if-eqz p2, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v19

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    invoke-direct/range {v3 .. v25}, Landroid/telecom/ParcelableCall;-><init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;)V

    return-object v3

    :cond_e
    const/4 v9, 0x0

    goto :goto_5

    :cond_f
    const/16 v19, 0x0

    goto :goto_6

    :cond_10
    move v8, v2

    goto/16 :goto_0
.end method

.method private unbindExceptWithSecInCallUI()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/server/telecom/InCallController;->mPendingToUnbind:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/android/server/telecom/InCallController;->mPendingToUnbind:Z

    invoke-virtual {p0}, Lcom/android/server/telecom/InCallController;->unbind()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    const-string v1, "Unbinding from InCallService unbind"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private unregisterForServiceStateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mSimPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mSimPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private updateCall(Lcom/android/server/telecom/Call;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    const-string v5, "reduce_waste_point"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkActiveHoldCallExist()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPreviousState()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    if-eq v5, v6, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPreviousState()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    if-ne v5, v6, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->needToUpdateEmerencyCallState(Lcom/android/server/telecom/Call;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/server/telecom/InCallController;->toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;

    move-result-object v1

    const-string v5, "updateCall %s ==> %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object v1, v6, v2

    invoke-static {p0, v5, v6}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IInCallService;->updateCall(Landroid/telecom/ParcelableCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    const-string v0, "ui_for_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->initializeVTSpeakerState(Lcom/android/server/telecom/Call;)V

    :cond_6
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->updateCallType(Lcom/android/server/telecom/Call;)V

    const-string v0, "reduce_waste_point"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setPreviousState(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/InCallController;->bind(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method bringToForeground(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallService;->bringToForeground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "Asking to bring unbound in-call UI to foreground."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    const-string v0, "mInCallServices (InCalls registered):"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string v0, "mServiceConnections (InCalls bound):"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public forceUpdateCall(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mSecInCallController:Lcom/android/server/telecom/secutils/SecInCallController;

    return-object v0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Calling onAudioStateChanged, audioState: %s -> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/internal/telecom/IInCallService;->onAudioStateChanged(Landroid/telecom/AudioState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget v0, p2, Landroid/telecom/AudioState;->route:I

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->saveVTSpeakerState(I)V

    :cond_1
    return-void
.end method

.method public onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->bind(Lcom/android/server/telecom/Call;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "onCallAdded: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->addCall(Lcom/android/server/telecom/Call;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/telecom/InCallController;->toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;

    move-result-object v1

    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IInCallService;->addCall(Landroid/telecom/ParcelableCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    const-string v0, "keep_incallui_bind_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->bindExceptWithSecInCallUI(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 3

    const-string v0, "onCallRemoved: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "keep_incallui_bind_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->unbindExceptWithSecInCallUI()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallListener:Lcom/android/server/telecom/Call$Listener;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->removeCall(Lcom/android/server/telecom/Call;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/InCallController;->unbind()V

    goto :goto_0
.end method

.method public onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onCanAddCallChanged : %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallService;->onCanAddCallChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChangeInContent(I)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeInContent::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling onChangeInContent of InCallService::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallService;->onChangeInContent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public onIsConferencedChanged(Lcom/android/server/telecom/Call;)V
    .locals 3

    const-string v0, "onIsConferencedChanged %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Calling onPostDialWait, remaining = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/android/internal/telecom/IInCallService;->setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method unbind()V
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unbinding from InCallService %s"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mSecInCallController:Lcom/android/server/telecom/secutils/SecInCallController;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecInCallController;->unbind()V

    return-void
.end method

.method public unbindAfterCallRemoved()V
    .locals 2

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/InCallController;->mPendingToUnbind:Z

    const-string v0, "pending to unbind InCallController"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/InCallController;->unbind()V

    goto :goto_0
.end method

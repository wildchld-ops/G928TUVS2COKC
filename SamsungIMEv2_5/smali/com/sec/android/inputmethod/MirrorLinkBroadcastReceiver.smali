.class public Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MirrorLinkBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;
    }
.end annotation


# static fields
.field public static final MESSAGE_CREATE_ALERT_DIALOG:I = 0x65

.field public static final MESSAGE_UPDATE_VIEW:I = 0x64

.field private static final MIRROR_LINK_ACTION:Ljava/lang/String; = "com.samsung.android.app.mirrorlink.sip"

.field private static final MIRROR_LINK_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.mirrorlink.commonapi.CommonAPIService"

.field public static final MIRROR_LINK_CONNECTED:Ljava/lang/String; = "mlconnected"

.field private static final MIRROR_LINK_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.mirrorlink"

.field private static mMirrorLinkConnection:Landroid/content/ServiceConnection;

.field private static volatile mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;


# instance fields
.field mCertificationListener:Lcom/mirrorlink/android/commonapi/ICertificationListener;

.field mCertificationManager:Lcom/mirrorlink/android/commonapi/ICertificationManager;

.field mConnectionListener:Lcom/mirrorlink/android/commonapi/IConnectionListener;

.field mConnectionManager:Lcom/mirrorlink/android/commonapi/IConnectionManager;

.field mContext:Landroid/content/Context;

.field mDeviceStatusListener:Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

.field mDeviceStatusManager:Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

.field mEventMappingListener:Lcom/mirrorlink/android/commonapi/IEventMappingListener;

.field mEventMappingManager:Lcom/mirrorlink/android/commonapi/IEventMappingManager;

.field protected final mHandler:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;

.field mInputManager:Lcom/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;-><init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mHandler:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;

    new-instance v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;-><init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mConnectionListener:Lcom/mirrorlink/android/commonapi/IConnectionListener;

    new-instance v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$3;-><init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mEventMappingListener:Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    new-instance v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$4;-><init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mDeviceStatusListener:Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    new-instance v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$5;-><init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mCertificationListener:Lcom/mirrorlink/android/commonapi/ICertificationListener;

    return-void
.end method

.method static synthetic access$000()Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    .locals 1

    sget-object v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mirrorlink/android/commonapi/ICommonAPIService;)Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    .locals 0

    sput-object p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->changeToNormalKeyboard()V

    return-void
.end method

.method private changeToNormalKeyboard()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setIsCurrentCarModeKnobSip(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setIsCurrentCarModeTouchSip(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCarInDrivingMode(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mHandler:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;->SendUpdateViewMessage()V

    return-void
.end method

.method private connect()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mirrorlink.android.service.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.mirrorlink"

    const-string v3, "com.samsung.android.mirrorlink.commonapi.CommonAPIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mMirrorLinkConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private createService()V
    .locals 1

    new-instance v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;-><init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V

    sput-object v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mMirrorLinkConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    sget-object v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mMirrorLinkConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mMirrorLinkConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->changeToNormalKeyboard()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mMirrorLinkConnection:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method

.method public getService()Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    .locals 1

    sget-object v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const-string v0, "com.samsung.android.app.mirrorlink.sip"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mlconnected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->createService()V

    invoke-direct {p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->connect()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->disconnect()V

    goto :goto_0
.end method

.class public final Landroid/media/RemoteDisplayCallback;
.super Ljava/lang/Object;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplayCallback$1;,
        Landroid/media/RemoteDisplayCallback$Listener;,
        Landroid/media/RemoteDisplayCallback$WfdStateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteDisplayCallback"

.field private static mAudioManager:Landroid/media/AudioManager; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mCpuBooster:Landroid/os/DVFSHelper; = null

.field private static mCpuLockEnabled:Z = false

.field private static final mDefaultFreq:I = 0xf4240

.field private static mDongleVer:Ljava/lang/String;

.field private static mHdcpSuspend:Z

.field private static mIsVideoCase:Z

.field private static mListener:Landroid/media/RemoteDisplayCallback$Listener;

.field private static mRemoteIP:Ljava/lang/String;

.field private static mRenameCapablity:Z

.field private static mUibcAvailable:Z

.field private static mUibcSinkVer:Ljava/lang/String;

.field private static mUpdateURL:Ljava/lang/String;

.field private static mWfdMode:I


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStreamVol:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z

    sput v1, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mUibcAvailable:Z

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mUibcSinkVer:Ljava/lang/String;

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    iput-object v2, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MAR_SLAVE_SMB"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;

    invoke-direct {v1, p0, v2}, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;-><init>(Landroid/media/RemoteDisplayCallback;Landroid/media/RemoteDisplayCallback$1;)V

    iput-object v1, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private StartHDCPSuspend()V
    .locals 4

    const-string v2, "RemoteDisplayCallback"

    const-string v3, "StartHDCPSuspend"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10408b6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "sus"

    invoke-direct {p0, v2, v1}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()Landroid/media/RemoteDisplayCallback$Listener;
    .locals 1

    sget-object v0, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0

    sput p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    return p0
.end method

.method static synthetic access$400(Landroid/media/RemoteDisplayCallback;)I
    .locals 1

    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    return v0
.end method

.method static synthetic access$402(Landroid/media/RemoteDisplayCallback;I)I
    .locals 0

    iput p1, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    return v0
.end method

.method static synthetic access$600()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private broadcastDongleUpdateUrl(Ljava/lang/String;)V
    .locals 4

    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDongleUpdateUrl << Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastDongleVerToFota(Ljava/lang/String;)V
    .locals 4

    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDongleVerToFota << Ver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.START_WFD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastWfdConnectionType(I)V
    .locals 4

    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastWfdConnectionType mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "CONNECTION_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private lockCPUFreq(I)V
    .locals 9

    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    new-instance v5, Landroid/os/DVFSHelper;

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    const/16 v7, 0xc

    invoke-direct {v5, v6, v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v5, :cond_2

    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v4

    const/4 v3, 0x0

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    aget v5, v4, v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v1, 0x1

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    aget v5, v4, v1

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v2, v5, :cond_0

    aget v5, v4, v1

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v6, "CPU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WFD lock DVFS_MIN_LIMIT :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    sput-boolean v5, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v5, "RemoteDisplayCallback"

    const-string v6, "cpuBooster.acquire is failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    :cond_0
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    sget-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-nez v0, :cond_2

    sput-object p1, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    :cond_2
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    sput-object v2, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    sput-object v2, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    sput v3, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    sput-boolean v3, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    const-string v0, "RemoteDisplayCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAudioManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unlockCPUFreq()V
    .locals 3

    sget-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    sput-object v1, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "RemoteDisplayCallback"

    const-string v2, "Wfd release DVFS_MIN_LIMIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteDisplayCallback"

    const-string/jumbo v2, "mDVFSLock.release is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isDongleRenameAvailable()Z
    .locals 1

    sget-boolean v0, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z

    return v0
.end method

.method public onNoti(ILjava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNoti << msg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check!! << msg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "remoteIP"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    const-string/jumbo v6, "suspend"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    const-string/jumbo v6, "sink_ver"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    const-string v7, "AA00"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    sput-object v6, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    :cond_1
    const-string/jumbo v6, "wlan.wfd.dongle"

    sget-object v7, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "renameAvailable"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/media/RemoteDisplayCallback;->broadcastDongleVerToFota(Ljava/lang/String;)V

    sget-boolean v6, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    if-eqz v6, :cond_2

    invoke-direct {p0}, Landroid/media/RemoteDisplayCallback;->StartHDCPSuspend()V

    :cond_2
    const-string v6, "RemoteDisplayCallback"

    const-string v7, "WFD client connected broadcast sent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_2
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    sget v5, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-nez v5, :cond_4

    sget v6, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-ne v6, v9, :cond_4

    sput-boolean v9, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    :goto_2
    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNoti received : WFD_NOTI_TO_APP_TRANSPORT_MODE, prevWfdMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mWfdMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIsVideoCase = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v6, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-ne v6, v9, :cond_7

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    sget-boolean v6, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    if-eqz v6, :cond_5

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v6, :cond_0

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v6}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    sput-boolean v6, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    goto :goto_2

    :cond_5
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v6, :cond_6

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    iput v6, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    :cond_6
    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get native STREAM_MUSIC volume :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send command: curr stream vol @ tcp start! << "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "vol"

    iget v7, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    sget v6, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-direct {p0, v6}, Landroid/media/RemoteDisplayCallback;->broadcastWfdConnectionType(I)V

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v6, :cond_0

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    sget v7, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-interface {v6, v7}, Landroid/media/RemoteDisplayCallback$Listener;->onTransportChanged(I)V

    goto/16 :goto_0

    :sswitch_3
    const-string v6, "RemoteDisplayCallback"

    const-string v7, "Noti2App_UIBC Data: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "UibcAvailable"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Landroid/media/RemoteDisplayCallback;->mUibcAvailable:Z

    const-string v6, "RemoteDisplayCallback"

    const-string v7, "Calling starStopUIBCVirtualSoftkey"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Landroid/media/RemoteDisplayCallback;->mUibcAvailable:Z

    invoke-virtual {p0, v6}, Landroid/media/RemoteDisplayCallback;->startStopUIBCVirtualSoftkey(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const-string v6, "RemoteDisplayCallback"

    const-string v7, "BroadCast UIBC Data"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v6, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :sswitch_4
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "SinkFwUrl"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/media/RemoteDisplayCallback;->broadcastDongleUpdateUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v6, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_5
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    const-string v6, "RemoteDisplayCallback"

    const-string v7, "WFD noti to App - weak network connection.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v6, :cond_0

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v6}, Landroid/media/RemoteDisplayCallback$Listener;->onWeakNetwork()V

    goto/16 :goto_0

    :sswitch_6
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "level"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    :goto_5
    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WFD noti to App - update QoS level : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v6, :cond_0

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v6, v2}, Landroid/media/RemoteDisplayCallback$Listener;->onQoSLevelChanged(I)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v6, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :sswitch_7
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    const-string v6, "RemoteDisplayCallback"

    const-string v7, "WFD noti to App - WFD_NOTI_TO_APP_HEADSET_CONNECTED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v6, :cond_0

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v6}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_2
        0x9 -> :sswitch_3
        0x14 -> :sswitch_4
        0x1e -> :sswitch_5
        0x28 -> :sswitch_6
        0x32 -> :sswitch_7
        0x64 -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "RemoteDisplayCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "res"

    invoke-direct {p0, v0, p1}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public startStopUIBCVirtualSoftkey(Z)V
    .locals 6

    const-string v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startStopUIBCVirtualSoftkey() isStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.uibcvirtualsoftkey"

    const-string v4, "com.sec.android.uibcvirtualsoftkey.UIBCVirtualSoftkeyService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.UIBCVIRTUALSOFTKEY_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "Start"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "RemoteDisplayCallback"

    const-string v4, "Exception showHideUIBCVirtualSoftkey() : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

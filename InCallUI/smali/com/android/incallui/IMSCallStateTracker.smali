.class public Lcom/android/incallui/IMSCallStateTracker;
.super Ljava/lang/Object;
.source "IMSCallStateTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mVoWifiOnPrev:Z

.field private mVoWifiReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/IMSCallStateChangeReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/IMSCallStateTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    const-string v1, "Creator..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/IMSCallStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/IMSCallStateTracker;->isVoWifiRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/IMSCallStateTracker;->mVoWifiOnPrev:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/IMSCallStateTracker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/IMSCallStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/IMSCallStateTracker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/IMSCallStateTracker;->mVoWifiOnPrev:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/IMSCallStateTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/IMSCallStateTracker;->mVoWifiOnPrev:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/IMSCallStateTracker;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/IMSCallStateTracker;->mVoWifiReceivers:Ljava/util/List;

    return-object v0
.end method

.method private registerIIMSListener()V
    .locals 5

    sget-object v2, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "registerIIMSListener"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/incallui/IMSCallStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "registerIIMSListener - imsinterface is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/incallui/IMSCallStateTracker$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/IMSCallStateTracker$1;-><init>(Lcom/android/incallui/IMSCallStateTracker;)V

    iput-object v2, p0, Lcom/android/incallui/IMSCallStateTracker;->mImsListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/IMSCallStateTracker;->mImsListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    sget-object v2, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "registerIIMSListener done"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerIIMSListener error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterIIMSListener()V
    .locals 4

    sget-object v2, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "unregisterIIMSListener"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/incallui/IMSCallStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "unregisterIIMSListener - imsinterface is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/IMSCallStateTracker;->mImsListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/IMSCallStateTracker;->mImsListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->deRegisterForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    :cond_1
    sget-object v2, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "unregisterIIMSListener done"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/IMSCallStateTracker;->mImsListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public isIMSRegistered()Z
    .locals 3

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/incallui/IMSCallStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    const-string v2, "imsInterface is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegistered()Z

    move-result v1

    goto :goto_0
.end method

.method public isVoWifiRegistered()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/IMSCallStateTracker;->isIMSRegistered()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/IMSCallStateTracker;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    sget-object v3, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    const-string v4, "telephonyManager is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_1
    sget-object v2, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoWifiRegistered : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public registerVoWifiListener(Lcom/android/incallui/IMSCallStateChangeReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/IMSCallStateTracker;->mVoWifiReceivers:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/IMSCallStateTracker;->mVoWifiReceivers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/IMSCallStateTracker;->mVoWifiReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startTracking()V
    .locals 2

    sget-object v0, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    const-string v1, "startTracking()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/IMSCallStateTracker;->isVoWifiRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/IMSCallStateTracker;->mVoWifiOnPrev:Z

    invoke-direct {p0}, Lcom/android/incallui/IMSCallStateTracker;->registerIIMSListener()V

    return-void
.end method

.method public stopTracking()V
    .locals 2

    sget-object v0, Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;

    const-string v1, "stopTracking()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/IMSCallStateTracker;->unregisterIIMSListener()V

    return-void
.end method

.method public unregisterVoWifiListener(Lcom/android/incallui/IMSCallStateChangeReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/IMSCallStateTracker;->mVoWifiReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/IMSCallStateTracker;->mVoWifiReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/incallui/IMSCallStateTracker;->mVoWifiReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/IMSCallStateTracker;->mVoWifiReceivers:Ljava/util/List;

    :cond_0
    return-void
.end method

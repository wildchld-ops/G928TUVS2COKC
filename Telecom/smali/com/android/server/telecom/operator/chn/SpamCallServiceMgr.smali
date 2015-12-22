.class public Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;
.super Ljava/lang/Object;
.source "SpamCallServiceMgr.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mSpamCallInfoCache:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

.field public static myService:Lcom/bst/spamcall/numbermark/IGetNumMarkService;

.field private static sMe:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;


# instance fields
.field public checkserviceConnection:Landroid/content/ServiceConnection;

.field mBinderGetNumMarkListener:Lcom/bst/spamcall/numbermark/IBinderGetNumMarkListener;

.field mBinderReportNumListener:Lcom/bst/spamcall/numbermark/IBinderReportNumListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field public mNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->DBG:Z

    const-class v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->TAG:Ljava/lang/String;

    sput-object v2, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    sput-object v2, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    sput-object v2, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/IGetNumMarkService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    new-instance v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$1;-><init>(Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$2;-><init>(Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mBinderGetNumMarkListener:Lcom/bst/spamcall/numbermark/IBinderGetNumMarkListener;

    new-instance v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$4;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$4;-><init>(Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mBinderReportNumListener:Lcom/bst/spamcall/numbermark/IBinderReportNumListener;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mSpamCallInfoCache:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->init()Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    goto :goto_0
.end method

.method static init()Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->getInstance()Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mSpamCallInfoCache:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    invoke-direct {v0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;-><init>()V

    sput-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    :goto_0
    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times! sInstance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public CancleReport(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/IGetNumMarkService;

    invoke-interface {v0, p1}, Lcom/bst/spamcall/numbermark/IGetNumMarkService;->CancleReport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0800bb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "occur RemoteException"

    invoke-static {v0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callIntent()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bst.spamcall.numbermark.IGetNumberMarkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.bst.spamcall"

    const-string v3, "com.bst.spamcall.numbermark.GetNumInfoService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callIntent - intent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method public doCheck(Ljava/lang/String;Z)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mNum:Ljava/lang/String;

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$3;-><init>(Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;ZZ)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public doReport(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$5;-><init>(Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

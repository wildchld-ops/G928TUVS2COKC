.class public Landroid/sec/clipboard/ClipboardUIManager;
.super Ljava/lang/Object;
.source "ClipboardUIManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardUIManager"

.field private static mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

.field private static mClipboardMode:I

.field private static sInstance:Landroid/sec/clipboard/ClipboardUIManager;


# instance fields
.field mAdapter:Landroid/widget/BaseAdapter;

.field private mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mParentView:Landroid/view/View;

.field private mRecursiveCall:Ljava/lang/Runnable;

.field private mViewID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    const/4 v0, 0x0

    sput v0, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mAdapter:Landroid/widget/BaseAdapter;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager$1;-><init>(Landroid/sec/clipboard/ClipboardUIManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mRecursiveCall:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mAdapter:Landroid/widget/BaseAdapter;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager$1;-><init>(Landroid/sec/clipboard/ClipboardUIManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mRecursiveCall:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->initVariable()V

    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardExManager;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method static synthetic access$002(Landroid/sec/clipboard/ClipboardUIManager;Landroid/sec/clipboard/ClipboardExManager;)Landroid/sec/clipboard/ClipboardExManager;
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    return-object p1
.end method

.method static synthetic access$100(Landroid/sec/clipboard/ClipboardUIManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private closeClopboardUI(Z)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    invoke-interface {v1, v2, p1}, Landroid/sec/clipboard/IClipboardUIManager;->dismiss(IZ)V

    const/4 v1, 0x0

    sput-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ClipboardUIManager"

    const-string v2, "Can not close Clipboard, RemoteException happened"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;
    .locals 1

    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    :cond_0
    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    return-object v0
.end method

.method private initVariable()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mParentView:Landroid/view/View;

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    return-void
.end method

.method private setupInRuntime()Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "clipboarduiservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardUIManager;

    move-result-object v2

    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-nez v2, :cond_0

    const-string v2, "ClipboardUIManager"

    const-string v3, "Failed to get ClipboardService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private setupInRuntimeForKeep()Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "penableservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardUIManager;

    move-result-object v2

    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-nez v2, :cond_0

    const-string v2, "ClipboardUIManager"

    const-string v3, "Failed to get ClipboardService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private showClipBoard(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z
    .locals 6

    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIManager showClipBoard()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardUIManager;->mRecursiveCall:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardUIManager;->mRecursiveCall:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardUIManager;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :try_start_0
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v3, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardUIManager;->show(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkScrapMode()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardUIManager;->getClipboardUIMode()I

    move-result v3

    sput v3, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget v3, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardMode:I

    if-ne v3, v1, :cond_1

    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIManager checkScrapMode() : ScrapMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget v3, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardMode:I

    if-ne v3, v1, :cond_2

    :goto_3
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_1
    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIManager checkScrapMode() : Normal Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3
.end method

.method public dismiss()V
    .locals 2

    const-string v0, "ClipboardUIManager"

    const-string v1, "ClipboardUIManager closeClipBoard()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardUIManager;->closeClopboardUI(Z)Z

    return-void
.end method

.method public enabledDismissIntent(Z)V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 2

    const-string v0, "ClipboardUIManager"

    const-string v1, "Finish ClipboardService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/ClipboardUIManager;->finish(Z)V

    return-void
.end method

.method public finish(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "ClipboardUIManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardUIManager;->closeClopboardUI(Z)Z

    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    return-void
.end method

.method public getPreviewIconXpos()F
    .locals 5

    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIManager getPreviewIconXpos()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardUIManager;->getIconXpos()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPreviewIconYpos()F
    .locals 5

    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIManager getPreviewIconYpos()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardUIManager;->getIconYpos()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public hideFloatingIconForScrap()V
    .locals 3

    const-string v1, "ClipboardUIManager"

    const-string v2, "ClipboardUIManager hideFloatingIconForScrap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardUIManager;->hideFloatingIconForScrap()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 4

    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIManager isShowingClipBoard()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardUIManager;->isShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public sendCropRectForAnimation(Landroid/graphics/Rect;Z)V
    .locals 7

    const-string v0, "ClipboardUIManager"

    const-string v1, "ClipboardUIManager hideFloatingIconForScrap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "ClipboardUIManager"

    const-string v1, "ClipboardUIManager cropRect is null. so, can not sendCropRectforAni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/sec/clipboard/IClipboardUIManager;->sendCropRectforAni(IIIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 4

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardUIManager > setPasteTargetViewInfo - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardUIManager;->setPasteTargetViewType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "ClipboardServiceEx"

    const-string v2, "mCBUIManager is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public show(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 2

    const-string v0, "ClipboardUIManager"

    const-string v1, "ClipboardUIManager show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/ClipboardUIManager;->showClipBoard(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    return-void
.end method

.method public showFloatingIconForScrap()V
    .locals 4

    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIManager showFloatingIconForScrap"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    const-string v3, "clipboardEx"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->showUIFloatingIcon()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardUIManager;->showFloatingIconForScrap()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

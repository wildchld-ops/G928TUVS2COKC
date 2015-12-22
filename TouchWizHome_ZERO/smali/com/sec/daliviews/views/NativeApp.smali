.class public Lcom/sec/daliviews/views/NativeApp;
.super Lcom/sec/daliviews/views/PeerBase;
.source "NativeApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/NativeApp$OnInitListener;
    }
.end annotation


# static fields
.field public static final CHECK_MEMORY_LEAK:Z = false

.field private static final TAG:Ljava/lang/String; = "NativeApp"

.field private static mPeerObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/views/PeerBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInitListener:Lcom/sec/daliviews/views/NativeApp$OnInitListener;

.field private mNativeInitialized:Z

.field private mSurfaceCreated:Z

.field private mSurfaceView:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/daliviews/views/NativeApp;->mPeerObjects:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeApp;->mNativeInitialized:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeApp;->mSurfaceCreated:Z

    return-void
.end method

.method private native attachRootView(JJ)V
.end method

.method private checkPeerObjects()V
    .locals 0

    return-void
.end method

.method private native clearTextureRecycler(J)V
.end method

.method private native deleteNativeApp(J)V
.end method

.method private native detachRootView(JJ)V
.end method

.method private native onIdle(J)V
.end method

.method private onNativeInit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeApp;->mNativeInitialized:Z

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeApp;->mInitListener:Lcom/sec/daliviews/views/NativeApp$OnInitListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeApp;->mInitListener:Lcom/sec/daliviews/views/NativeApp$OnInitListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/NativeApp$OnInitListener;->onNativeInit()V

    :cond_0
    return-void
.end method

.method private native onPause(J)V
.end method

.method private native onResume(J)V
.end method

.method private native onStop(J)V
.end method

.method public static registerPeerObject(Lcom/sec/daliviews/views/PeerBase;)V
    .locals 0

    return-void
.end method

.method private native setAssetManager(JLandroid/content/res/AssetManager;)V
.end method

.method private native setBackgroundColour(JFFFF)V
.end method

.method private native setCacheDir(JLjava/lang/String;)V
.end method

.method private native setGesturePredictionAmount(JI)V
.end method

.method private native setGesturePredictionMode(JI)V
.end method

.method private native setGestureSmoothingAmount(JF)V
.end method

.method private native setGestureSmoothingMode(JI)V
.end method

.method private native setGestureVelocityClipbox(JFFFF)V
.end method

.method private native setMinimumMotionBeforePan(JF)V
.end method

.method private native setResourceConnector(JJ)V
.end method

.method private static native setTextureScaleRatio(JI)V
.end method

.method private native surfaceChanged(JFFII)V
.end method

.method private native surfaceCreated(JLandroid/view/Surface;FFFII)V
.end method

.method private native surfaceDestroyed(J)V
.end method


# virtual methods
.method public attachRootView(Lcom/sec/daliviews/views/ContainerViewBase;)V
    .locals 4

    const-string v0, "NativeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachRootView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Peer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeApp;->attachRootView(JJ)V

    return-void
.end method

.method public clearTextureRecycler()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeApp;->clearTextureRecycler(J)V

    return-void
.end method

.method protected native create()J
.end method

.method public destroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeApp;->deleteNativeApp(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/NativeApp;->setPeer(J)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeApp;->checkPeerObjects()V

    return-void
.end method

.method protected native destroy(J)V
.end method

.method public detachRootView(Lcom/sec/daliviews/views/ContainerViewBase;)V
    .locals 4

    const-string v0, "NativeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detachRootView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Peer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeApp;->detachRootView(JJ)V

    return-void
.end method

.method public onIdle()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeApp;->onIdle(J)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeApp;->onPause(J)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeApp;->onResume(J)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeApp;->onStop(J)V

    return-void
.end method

.method public prepareForShutdown()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->surfaceDestroyed()V

    return-void
.end method

.method protected resetPeer()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->resetPeer()V

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeApp;->checkPeerObjects()V

    return-void
.end method

.method public setAssetManager(Landroid/content/res/AssetManager;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeApp;->setAssetManager(JLandroid/content/res/AssetManager;)V

    return-void
.end method

.method public setBackgroundColour(FFFF)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/NativeApp;->setBackgroundColour(JFFFF)V

    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeApp;->setCacheDir(JLjava/lang/String;)V

    return-void
.end method

.method public setGesturePredictionAmount(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeApp;->setGesturePredictionAmount(JI)V

    return-void
.end method

.method public setGesturePredictionMode(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeApp;->setGesturePredictionMode(JI)V

    return-void
.end method

.method public setGestureSmoothingAmount(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeApp;->setGestureSmoothingAmount(JF)V

    return-void
.end method

.method public setGestureSmoothingMode(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeApp;->setGestureSmoothingMode(JI)V

    return-void
.end method

.method public setGestureVelocityClipbox(FFFF)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/NativeApp;->setGestureVelocityClipbox(JFFFF)V

    return-void
.end method

.method public setMinimumMotionBeforePan(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    int-to-float v2, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/daliviews/views/NativeApp;->setMinimumMotionBeforePan(JF)V

    return-void
.end method

.method public setOnInitListener(Lcom/sec/daliviews/views/NativeApp$OnInitListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeApp;->mInitListener:Lcom/sec/daliviews/views/NativeApp$OnInitListener;

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeApp;->mNativeInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeApp;->mInitListener:Lcom/sec/daliviews/views/NativeApp$OnInitListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeApp;->mInitListener:Lcom/sec/daliviews/views/NativeApp$OnInitListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/NativeApp$OnInitListener;->onNativeInit()V

    :cond_0
    return-void
.end method

.method public setResourceConnector(Lcom/sec/daliviews/resource/ResourceConnector;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/resource/ResourceConnector;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeApp;->setResourceConnector(JJ)V

    return-void
.end method

.method public setTextureScaleRatio(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/sec/daliviews/views/NativeApp;->setTextureScaleRatio(JI)V

    return-void
.end method

.method public surfaceChanged(FFII)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/NativeApp;->surfaceChanged(JFFII)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/Surface;FFFII)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/views/NativeApp;->surfaceCreated(JLandroid/view/Surface;FFFII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeApp;->mSurfaceCreated:Z

    return-void
.end method

.method public surfaceDestroyed()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeApp;->mSurfaceCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeApp;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeApp;->surfaceDestroyed(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeApp;->mSurfaceCreated:Z

    :cond_0
    return-void
.end method

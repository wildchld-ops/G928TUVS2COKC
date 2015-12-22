.class public abstract Lcom/sec/daliviews/views/TextureView;
.super Lcom/sec/daliviews/views/ItemView;
.source "TextureView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDbgSurfaceNotReleasedBeforeCreated:Z

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field protected mSurface:Landroid/view/Surface;

.field protected mSurfaceLock:Ljava/lang/Object;

.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mUpdateTexture:Z

.field private prevSTHeight:I

.field private prevSTWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/views/TextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ItemView;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    iput-boolean v2, p0, Lcom/sec/daliviews/views/TextureView;->mUpdateTexture:Z

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/sec/daliviews/views/TextureView;->prevSTWidth:I

    iput v1, p0, Lcom/sec/daliviews/views/TextureView;->prevSTHeight:I

    iput-boolean v2, p0, Lcom/sec/daliviews/views/TextureView;->mDbgSurfaceNotReleasedBeforeCreated:Z

    invoke-direct {p0}, Lcom/sec/daliviews/views/TextureView;->init()V

    sget-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " TextureView() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    iput-boolean v2, p0, Lcom/sec/daliviews/views/TextureView;->mUpdateTexture:Z

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/sec/daliviews/views/TextureView;->prevSTWidth:I

    iput v1, p0, Lcom/sec/daliviews/views/TextureView;->prevSTHeight:I

    iput-boolean v2, p0, Lcom/sec/daliviews/views/TextureView;->mDbgSurfaceNotReleasedBeforeCreated:Z

    invoke-direct {p0}, Lcom/sec/daliviews/views/TextureView;->init()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/TextureView;->createSurface(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/TextureView;->setEventTransformToLocal(Z)V

    return-void
.end method

.method private native setRedrawOnlyWhenDirty(JZ)V
.end method


# virtual methods
.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/ItemView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextureView;

    invoke-direct {v0}, Lcom/sec/daliviews/views/TextureView;->init()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method protected native create()J
.end method

.method protected native createSurface(J)V
.end method

.method protected createSurfaceTexture(III)V
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/daliviews/views/TextureView$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/daliviews/views/TextureView$1;-><init>(Lcom/sec/daliviews/views/TextureView;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroy()V
    .locals 3

    sget-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " destroy() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->destroySurfaceTexture()V

    invoke-super {p0}, Lcom/sec/daliviews/views/ItemView;->destroy()V

    return-void
.end method

.method protected destroySurfaceTexture()V
    .locals 4

    iget-object v1, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroySurfaceTexture() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", surface texture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/TextureView;->onSurfaceDestroyed(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/TextureView;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_2
    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/TextureView;->mDbgSurfaceNotReleasedBeforeCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected native frameAvailable(J)V
.end method

.method protected native frameAvailable(JII)V
.end method

.method protected native frameAvailable(JIIIIII)V
.end method

.method public abstract getCachedSpanX()I
.end method

.method public abstract getCachedSpanY()I
.end method

.method public abstract getItemSpanX()I
.end method

.method public abstract getItemSpanY()I
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-object v0
.end method

.method public isOnScreen()Z
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextureView;->mVisible:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/daliviews/views/TextureView;->mOnScreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isResumedState()Z
.end method

.method protected lockCanvas()Landroid/graphics/Canvas;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockHardwareCanvas()Landroid/graphics/Canvas;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v2, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "lockHardwareCanvas"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v4

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lockHardwareCanvas() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/TextureView;->frameAvailable(J)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    const-string v1, "frame discarded due to native side not being ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/sec/daliviews/views/TextureView;->frameAvailable(JII)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    const-string v1, "frame discarded due to native side not being ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;IIIIII)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/sec/daliviews/views/TextureView;->frameAvailable(JIIIIII)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    const-string v1, "frame discarded due to native side not being ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onScreenChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/TextureView;->mOnScreen:Z

    return-void
.end method

.method public onShadowUpdated()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/ItemView;->onSizeChanged(II)V

    iget v0, p0, Lcom/sec/daliviews/views/TextureView;->prevSTWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/TextureView;->prevSTHeight:I

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    const-string v1, "onSizeChanged: previous w&h same. Skipping notify surface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getItemSpanX()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getItemSpanY()I

    move-result v5

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/TextureView;->setSurfaceTextureDefaultSize(Landroid/graphics/SurfaceTexture;IIII)V

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/daliviews/views/TextureView;->onSurfaceSizeChanged(Landroid/view/Surface;II)V

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/daliviews/views/TextureView;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSurfaceCreated(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method protected onSurfaceDestroyed(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method protected onSurfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method protected onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method protected onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    :cond_0
    return-void
.end method

.method protected onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 0

    return-void
.end method

.method protected resetPeer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->destroySurfaceTexture()V

    invoke-super {p0}, Lcom/sec/daliviews/views/ItemView;->resetPeer()V

    return-void
.end method

.method protected resizeContent(IIIIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method runCreateSurfaceTextureTask(III)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->isResumedState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    const-string v1, "runCreateSurfaceTextureTask current size =! parameter size. update parameter size to current size"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getHeight()I

    move-result p2

    :cond_1
    iget-boolean v0, p0, Lcom/sec/daliviews/views/TextureView;->mDbgSurfaceNotReleasedBeforeCreated:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    const-string v1, "Warning! Surface hasn\'t been released before being recreated!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/TextureView;->mDbgSurfaceNotReleasedBeforeCreated:Z

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getCachedSpanX()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getCachedSpanY()I

    move-result v5

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/TextureView;->setSurfaceTextureDefaultSize(Landroid/graphics/SurfaceTexture;IIII)V

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    sget-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " runCreateSurfaceTextureTask non null error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSurface= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSurfaceTexture= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/TextureView;->mUpdateTexture:Z

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/daliviews/views/TextureView;->onSurfaceCreated(Landroid/view/Surface;II)V

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/daliviews/views/TextureView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    monitor-exit v6

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRedrawOnlyWhenDirty(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/TextureView;->setRedrawOnlyWhenDirty(JZ)V

    return-void
.end method

.method protected setScaleSurfaceActor(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/TextureView;->setScaleSurfaceActor(JFF)V

    return-void
.end method

.method protected native setScaleSurfaceActor(JFF)V
.end method

.method protected setSurfaceTextureDefaultSize(Landroid/graphics/SurfaceTexture;IIII)V
    .locals 3

    sget-object v0, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceTextureDefaultSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/sec/daliviews/views/TextureView;->prevSTWidth:I

    iput p3, p0, Lcom/sec/daliviews/views/TextureView;->prevSTHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method

.method public stopUpdateTexture()V
    .locals 2

    iget-object v1, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/daliviews/views/TextureView;->mUpdateTexture:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unlockCanvas(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateShadow()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextureView;->onShadowUpdated()V

    return-void
.end method

.method protected updateTexture()V
    .locals 5

    iget-object v2, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/daliviews/views/TextureView;->mUpdateTexture:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/daliviews/views/TextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/daliviews/views/TextureView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t update texture, possibly GL context has been destroyed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

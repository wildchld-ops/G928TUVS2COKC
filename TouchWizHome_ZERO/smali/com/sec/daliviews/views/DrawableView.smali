.class public Lcom/sec/daliviews/views/DrawableView;
.super Lcom/sec/daliviews/views/ItemView;
.source "DrawableView.java"


# instance fields
.field mCanvas:Lcom/sec/daliviews/views/Canvas;

.field private final mMutex:Ljava/lang/Object;

.field protected mSurface:Landroid/view/Surface;

.field public unsupportedCanvasFeatures:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ItemView;-><init>()V

    iput-object v1, p0, Lcom/sec/daliviews/views/DrawableView;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/DrawableView;->unsupportedCanvasFeatures:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/DrawableView;->mMutex:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/daliviews/views/DrawableView;->mCanvas:Lcom/sec/daliviews/views/Canvas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/DrawableView;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/DrawableView;->unsupportedCanvasFeatures:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/DrawableView;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private static native nAttachDisplayList(JJ)V
.end method

.method private static native nDetachDisplayList(JJ)V
.end method

.method private static native nFlush(J)V
.end method

.method private static native nPauseRender(J)V
.end method

.method private static native nResumeRender(J)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 8

    iget-object v2, p0, Lcom/sec/daliviews/views/DrawableView;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/daliviews/views/DrawableView;->mCanvas:Lcom/sec/daliviews/views/Canvas;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/daliviews/views/Canvas;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/DrawableView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/daliviews/views/DrawableView;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4, p0}, Lcom/sec/daliviews/views/Canvas;-><init>(IILcom/sec/daliviews/views/DrawableView;)V

    iput-object v1, p0, Lcom/sec/daliviews/views/DrawableView;->mCanvas:Lcom/sec/daliviews/views/Canvas;

    :goto_0
    iget-object v1, p0, Lcom/sec/daliviews/views/DrawableView;->mCanvas:Lcom/sec/daliviews/views/Canvas;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Canvas;->GetDisplayList()Lcom/sec/daliviews/graphics/DisplayList;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/daliviews/views/DrawableView;->mCanvas:Lcom/sec/daliviews/views/Canvas;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Canvas;->onResume()V

    const/4 v1, 0x0

    monitor-exit v2

    :goto_1
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/views/DrawableView;->mCanvas:Lcom/sec/daliviews/views/Canvas;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/DrawableView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/daliviews/views/DrawableView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/daliviews/views/Canvas;->setSize(II)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/daliviews/views/DrawableView;->getPeer()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList;->GetNativePtr()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/sec/daliviews/views/DrawableView;->nAttachDisplayList(JJ)V

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList;->Start()V

    iget-object v1, p0, Lcom/sec/daliviews/views/DrawableView;->mCanvas:Lcom/sec/daliviews/views/Canvas;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/DrawableView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/daliviews/views/DrawableView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/daliviews/views/Canvas;->setViewport(II)V

    iget-object v1, p0, Lcom/sec/daliviews/views/DrawableView;->mCanvas:Lcom/sec/daliviews/views/Canvas;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    const-string v0, "DrawableView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/views/DrawableView;->mCanvas:Lcom/sec/daliviews/views/Canvas;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Canvas;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "DrawableView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/views/DrawableView;->mCanvas:Lcom/sec/daliviews/views/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/DrawableView;->mCanvas:Lcom/sec/daliviews/views/Canvas;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Canvas;->onResume()V

    :cond_0
    return-void
.end method

.method protected onScreenChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/DrawableView;->mOnScreen:Z

    return-void
.end method

.method public stopRender()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/DrawableView;->mCanvas:Lcom/sec/daliviews/views/Canvas;

    return-void
.end method

.method public unlockCanvas(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v6, p0, Lcom/sec/daliviews/views/DrawableView;->mMutex:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/DrawableView;->getPeer()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/daliviews/views/DrawableView;->nPauseRender(J)V

    move-object v0, p1

    check-cast v0, Lcom/sec/daliviews/views/Canvas;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Canvas;->GetDisplayList()Lcom/sec/daliviews/graphics/DisplayList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/graphics/DisplayList;->Stop()V

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Canvas;->GetDisplayList()Lcom/sec/daliviews/graphics/DisplayList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/daliviews/views/DrawableView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/DrawableView;->getHeight()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Lcom/sec/daliviews/graphics/DisplayList;->Prepare(II)V

    invoke-static {v4, v5}, Lcom/sec/daliviews/views/DrawableView;->nFlush(J)V

    invoke-static {v4, v5}, Lcom/sec/daliviews/views/DrawableView;->nResumeRender(J)V

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

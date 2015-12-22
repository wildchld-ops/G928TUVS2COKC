.class public Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;
.super Lcom/samsung/android/visualeffect/common/GLTextureView;
.source "LockBGEffect.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectView;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field protected mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

.field protected veContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/common/GLTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->veContext:Landroid/content/Context;

    return-void
.end method

.method private clearEffect()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->TAG:Ljava/lang/String;

    const-string v1, "clearEffect renderer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$1;-><init>(Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public clearScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->clearEffect()V

    return-void
.end method

.method public handleCustomEvent(ILjava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCustomEvent() cmd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    move-object v1, p2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->isReadyRendering()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$3;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$3;-><init>(Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;Ljava/util/HashMap;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->TAG:Ljava/lang/String;

    const-string v3, "mRenderer isn\'t ReadyRendering, so call handleCustomEvent after 100 ms"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$4;-><init>(Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;ILjava/util/HashMap;)V

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;-><init>(Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;ILjava/util/HashMap;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->TAG:Ljava/lang/String;

    const-string v4, "handleTouchEvent renderer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    new-instance v3, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$6;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$6;-><init>(Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;III)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public init(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 0

    return-void
.end method

.method public removeListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    return-void
.end method

.method protected setBGBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->TAG:Ljava/lang/String;

    const-string v2, "setBGBitmap renderer is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    invoke-virtual {v0, v1, v3, v7}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->setBackgroundBitmap([III)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->requestRender()V

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setEffectRenderer(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/visualeffect/lock/common/RenderManaer;->getInstance(Landroid/content/Context;ILcom/samsung/android/visualeffect/common/GLTextureView;)Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->setRenderer(Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V

    return-void
.end method

.method protected setParameters([I[F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->TAG:Ljava/lang/String;

    const-string v1, "clearEffect renderer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->setParameters([I[F)V

    goto :goto_0
.end method

.method protected showAffordanceEffect(JLandroid/graphics/Rect;)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->TAG:Ljava/lang/String;

    const-string v3, "showAffordanceEffect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->TAG:Ljava/lang/String;

    const-string v3, "showUnlockAffordance renderer is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    new-instance v2, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$2;-><init>(Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;II)V

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected showUnlockEffect()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->TAG:Ljava/lang/String;

    const-string v1, "clearEffect renderer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->showUnlock()V

    goto :goto_0
.end method

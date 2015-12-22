.class public Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;
.super Lcom/samsung/android/visualeffect/common/GLTextureView;
.source "IndigoDiffusionEffect.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectView;


# static fields
.field private static final TAG:Ljava/lang/String; = "IndigoDiffusionView"


# instance fields
.field private mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

.field private veContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/common/GLTextureView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    const-string v0, "IndigoDiffusionView"

    const-string v2, "IndigoDiffusion Constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->veContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->veContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;-><init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->setEGLContextClientVersion(I)V

    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->setEGLConfigChooser(IIIIII)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->setRenderer(Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->setRenderMode(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "IndigoDiffusionView"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private detectOpenGLES20()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->veContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setResourcesBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;->setResourcesBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public changeBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "IndigoDiffusionView"

    const-string v1, "changeBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;->changeBackground(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public clearScreen()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;->clearAllEffect()V

    return-void
.end method

.method public handleCustomEvent(ILjava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    const-string v0, "Bitmap"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;->changeBackground(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    const-string v0, "StartDelay"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "Rect"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;->handleTouchEvent(IIFFF)V

    return-void
.end method

.method public init(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 3

    const-string v0, "IndigoDiffusionView"

    const-string v1, "setInitValues"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v1, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->windowWidth:I

    iget-object v2, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->windowHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;->setRippleConfiguration(II)V

    iget-object v0, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->reflectionBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->setResourcesBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;->onConfigurationChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->onDetachedFromWindow()V

    const-string v0, "IndigoDiffusionView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;->onDestroy()V

    return-void
.end method

.method public reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v1, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->red:I

    iget-object v2, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->green:I

    iget-object v3, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iget v3, v3, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->blue:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;->changeColor(III)V

    return-void
.end method

.method public removeListener()V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionRenderer;->setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V

    return-void
.end method

.method public startAnimation()V
    .locals 2

    const-string v0, "IndigoDiffusionView"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->setRenderMode(I)V

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    const-string v0, "IndigoDiffusionView"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;->setRenderMode(I)V

    return-void
.end method

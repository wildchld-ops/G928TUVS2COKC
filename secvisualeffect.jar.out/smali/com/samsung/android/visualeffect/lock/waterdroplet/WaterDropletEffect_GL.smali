.class public Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;
.super Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;
.source "WaterDropletEffect_GL.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/16 v1, 0x8

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;-><init>(Landroid/content/Context;)V

    const-string v0, "WaterDropletEffect_GL"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->TAG:Ljava/lang/String;

    const-string v2, "WaterDropletEffect_GL Constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->veContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->veContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$VFXContextFactory;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    invoke-direct {v7, v0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$VFXContextFactory;-><init>(Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->setEGLConfigChooser(IIIIII)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    check-cast v0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->setRenderMode(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->TAG:Ljava/lang/String;

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    iget-object v1, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->windowWidth:I

    iget-object v2, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->windowHeight:I

    iget-object v3, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    iget-object v3, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->initConfig(IILcom/samsung/android/visualeffect/IEffectListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    iget-object v1, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    iget-object v1, v1, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->resNormal:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->setResourcesBitmap1(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    iget-object v1, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    iget-object v1, v1, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->resEdgeDensity:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->setResourcesBitmap2(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    invoke-interface {v0, p1}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_0
    return-void
.end method

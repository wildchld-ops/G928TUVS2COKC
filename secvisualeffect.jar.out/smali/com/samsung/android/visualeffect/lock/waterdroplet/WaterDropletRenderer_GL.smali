.class public Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;
.super Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;
.source "WaterDropletRenderer_GL.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;-><init>()V

    const-string v0, "WaterDropletRenderer_GL"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "WaterDropletRenderer_GL Constructor 2015-06-22"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->veContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mGlView:Landroid/opengl/GLSurfaceView;

    new-instance v0, Lcom/samsung/android/visualeffect/lock/waterdroplet/JniWaterDropletRenderer;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/JniWaterDropletRenderer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    const-string v0, "Normal"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mBitmapResStr1:Ljava/lang/String;

    const-string v0, "EdgeDensity"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mBitmapResStr2:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->initRender()V

    return-void
.end method


# virtual methods
.method protected InitPhysics(III)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mQualityLevel:I

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->Init_PhysicsEngine(IIII)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->EVENT_INIT_RESOLUTION:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->windowWidth:I

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->windowWidth:I

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onCustomEvent(IFFF)V

    return-void
.end method

.method protected onSensorEvent(IFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onSensorEvent(IFFF)V

    return-void
.end method

.method public preSetTexture()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mBitmapRes1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mBitmapResStr1:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mBitmapRes1:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mBitmapRes2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mBitmapResStr2:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->mBitmapRes2:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletRenderer_GL;->recycleResource()V

    return-void
.end method

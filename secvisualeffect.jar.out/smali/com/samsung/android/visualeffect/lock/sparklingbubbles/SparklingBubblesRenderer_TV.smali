.class public Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;
.super Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_TV;
.source "SparklingBubblesRenderer_TV.java"


# instance fields
.field private EVENT_PARTICLENUM:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_TV;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->EVENT_PARTICLENUM:I

    const-string v0, "SparklingBubblesRenderer_TV"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->TAG:Ljava/lang/String;

    const-string v1, "SparklingBubblesRenderer_TV Constructor 2015-06-22"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->veContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    new-instance v0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    const-string v0, "BlurMask"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mBitmapResStr1:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->initRender()V

    return-void
.end method


# virtual methods
.method protected InitPhysics(III)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mQualityLevel:I

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->Init_PhysicsEngine(IIII)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->EVENT_PARTICLENUM:I

    const v2, 0x44898000    # 1100.0f

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onCustomEvent(IF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->EVENT_INIT_RESOLUTION:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->windowWidth:I

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->windowWidth:I

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onCustomEvent(IFFF)V

    return-void
.end method

.method protected IsExistBubbles()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->isEmpty()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->map:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/visualeffect/IEffectListener;->onReceive(ILjava/util/HashMap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->map:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/visualeffect/IEffectListener;->onReceive(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public preSetTexture()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mBitmapRes1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mBitmapResStr1:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->mBitmapRes1:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;->recycleResource()V

    return-void
.end method

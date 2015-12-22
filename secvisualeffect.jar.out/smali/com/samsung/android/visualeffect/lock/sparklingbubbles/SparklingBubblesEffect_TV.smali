.class public Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;
.super Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV;
.source "SparklingBubblesEffect_TV.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v1, 0x8

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV;-><init>(Landroid/content/Context;)V

    const-string v0, "SparklingBubblesEffect_TV"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->TAG:Ljava/lang/String;

    const-string v2, "SparklingBubblesEffect_TV Constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->veContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->veContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;-><init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->setEGLContextClientVersion(I)V

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->setEGLConfigChooser(IIIIII)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    check-cast v0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesRenderer_TV;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->setRenderer(Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->setRenderMode(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->TAG:Ljava/lang/String;

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    iget-object v1, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;->windowWidth:I

    iget-object v2, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;->windowHeight:I

    iget-object v3, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    iget-object v3, v3, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->initConfig(IILcom/samsung/android/visualeffect/IEffectListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    iget-object v1, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    iget-object v1, v1, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;->resBmp:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->setResourcesBitmap1(Landroid/graphics/Bitmap;)V

    return-void
.end method

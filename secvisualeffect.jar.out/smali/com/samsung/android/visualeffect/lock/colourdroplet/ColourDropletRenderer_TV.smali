.class public Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;
.super Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_TV;
.source "ColourDropletRenderer_TV.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_TV;-><init>()V

    const-string v0, "ColourDropletRenderer_TV"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->TAG:Ljava/lang/String;

    const-string v1, "ColourDropletRenderer_TV Constructor 2015-06-22"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->veContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    new-instance v0, Lcom/samsung/android/visualeffect/lock/colourdroplet/JniColourDropletRenderer;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/lock/colourdroplet/JniColourDropletRenderer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    const-string v0, "Normal"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mBitmapResStr1:Ljava/lang/String;

    const-string v0, "EdgeDensity"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mBitmapResStr2:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->initRender()V

    return-void
.end method


# virtual methods
.method protected InitPhysics(III)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mQualityLevel:I

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->Init_PhysicsEngine(IIII)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->EVENT_INIT_RESOLUTION:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->windowWidth:I

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->windowWidth:I

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onCustomEvent(IFFF)V

    return-void
.end method

.method public preSetTexture()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mBitmapRes1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mBitmapResStr1:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mBitmapRes1:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mBitmapRes2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mBitmapResStr2:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->mBitmapRes2:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletRenderer_TV;->recycleResource()V

    return-void
.end method

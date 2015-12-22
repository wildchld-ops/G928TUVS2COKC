.class public Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;
.super Ljava/lang/Object;
.source "SPhysicsRenderer_GL.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;


# instance fields
.field protected EVENT_AFFORDANCE:I

.field protected EVENT_CHANGE_BGIMAGE:I

.field protected EVENT_CLEAR:I

.field protected EVENT_INIT_RESOLUTION:I

.field protected EVENT_MOBILEKEY_OFF:I

.field protected EVENT_MOBILEKEY_ON:I

.field protected EVENT_RESET_BGSCALE:I

.field protected EVENT_UNLOCK:I

.field protected PHONE_PROJECT:I

.field protected QUALITY_LEVEL_0:I

.field protected QUALITY_LEVEL_1:I

.field protected QUALITY_LEVEL_2:I

.field protected QUALITY_LEVEL_3:I

.field protected TABLET_PROJECT:I

.field protected TAG:Ljava/lang/String;

.field private fpsCount:I

.field protected isFirstSurfaceChanged:Z

.field private isFpsChecked:Z

.field private isMobileKeyboard:Z

.field protected isOrientationChangCount:I

.field protected isOrientationChanged:Z

.field protected isSurfaceChanged:Z

.field protected isSurfaceCreated:Z

.field protected isTouched:Z

.field protected isWrongSurfaceChanged:Z

.field protected mBgChangeCheckQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mBitmapRes1:Landroid/graphics/Bitmap;

.field protected mBitmapRes2:Landroid/graphics/Bitmap;

.field protected mBitmapResStr1:Ljava/lang/String;

.field protected mBitmapResStr2:Ljava/lang/String;

.field protected mCountOfDirtyMode:I

.field protected mCountOfScreenOn:I

.field protected mDrawCount:I

.field protected mGlView:Landroid/opengl/GLSurfaceView;

.field protected mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field protected mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

.field protected mLandscapeBG:Landroid/graphics/Bitmap;

.field protected mPortraitBG:Landroid/graphics/Bitmap;

.field protected mQualityLevel:I

.field protected map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected pointer_xpos:[I

.field protected pointer_ypos:[I

.field protected renderHeight:I

.field protected renderWidth:I

.field private startTime:J

.field protected veContext:Landroid/content/Context;

.field protected windowHeight:I

.field protected windowWidth:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBitmapRes1:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBitmapRes2:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBitmapResStr1:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBitmapResStr2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mPortraitBG:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mLandscapeBG:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBgChangeCheckQueue:Ljava/util/Queue;

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowWidth:I

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowHeight:I

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->renderWidth:I

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->renderHeight:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->pointer_xpos:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->pointer_ypos:[I

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isTouched:Z

    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_CLEAR:I

    const/16 v0, 0x5b

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_UNLOCK:I

    const/16 v0, 0x5c

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_AFFORDANCE:I

    const/16 v0, 0x5d

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_MOBILEKEY_ON:I

    const/16 v0, 0x5e

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_MOBILEKEY_OFF:I

    const/16 v0, 0x5f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_INIT_RESOLUTION:I

    const/16 v0, 0x60

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_RESET_BGSCALE:I

    const/16 v0, 0x61

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_CHANGE_BGIMAGE:I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isFirstSurfaceChanged:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isSurfaceCreated:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mCountOfDirtyMode:I

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mCountOfScreenOn:I

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChanged:Z

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChangCount:I

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isSurfaceChanged:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isWrongSurfaceChanged:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isMobileKeyboard:Z

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->QUALITY_LEVEL_0:I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->QUALITY_LEVEL_1:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->QUALITY_LEVEL_2:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->QUALITY_LEVEL_3:I

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->PHONE_PROJECT:I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TABLET_PROJECT:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->QUALITY_LEVEL_2:I

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mQualityLevel:I

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isFpsChecked:Z

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->fpsCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->startTime:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->map:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected InitPhysics(III)V
    .locals 0

    return-void
.end method

.method protected IsExistBubbles()V
    .locals 0

    return-void
.end method

.method public affordanceEffect(FF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "affordanceEffect(EVENT_AFFORDANCE), mDrawCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->renderWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderHeight ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->renderHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_AFFORDANCE:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onCustomEvent(IFFF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mGlView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public changeBackground(Landroid/graphics/Bitmap;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeBackground mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "bg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->setBackground(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method protected checkBackground()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change opengl BG Texture, size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->preSetPortraitBGTexture()V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->preSetLandscapeBGTexture()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected checkDirtyMode()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->isEmpty()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isTouched:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mCountOfScreenOn:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "mJniFluidAmoeba is Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mCountOfDirtyMode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mCountOfDirtyMode:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mCountOfDirtyMode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "checkDirtyMode() Drity Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mCountOfDirtyMode:I

    :cond_0
    return-void
.end method

.method protected checkOrientation()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChanged:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isSurfaceChanged:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChangCount:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= onConfigurationChanged = onDrawFrame isSurfaceChanged == true && isOrientationChanged == true, isOrientationChangCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChangCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChanged:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChangCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChangCount:I

    goto :goto_0
.end method

.method public clearEffect()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "native_onKeyEvent EVENT_CLEAR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_CLEAR:I

    invoke-interface {v0, v1}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onKeyEvent(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isTouched:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChanged:Z

    :cond_1
    return-void
.end method

.method protected drawEffect()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->Draw_PhysicsEngine()V

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mCountOfScreenOn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mCountOfScreenOn:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isSurfaceChanged:Z

    return-void
.end method

.method public getDrawCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    return v0
.end method

.method protected getProjectKind()I
    .locals 4

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->PHONE_PROJECT:I

    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v3, "isTablet() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TABLET_PROJECT:I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v3, "isTablet() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->PHONE_PROJECT:I

    goto :goto_0
.end method

.method public initConfig(IILcom/samsung/android/visualeffect/IEffectListener;)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowWidth:I

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowHeight:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    return-void
.end method

.method protected initRender()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isFirstSurfaceChanged:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBgChangeCheckQueue:Ljava/util/Queue;

    return-void
.end method

.method protected onConfigurationChanged()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "= onConfigurationChanged = Renderer onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChangCount:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isSurfaceCreated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "native DeInit_PhysicsEngineJNI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->DeInit_PhysicsEngineJNI()V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "Surface isn\'t created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isWrongSurfaceChanged:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v3, "onSurfaceChanged is wrong, so we return and goto DIRTY MODE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v3, "mDrawCount == 1, call mIEffectListener.onReceive()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->map:Ljava/util/HashMap;

    invoke-interface {v2, v6, v3}, Lcom/samsung/android/visualeffect/IEffectListener;->onReceive(ILjava/util/HashMap;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->checkOrientation()V

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    if-lt v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->checkBackground()V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->drawEffect()V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->checkDirtyMode()V

    iget-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isFpsChecked:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->fpsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->fpsCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->startTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->fpsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->startTime:J

    iput v6, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->fpsCount:I

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v2, -0x3ee00000    # -10.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aput v3, v1, v4

    :cond_0
    :goto_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aput v3, v1, v5

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->veContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    return-void

    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aput v2, v1, v4

    goto :goto_0

    :cond_3
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aput v2, v1, v5

    goto :goto_1

    :pswitch_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->onSensorEvent(IFFF)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    mul-float/2addr v2, v6

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->onSensorEvent(IFFF)V

    goto :goto_2

    :pswitch_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    mul-float/2addr v2, v6

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    mul-float/2addr v3, v6

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->onSensorEvent(IFFF)V

    goto :goto_2

    :pswitch_3
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v3, v6

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->onSensorEvent(IFFF)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onSensorEvent(IFFF)V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged, width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v0, v1, 0x5

    if-lt p2, v0, :cond_0

    if-ge p3, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged problem width"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " disp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isWrongSurfaceChanged:Z

    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isSurfaceChanged:Z

    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isWrongSurfaceChanged:Z

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v4}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->renderWidth:I

    iput p3, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->renderHeight:I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v2, "Mobile Keyboard FEATURE is set"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowWidth:I

    if-ne v1, p2, :cond_3

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowHeight:I

    if-le v1, p3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v2, "Mobile Keyboard is attached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isMobileKeyboard:Z

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->map:Ljava/util/HashMap;

    invoke-interface {v1, v4, v2}, Lcom/samsung/android/visualeffect/IEffectListener;->onReceive(ILjava/util/HashMap;)V

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isSurfaceCreated:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v2, "First onSurfaceChanged, Call the Init_PhysicsEngine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->checkBackground()V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->getProjectKind()I

    move-result v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->InitPhysics(III)V

    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isSurfaceCreated:Z

    :goto_2
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mCountOfScreenOn:I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v2, "native_onKeyEvent EVENT_RESET_BGSCALE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_RESET_BGSCALE:I

    invoke-interface {v1, v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onKeyEvent(I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowWidth:I

    if-ne v1, p2, :cond_2

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowHeight:I

    if-ne v1, p3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v2, "Mobile Keyboard is deattached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isMobileKeyboard:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->map:Ljava/util/HashMap;

    invoke-interface {v1, v4, v2}, Lcom/samsung/android/visualeffect/IEffectListener;->onReceive(ILjava/util/HashMap;)V

    :cond_4
    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isMobileKeyboard:Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v2, "2nd, 3rd..... onSurfaceChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->clearEffect()V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->checkBackground()V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    invoke-interface {v1, p2, p3}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onSurfaceChangedEvent(II)V

    goto :goto_2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isSurfaceCreated:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isWrongSurfaceChanged:Z

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->Init_PhysicsEngineJNI()V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->preSetTexture()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v3, 0x0

    const/4 v7, 0x1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    if-gt v0, v7, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Return onTouchEvent, Because of mDrawCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->pointer_xpos:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->pointer_ypos:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v7}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->IsExistBubbles()V

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DOWN, renderWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->renderWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", renderHeight"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->renderHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->pointer_xpos:[I

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->pointer_ypos:[I

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onTouchEvent(III[I[I)V

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isOrientationChanged:Z

    iput-boolean v7, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isTouched:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->pointer_xpos:[I

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->pointer_ypos:[I

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onTouchEvent(III[I[I)V

    iput-boolean v7, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isTouched:Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v4, "ACTION_UP"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget-object v8, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->pointer_xpos:[I

    iget-object v9, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->pointer_ypos:[I

    move v5, v1

    move v6, v2

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onTouchEvent(III[I[I)V

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->isTouched:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected preSetLandscapeBGTexture()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mLandscapeBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "SetTexture(LandscapeBG)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    const-string v1, "LandscapeBG"

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mLandscapeBG:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->recycleLandscapeBG()V

    :cond_0
    return-void
.end method

.method protected preSetPortraitBGTexture()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mPortraitBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "SetTexture(PortraitBG)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    const-string v1, "PortraitBG"

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mPortraitBG:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->recyclePortraitBG()V

    :cond_0
    return-void
.end method

.method protected preSetTexture()V
    .locals 0

    return-void
.end method

.method protected recycleLandscapeBG()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mLandscapeBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mLandscapeBG:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "mLandscapeBG => null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected recyclePortraitBG()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mPortraitBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mPortraitBG:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "mPortraitBG => null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected recycleResource()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "native_onKeyEvent EVENT_RESET_BGSCALE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_RESET_BGSCALE:I

    invoke-interface {v0, v1}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onKeyEvent(I)V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mCountOfScreenOn:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mGlView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method protected setBackground(Landroid/graphics/Bitmap;I)V
    .locals 4

    const/4 v3, 0x1

    if-nez p2, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/visualeffect/utils/BitmapTools;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mPortraitBG:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/visualeffect/utils/BitmapTools;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mLandscapeBG:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->renderWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->renderHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->renderWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->renderHeight:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/visualeffect/utils/BitmapTools;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mPortraitBG:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setResourcesBitmap1(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "setResourcesBitmap1()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBitmapRes1:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setResourcesBitmap2(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "setResourcesBitmap2()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mBitmapRes2:Landroid/graphics/Bitmap;

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unlockEffect()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mDrawCount:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->TAG:Ljava/lang/String;

    const-string v1, "native_onKeyEvent EVENT_UNLOCK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mIJniRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->EVENT_UNLOCK:I

    invoke-interface {v0, v1}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;->onKeyEvent(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsRenderer_GL;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

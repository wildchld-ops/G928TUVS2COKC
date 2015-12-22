.class public Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;
.super Ljava/lang/Object;
.source "GLSurfaceViewRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected framecounter:I

.field protected isAffordanceOccur:Z

.field protected mAffordancePosX:I

.field protected mAffordancePosY:I

.field protected mBackgroundHeight:I

.field protected mBackgroundPixels:[I

.field protected mBackgroundWidth:I

.field protected mContext:Landroid/content/Context;

.field protected mGlView:Landroid/opengl/GLSurfaceView;

.field protected mHeight:I

.field protected mIsNeedToReinit:Z

.field protected final mLibDir:Ljava/lang/String;

.field protected mLibName:Ljava/lang/String;

.field protected mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

.field protected mWidth:I

.field protected timeStart:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mWidth:I

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mHeight:I

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mAffordancePosX:I

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mAffordancePosY:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mBackgroundPixels:[I

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mBackgroundWidth:I

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mBackgroundHeight:I

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mIsNeedToReinit:Z

    const-string v0, "/system/lib/"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mLibDir:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/lock/common/Native;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    return-void
.end method


# virtual methods
.method public clearEffect()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/common/Native;->clear()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public handleTouchEvent(III)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/samsung/android/visualeffect/lock/common/Native;->onTouch(III)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v0, p2, p3, v2}, Lcom/samsung/android/visualeffect/lock/common/Native;->onTouch(III)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, p3, v1}, Lcom/samsung/android/visualeffect/lock/common/Native;->onTouch(III)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    const/4 v1, 0x3

    invoke-virtual {v0, p2, p3, v1}, Lcom/samsung/android/visualeffect/lock/common/Native;->onTouch(III)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    const/4 v1, 0x4

    invoke-virtual {v0, p2, p3, v1}, Lcom/samsung/android/visualeffect/lock/common/Native;->onTouch(III)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    const/4 v1, 0x5

    invoke-virtual {v0, p2, p3, v1}, Lcom/samsung/android/visualeffect/lock/common/Native;->onTouch(III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public loadSpecialTexture([Ljava/lang/String;)V
    .locals 14

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v11, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v9, 0x0

    :goto_1
    array-length v2, p1

    if-ge v9, v2, :cond_1

    :try_start_0
    aget-object v2, p1, v9

    const-string v4, "drawable"

    invoke-virtual {v13, v2, v4, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-static {v13, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v2, v3, v7

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding texture Width\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding texture Height\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    aget-object v4, p1, v9

    invoke-virtual {v2, v4, v1, v3, v7}, Lcom/samsung/android/visualeffect/lock/common/Native;->loadTexture(Ljava/lang/String;[III)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is no image \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/common/Native;->destroy()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    const/high16 v12, 0x447a0000    # 1000.0f

    const/4 v11, -0x1

    const/4 v10, 0x0

    iget-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mIsNeedToReinit:Z

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v5

    invoke-static {v5, v10}, Landroid/opengl/EGL14;->eglSwapInterval(Landroid/opengl/EGLDisplay;I)Z

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    iget-object v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mLibName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/visualeffect/lock/common/Native;->loadEffect(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->loadSpecialTexture([Ljava/lang/String;)V

    iput v11, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->framecounter:I

    :cond_0
    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->framecounter:I

    if-ne v5, v11, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->timeStart:J

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mBackgroundPixels:[I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    const-string v6, "bg"

    iget-object v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mBackgroundPixels:[I

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mBackgroundWidth:I

    iget v9, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mBackgroundHeight:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/samsung/android/visualeffect/lock/common/Native;->loadTexture(Ljava/lang/String;[III)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mBackgroundPixels:[I

    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mIsNeedToReinit:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mWidth:I

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mHeight:I

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/visualeffect/lock/common/Native;->init(IIZ)V

    iput-boolean v10, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mIsNeedToReinit:Z

    :cond_3
    iget-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->isAffordanceOccur:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mAffordancePosX:I

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mAffordancePosY:I

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/visualeffect/lock/common/Native;->showAffordance(II)V

    iput-boolean v10, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->isAffordanceOccur:Z

    :cond_4
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/lock/common/Native;->draw()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    const-string v6, "dirty mode"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v5, v10}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_5
    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->framecounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->framecounter:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->timeStart:J

    sub-long v6, v2, v6

    long-to-float v4, v6

    cmpl-float v5, v4, v12

    if-gez v5, :cond_6

    if-eqz v1, :cond_8

    :cond_6
    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->framecounter:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_7

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->framecounter:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    div-float v0, v5, v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fps "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput v11, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->framecounter:I

    :cond_8
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    const/4 v1, 0x1

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged problem width"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mWidth:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mHeight:I

    if-eq v0, p3, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mIsNeedToReinit:Z

    :cond_3
    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mWidth:I

    iput p3, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mHeight:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mWidth:I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mIsNeedToReinit:Z

    return-void
.end method

.method public setBackgroundBitmap([III)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "setBackgroundBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mBackgroundPixels:[I

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mBackgroundWidth:I

    iput p3, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mBackgroundHeight:I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mIsNeedToReinit:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public setParameters([I[F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/visualeffect/lock/common/Native;->setParameters([I[F)V

    return-void
.end method

.method public showUnlock()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/common/Native;->showUnlock()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public showUnlockAffordance(II)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mAffordancePosX:I

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mAffordancePosY:I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->isAffordanceOccur:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

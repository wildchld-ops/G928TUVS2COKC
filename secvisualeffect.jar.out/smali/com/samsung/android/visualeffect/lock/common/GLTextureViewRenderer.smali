.class public Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;
.super Ljava/lang/Object;
.source "GLTextureViewRenderer.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field protected drawCount:I

.field protected drawInitNum:I

.field protected framecounter:I

.field protected isAffordanceOccur:Z

.field protected mAffordancePosX:I

.field protected mAffordancePosY:I

.field protected mBackgroundHeight:I

.field protected mBackgroundPixels:[I

.field protected mBackgroundWidth:I

.field protected mContext:Landroid/content/Context;

.field protected mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

.field protected mHeight:I

.field protected mIsNeedToReinit:Z

.field protected mIsNeedToReinit2:Z

.field private mLibDir:Ljava/lang/String;

.field protected mLibName:Ljava/lang/String;

.field protected mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

.field mSpecialTextures:[Ljava/lang/String;

.field protected mWidth:I

.field protected timeStart:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mWidth:I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mHeight:I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mAffordancePosX:I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mAffordancePosY:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->timeStart:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->framecounter:I

    iput-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mBackgroundPixels:[I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mBackgroundWidth:I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mBackgroundHeight:I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mIsNeedToReinit:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mIsNeedToReinit2:Z

    iput-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mLibDir:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/lock/common/Native;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawInitNum:I

    iput-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mSpecialTextures:[Ljava/lang/String;

    return-void
.end method

.method public static pauseAnimation()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/visualeffect/lock/common/Native;->pauseAnimation()V

    return-void
.end method

.method public static resumeAnimation()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/visualeffect/lock/common/Native;->resumeAnimation()V

    return-void
.end method


# virtual methods
.method public clearEffect()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "clearEffect()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawInitNum:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/common/Native;->clear()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "Ignore! because isRendered is false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleTouchEvent(III)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawInitNum:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Touch Return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eq p1, v4, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Renderer handleTouchEvent action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/samsung/android/visualeffect/lock/common/Native;->onTouch(III)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v0, p2, p3, v3}, Lcom/samsung/android/visualeffect/lock/common/Native;->onTouch(III)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v0, p2, p3, v4}, Lcom/samsung/android/visualeffect/lock/common/Native;->onTouch(III)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    const/4 v1, 0x3

    invoke-virtual {v0, p2, p3, v1}, Lcom/samsung/android/visualeffect/lock/common/Native;->onTouch(III)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    const/4 v1, 0x4

    invoke-virtual {v0, p2, p3, v1}, Lcom/samsung/android/visualeffect/lock/common/Native;->onTouch(III)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    const/4 v1, 0x5

    invoke-virtual {v0, p2, p3, v1}, Lcom/samsung/android/visualeffect/lock/common/Native;->onTouch(III)V

    goto :goto_1

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

.method public isReadyRendering()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called isReadyRendering(), drawCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawInitNum:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mContext:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

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
    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawInitNum:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/common/Native;->destroy()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "Ignore! because isRendered is false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    iget-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mIsNeedToReinit:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    iget-object v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mLibName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/visualeffect/lock/common/Native;->loadEffect(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mSpecialTextures:[Ljava/lang/String;

    const/4 v5, -0x1

    iput v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->framecounter:I

    :cond_0
    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->framecounter:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->timeStart:J

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mBackgroundPixels:[I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v6, "mNative.loadTexture"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    const-string v6, "bg"

    iget-object v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mBackgroundPixels:[I

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mBackgroundWidth:I

    iget v9, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mBackgroundHeight:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/samsung/android/visualeffect/lock/common/Native;->loadTexture(Ljava/lang/String;[III)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mBackgroundPixels:[I

    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mIsNeedToReinit:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mWidth:I

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mHeight:I

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/visualeffect/lock/common/Native;->drawBgOnly(II)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mIsNeedToReinit:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mIsNeedToReinit2:Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mIsNeedToReinit2:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mSpecialTextures:[Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->loadSpecialTexture([Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mWidth:I

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mHeight:I

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/visualeffect/lock/common/Native;->init(IIZ)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mIsNeedToReinit2:Z

    :cond_5
    iget-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->isAffordanceOccur:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mAffordancePosX:I

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mAffordancePosY:I

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/visualeffect/lock/common/Native;->showAffordance(II)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->isAffordanceOccur:Z

    :cond_6
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/lock/common/Native;->draw()Z

    move-result v5

    if-nez v5, :cond_7

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawInitNum:I

    if-le v5, v6, :cond_7

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v6, "dirty mode"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V

    :cond_7
    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->framecounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->framecounter:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->timeStart:J

    sub-long v6, v2, v6

    long-to-float v4, v6

    const/high16 v5, 0x447a0000    # 1000.0f

    cmpl-float v5, v4, v5

    if-gez v5, :cond_8

    if-eqz v1, :cond_a

    :cond_8
    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->framecounter:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_9

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->framecounter:I

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    div-float v0, v5, v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

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

    :cond_9
    const/4 v5, -0x1

    iput v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->framecounter:I

    :cond_a
    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawInitNum:I

    if-gt v5, v6, :cond_3

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v6, "onDrawFrame, First Rendering!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawInitNum:I

    if-ne v5, v6, :cond_c

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v6, "callBackListener.onReceive(EffectStatus.READY"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/visualeffect/IEffectListener;->onReceive(ILjava/util/HashMap;)V

    :cond_c
    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    goto/16 :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    const/4 v3, 0x1

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v0, v1, 0x5

    if-lt p2, v0, :cond_0

    if-ge p3, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged problem width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  disp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mWidth:I

    if-ne v1, p2, :cond_2

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mHeight:I

    if-eq v1, p3, :cond_3

    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mIsNeedToReinit:Z

    :cond_3
    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mWidth:I

    iput p3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mHeight:I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v4, "onSurfaceCreated"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mWidth:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mHeight:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mIsNeedToReinit:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mLibDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mLibDir:Ljava/lang/String;

    const-string v4, "64"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/system/lib64"

    iput-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mLibDir:Ljava/lang/String;

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mLibDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mLibName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mLibName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLibName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mLibName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v3, "/system/lib"

    iput-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mLibDir:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBackgroundBitmap([III)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "setBackgroundBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mBackgroundPixels:[I

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mBackgroundWidth:I

    iput p3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mBackgroundHeight:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    return-void
.end method

.method public setParameters([I[F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/visualeffect/lock/common/Native;->setParameters([I[F)V

    return-void
.end method

.method public showUnlock()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "showUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawCount:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->drawInitNum:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/common/Native;->showUnlock()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "Ignore! because isRendered is false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showUnlockAffordance(II)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mAffordancePosX:I

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mAffordancePosY:I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->isAffordanceOccur:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V

    return-void
.end method

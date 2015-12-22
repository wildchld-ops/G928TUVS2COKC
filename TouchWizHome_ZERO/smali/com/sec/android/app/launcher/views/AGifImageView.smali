.class public Lcom/sec/android/app/launcher/views/AGifImageView;
.super Lcom/sec/daliviews/views/TextureView;
.source "AGifImageView.java"


# instance fields
.field private mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

.field private mContext:Landroid/content/Context;

.field private mFilename:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrawRound:Z

.field private mIsLooping:Z

.field private mPlayBackwards:Z

.field private mResId:I

.field private mStarted:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mIsDrawRound:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mIsLooping:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mPlayBackwards:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mStarted:Z

    iput v2, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mResId:I

    iput v2, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mWidth:I

    iput v2, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mHeight:I

    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->AGifImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mResId:I

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/TextureView;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mIsDrawRound:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mIsLooping:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mPlayBackwards:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mStarted:Z

    iput v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mResId:I

    iput v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mWidth:I

    iput v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mHeight:I

    iput-object p2, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mFilename:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AGifImageView;->destroyGifPlayer()V

    invoke-super {p0}, Lcom/sec/daliviews/views/TextureView;->destroy()V

    return-void
.end method

.method public destroyGifPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mStarted:Z

    return-void
.end method

.method protected destroySurfaceTexture()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/TextureView;->destroySurfaceTexture()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AGifImageView;->destroyGifPlayer()V

    return-void
.end method

.method public drawBitmap()V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AGifImageView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mIsDrawRound:Z

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->updateAGIF(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mWidth:I

    iget v4, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mHeight:I

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AGifImageView;->getmNPeer()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/launcher/views/AGifImageView;->frameAvailable(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/AGifImageView;->unlockCanvas(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/AGifImageView;->unlockCanvas(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/AGifImageView;->unlockCanvas(Landroid/graphics/Canvas;)V

    :cond_3
    throw v3
.end method

.method public getCachedSpanX()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCachedSpanY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemSpanX()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemSpanY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mStarted:Z

    return v0
.end method

.method public isRecyclable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isResumedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected loadGifPlayer()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;-><init>(Lcom/sec/android/app/launcher/views/AGifImageView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mIsLooping:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mPlayBackwards:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->playBackwards(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->loadGIF(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mResId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->loadGIF(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onScreenChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->onResume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->onPause()V

    goto :goto_0
.end method

.method protected onSizeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/TextureView;->onSizeChanged(II)V

    iput p1, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mWidth:I

    iput p2, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mHeight:I

    return-void
.end method

.method protected onSurfaceCreated(Landroid/view/Surface;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/daliviews/views/TextureView;->onSurfaceCreated(Landroid/view/Surface;II)V

    iput p2, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mWidth:I

    iput p3, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mHeight:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AGifImageView;->loadGifPlayer()Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AGifImageView;->drawBitmap()V

    return-void
.end method

.method public playBackwards(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mPlayBackwards:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->playBackwards(Z)V

    :cond_0
    return-void
.end method

.method public setDrawRound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mIsDrawRound:Z

    return-void
.end method

.method public setFirstFrame()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AGifImageView;->destroyGifPlayer()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AGifImageView;->loadGifPlayer()Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->setTime(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AGifImageView;->drawBitmap()V

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mIsLooping:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public startGifPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AGifImageView;->loadGifPlayer()Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->setTime(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mAGifImgPlayer:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->play()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/AGifImageView;->mStarted:Z

    return-void
.end method

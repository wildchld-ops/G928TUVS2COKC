.class public Lcom/android/systemui/recents/views/TaskViewThumbnail;
.super Landroid/view/View;
.source "TaskViewThumbnail.java"


# instance fields
.field mBitmapRect:Landroid/graphics/RectF;

.field mBitmapShader:Landroid/graphics/BitmapShader;

.field mClipRect:Landroid/graphics/Rect;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDimAlpha:F

.field mDrawPaint:Landroid/graphics/Paint;

.field mInvisible:Z

.field mLayoutRect:Landroid/graphics/RectF;

.field mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field mScaleMatrix:Landroid/graphics/Matrix;

.field mTaskBar:Landroid/view/View;

.field mThumbnailAlpha:F

.field mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

.field mThumbnailAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLayoutRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    new-instance v0, Lcom/android/systemui/recents/views/TaskViewThumbnail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail$1;-><init>(Lcom/android/systemui/recents/views/TaskViewThumbnail;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    return-void
.end method

.method onFocusChanged(Z)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x96

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getAlpha()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getAlpha()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    :cond_0
    return-void
.end method

.method prepareEnterRecentsAnimation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    goto :goto_0
.end method

.method rebindToTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setDimAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    return-void
.end method

.method setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    return-void

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method startEnterRecentsAnimation(ILjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    return-void
.end method

.method startFadeAnimation(FIILjava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewThumbnail$2;

    invoke-direct {v1, p0, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail$2;-><init>(Lcom/android/systemui/recents/views/TaskViewThumbnail;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method startLaunchTaskAnimation(Ljava/lang/Runnable;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    return-void
.end method

.method unbindFromTask()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method updateClipToTaskBar(Landroid/view/View;)V
    .locals 5

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method updateThumbnailPaintFilter()V
    .locals 8

    const/16 v7, 0xff

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v3, v5, v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v2, v3

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v3, v5, v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v0, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-static {v7, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/LightingColorFilter;->setColorMultiply(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    const/4 v4, 0x0

    invoke-static {v4, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/LightingColorFilter;->setColorAdd(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    goto :goto_0

    :cond_1
    add-int v1, v2, v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-static {v7, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method updateThumbnailScale()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method updateThumbnailVisibility(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;
.super Landroid/view/View;
.source "AbstractWaveEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;
    }
.end annotation


# instance fields
.field protected final ANIMATION_DELAY_TIME:J

.field private final TAG:Ljava/lang/String;

.field protected effectHeight:I

.field protected effectWidth:I

.field protected isAnimatorRunning:Z

.field protected isAutoStopOnWindowFocusChanged:Z

.field protected mHandler:Landroid/os/Handler;

.field private verticalAlign:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

.field private waveBitmap:Landroid/graphics/Bitmap;

.field protected waveCanvas:Landroid/graphics/Canvas;

.field private wavePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectAbstractWaveEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->ANIMATION_DELAY_TIME:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->isAnimatorRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->isAutoStopOnWindowFocusChanged:Z

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$1;-><init>(Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->mHandler:Landroid/os/Handler;

    const-string v0, "VisualEffectAbstractWaveEffect"

    const-string v1, "AbstractWaveEffect constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectAbstractWaveEffect"

    const-string v1, "Version = 1.1.4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->effectWidth:I

    iput p3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->effectHeight:I

    iput-object p4, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->verticalAlign:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->effectWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->effectHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->waveBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->waveBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->wavePaint:Landroid/graphics/Paint;

    const-string v0, "VisualEffectAbstractWaveEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractWaveEffect - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->effectWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->effectHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectAbstractWaveEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractWaveEffect - verticalAlign : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->verticalAlign:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearEffect()V
    .locals 2

    const-string v0, "VisualEffectAbstractWaveEffect"

    const-string v1, "clearEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected clearVariables()V
    .locals 0

    return-void
.end method

.method protected getDefaultPercent()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->verticalAlign:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->verticalAlign:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->waveBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public removeEffect()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->waveBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->waveBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public setAutoStopOnWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "VisualEffectAbstractWaveEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoStopOnWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->isAutoStopOnWindowFocusChanged:Z

    return-void
.end method

.method public setWaveMaxHeightRatio(F)V
    .locals 3

    const-string v0, "VisualEffectAbstractWaveEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWaveMaxHeightRatio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWaveSpeedRatio(F)V
    .locals 3

    const-string v0, "VisualEffectAbstractWaveEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWaveSpeedRatio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected startAnimator()V
    .locals 4

    const-string v0, "VisualEffectAbstractWaveEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimator : isRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->isAnimatorRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->isAnimatorRunning:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->isAnimatorRunning:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public startEffect()V
    .locals 2

    const-string v0, "VisualEffectAbstractWaveEffect"

    const-string v1, "startEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected stopAnimator()V
    .locals 2

    const-string v0, "VisualEffectAbstractWaveEffect"

    const-string v1, "stopAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->isAnimatorRunning:Z

    return-void
.end method

.method public stopEffect()V
    .locals 2

    const-string v0, "VisualEffectAbstractWaveEffect"

    const-string v1, "stopEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

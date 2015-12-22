.class public Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;
.super Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;
.source "EdgescreenCallEffect.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private WAVE_RATIO:F

.field private WAVE_SPEED:F

.field private animationValue:F

.field private bgColor:I

.field private color:I

.field private currentPercent:F

.field private currentWaveHeightRatio:F

.field private easingValue:F

.field private effectHeight:I

.field private effectWidth:I

.field private elasticDist:F

.field private elasticValue:F

.field private gradient:Landroid/graphics/LinearGradient;

.field private isForTension:Z

.field private isYMoving:Z

.field private rectPaint:Landroid/graphics/Paint;

.field private targetPercent:F

.field private targetWaveHeightRatio:F

.field private wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

.field private waveHeight:F

.field private waveRatio:F

.field private waveSpeed:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;F)V
    .locals 3

    const/4 v2, 0x0

    const v1, -0x9f7a69

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;-><init>(Landroid/content/Context;IILcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;)V

    const-string v0, "VisualEffectEdgescreenCallEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->TAG:Ljava/lang/String;

    const/high16 v0, 0x41d00000    # 26.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->WAVE_SPEED:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->WAVE_RATIO:F

    iput v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->color:I

    iput v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->bgColor:I

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->WAVE_RATIO:F

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveRatio:F

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->WAVE_SPEED:F

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveSpeed:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->easingValue:F

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->elasticValue:F

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->isYMoving:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->isForTension:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->TAG:Ljava/lang/String;

    const-string v1, "EdgescreenCallEffect constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->effectWidth:I

    iput p3, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->effectHeight:I

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveRatio:F

    mul-float/2addr v0, p7

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveRatio:F

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->color:I

    invoke-static {p5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->bgColor:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitValues - waveColor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitValues - bgColor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->bgColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitValues - waveWidthRatio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->initEffect()V

    return-void
.end method

.method private initEffect()V
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveSpeed:F

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->effectWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x44b40000    # 1440.0f

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveSpeed:F

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->effectHeight:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveHeight:F

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->effectHeight:I

    int-to-float v4, v2

    const/high16 v5, -0x1000000

    iget v6, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->bgColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->gradient:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->rectPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->rectPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v2, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->effectWidth:I

    iget v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->effectHeight:I

    sget-object v5, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iget v6, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveRatio:F

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;-><init>(IILcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;FZ)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->color:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setColor(IZ)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveSpeed:F

    invoke-virtual {v0, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setSpeed(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveHeight:F

    invoke-virtual {v0, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setWaveHeight(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setWaveHeightRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setPercent(F)V

    return-void
.end method


# virtual methods
.method protected clearVariables()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->clearVariables()V

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->elasticDist:F

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->targetWaveHeightRatio:F

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentWaveHeightRatio:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v4, 0x0

    const v5, 0x38d1b717    # 1.0E-4f

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->isYMoving:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentPercent:F

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->targetPercent:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->targetPercent:F

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentPercent:F

    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->isYMoving:Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentPercent:F

    invoke-virtual {v0, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setPercent(F)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->isForTension:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->animationValue:F

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->animationValue:F

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->animationValue:F

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->animationValue:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    iput v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->animationValue:F

    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->isForTension:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->TAG:Ljava/lang/String;

    const-string v2, "stopTention"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveSpeed:F

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->animationValue:F

    const/high16 v4, 0x41700000    # 15.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setSpeed(F)V

    :cond_2
    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->targetWaveHeightRatio:F

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->animationValue:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentWaveHeightRatio:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->easingValue:F

    div-float/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->elasticDist:F

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->elasticValue:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->elasticDist:F

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentWaveHeightRatio:F

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->elasticDist:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentWaveHeightRatio:F

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->isAnimatorRunning:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->isYMoving:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentWaveHeightRatio:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->stopAnimator()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentWaveHeightRatio:F

    invoke-virtual {v0, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setWaveHeightRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->calculatePoints(Landroid/graphics/Canvas;)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->effectHeight:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentWaveHeightRatio:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->effectWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->effectHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->drawWave(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;)V

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_4
    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentPercent:F

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->targetPercent:F

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentPercent:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->currentPercent:F

    goto/16 :goto_0
.end method

.method public setWaveMaxHeightRatio(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->setWaveMaxHeightRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveHeight:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setWaveHeight(F)V

    return-void
.end method

.method public setWaveSpeedRatio(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->setWaveSpeedRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->wave:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->waveSpeed:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setSpeed(F)V

    return-void
.end method

.method public startEffect()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->startEffect()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->targetWaveHeightRatio:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->easingValue:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->elasticValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->isYMoving:Z

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->targetPercent:F

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->startAnimator()V

    return-void
.end method

.method public stopEffect()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->stopEffect()V

    iput v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->targetWaveHeightRatio:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->easingValue:F

    iput v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->elasticValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->isYMoving:Z

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->getDefaultPercent()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/EdgescreenCallEffect;->targetPercent:F

    return-void
.end method

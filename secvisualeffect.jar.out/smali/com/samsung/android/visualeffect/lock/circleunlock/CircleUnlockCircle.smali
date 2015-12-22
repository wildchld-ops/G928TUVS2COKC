.class public Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;
.super Landroid/view/View;
.source "CircleUnlockCircle.java"


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private betweenRadius:I

.field private centerX:I

.field private centerY:I

.field private fillAnimationValue:F

.field private fillStrokeAlpha:I

.field private fillStrokeColor:Ljava/lang/String;

.field private fillStrokePaint:Landroid/graphics/Paint;

.field private innerStrokeAlpha:I

.field private innerStrokeColor:Ljava/lang/String;

.field private innerStrokePaint:Landroid/graphics/Paint;

.field private innerStrokeWidth:I

.field private isForShortcut:Z

.field private isShowSwipeCircle:Z

.field private maxRadius:I

.field private minRadius:I

.field private outStrokeAlpha:I

.field private outStrokeColor:Ljava/lang/String;

.field private outStrokePaint:Landroid/graphics/Paint;

.field private outerStrokeWidth:I

.field private strokeAnimationValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->DBG:Z

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->strokeAnimationValue:F

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillAnimationValue:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->isForShortcut:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->isShowSwipeCircle:Z

    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->centerY:I

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->centerX:I

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->maxRadius:I

    div-int/lit8 v0, p3, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->minRadius:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->maxRadius:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->minRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->betweenRadius:I

    iput p4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outerStrokeWidth:I

    iput p5, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokeWidth:I

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->setLayout()V

    return-void
.end method

.method private setAllPaintColor()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokeColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokeColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokeColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private setLayout()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outerStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string v0, "#ffffff"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokeColor:Ljava/lang/String;

    const/16 v0, 0xaa

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokeAlpha:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string v0, "#ffffff"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokeColor:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokeAlpha:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-string v0, "#ffffff"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokeColor:Ljava/lang/String;

    const/16 v0, 0x55

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokeAlpha:I

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->setAllPaintColor()V

    return-void
.end method


# virtual methods
.method public dragAnimationUpdate(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillAnimationValue:F

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->minRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->betweenRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->strokeAnimationValue:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outerStrokeWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    sub-float v1, v3, v4

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->centerX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->centerY:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->isForShortcut:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->centerX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->centerY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->minRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillAnimationValue:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->isShowSwipeCircle:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillAnimationValue:F

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->strokeAnimationValue:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->strokeAnimationValue:F

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->betweenRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->minRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->betweenRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v7

    add-float v0, v3, v4

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->centerX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->centerY:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillAnimationValue:F

    goto :goto_0
.end method

.method public setCircleMinWidth(I)V
    .locals 2

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->minRadius:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->maxRadius:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->minRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->betweenRadius:I

    return-void
.end method

.method public setIsForShortcut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->isForShortcut:Z

    return-void
.end method

.method public setIsWhiteBg(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "#444444"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokeColor:Ljava/lang/String;

    const-string v0, "#444444"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokeColor:Ljava/lang/String;

    const-string v0, "#444444"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokeColor:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->setAllPaintColor()V

    return-void

    :cond_0
    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokeColor:Ljava/lang/String;

    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->innerStrokeColor:Ljava/lang/String;

    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->fillStrokeColor:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOuterCircleType(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0xaa

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokeAlpha:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->setAllPaintColor()V

    return-void

    :cond_0
    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokeAlpha:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->outStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public showSwipeCircleEffect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->isShowSwipeCircle:Z

    return-void
.end method

.method public strokeAnimationUpdate(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->strokeAnimationValue:F

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->invalidate()V

    return-void
.end method

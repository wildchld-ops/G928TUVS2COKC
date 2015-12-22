.class public Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
.super Landroid/view/View;
.source "SViewCoverUnlockCircleEffect.java"


# instance fields
.field private final ANIMATION_DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private betweenRadius:I

.field private centerX:I

.field private centerY:I

.field private fillAnimationValue:F

.field private fillStrokePaint:Landroid/graphics/Paint;

.field private innerStrokePaint:Landroid/graphics/Paint;

.field private innerStrokeWidth:I

.field private isForShortcut:Z

.field private maxRadius:I

.field private minRadius:I

.field private outStrokePaint:Landroid/graphics/Paint;

.field private outerStrokeWidth:I

.field private strokeAnimationValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "SViewCoverUnlockCircleEffect"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->ANIMATION_DEBUG:Z

    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationValue:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->fillAnimationValue:F

    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->isForShortcut:Z

    iput p6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->centerY:I

    iput p6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->centerX:I

    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->maxRadius:I

    div-int/lit8 v0, p3, 0x2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->maxRadius:I

    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->betweenRadius:I

    iput p4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->outerStrokeWidth:I

    iput p5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokeWidth:I

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->setLayout()V

    return-void
.end method

.method private setLayout()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->outStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->outStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->outStrokePaint:Landroid/graphics/Paint;

    const v1, -0x55000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->outStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->outStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->outerStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->fillStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->fillStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->fillStrokePaint:Landroid/graphics/Paint;

    const v1, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->fillStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public dragAnimationUpdate(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->fillAnimationValue:F

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->betweenRadius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationValue:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->outerStrokeWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-float v2, v4, v5

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->centerX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->centerY:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->outStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->centerX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->centerY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->fillAnimationValue:F

    iget v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationValue:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationValue:F

    :goto_0
    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->maxRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    int-to-float v5, v5

    sub-float v1, v4, v5

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->fillStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    int-to-float v4, v4

    div-float v5, v1, v8

    add-float v0, v4, v5

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->centerX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->centerY:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->fillStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->fillAnimationValue:F

    goto :goto_0
.end method

.method public setCircleMinWidth(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    return-void
.end method

.method public setInnerStrokePaint(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokeWidth:I

    return-void
.end method

.method public setIsForShortcut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->isForShortcut:Z

    return-void
.end method

.method public strokeAnimationUpdate(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationValue:F

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->invalidate()V

    return-void
.end method

.class public Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;
.super Ljava/lang/Object;
.source "WaveShape.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$1;,
        Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$XAscCompare;,
        Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$XDescCompare;,
        Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;
    }
.end annotation


# instance fields
.field private MARGIN:I

.field private centerY:F

.field private circlePaint:Landroid/graphics/Paint;

.field private colorDown:I

.field private colorUp:I

.field private directionForHalfWave:I

.field private isNewWaveUpside:Z

.field private isRTL:Z

.field private left:I

.field private pathDown:Landroid/graphics/Path;

.field private pathUp:Landroid/graphics/Path;

.field private pointArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;",
            ">;"
        }
    .end annotation
.end field

.field private pointTotal:I

.field private rectPaint:Landroid/graphics/Paint;

.field private right:I

.field private shapePaintDown:Landroid/graphics/Paint;

.field private shapePaintUp:Landroid/graphics/Paint;

.field private sideType:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

.field private speed:F

.field private subDivision:I

.field private waveHeight:F

.field private waveHeightRatio:F

.field private waveShapeHeight:I

.field private waveShapeWidth:I

.field private waveWidth:F


# direct methods
.method public constructor <init>(IILcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;FZ)V
    .locals 4

    const/high16 v3, -0x1000000

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->MARGIN:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->subDivision:I

    iput v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->colorUp:I

    iput v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->colorDown:I

    iput v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->directionForHalfWave:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->speed:F

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveHeight:F

    iput v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveHeightRatio:F

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->isRTL:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->isNewWaveUpside:Z

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveShapeWidth:I

    iput p2, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveShapeHeight:I

    iput-object p3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->sideType:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iput-boolean p5, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->isRTL:Z

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->MARGIN:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveWidth:F

    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->centerY:F

    div-float v0, v2, p4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointTotal:I

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->MARGIN:I

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->left:I

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->MARGIN:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->right:I

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    if-eq p3, v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathUp:Landroid/graphics/Path;

    :cond_0
    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    if-eq p3, v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathDown:Landroid/graphics/Path;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setPoints()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setPaint()V

    return-void
.end method

.method private getIsNewWaveUpside()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->isNewWaveUpside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->isNewWaveUpside:Z

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->isNewWaveUpside:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOpacityColor(I)I
    .locals 2

    const v1, 0xffffff

    and-int v0, p1, v1

    const/high16 v1, -0x78000000

    or-int/2addr v1, v0

    return v1
.end method

.method private setPaint()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->circlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->circlePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->rectPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->rectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->rectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x66ff0000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintUp:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintUp:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintUp:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->colorUp:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintUp:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintDown:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintDown:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintDown:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->colorDown:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintDown:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private setPoints()V
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointTotal:I

    if-ge v0, v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->isRTL:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveWidth:F

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    :goto_1
    new-instance v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->centerY:F

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->getIsNewWaveUpside()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;-><init>(FFZ)V

    iget-object v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveWidth:F

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float v2, v3, v4

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public calculatePoints(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointTotal:I

    new-array v6, v0, [Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;

    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointTotal:I

    if-ge v7, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->centerY:F

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveHeight:F

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveHeightRatio:F

    mul-float/2addr v3, v0

    invoke-virtual {v10}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->getIsUpside()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    invoke-virtual {v10, v0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->setY(F)V

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->left:I

    if-lez v0, :cond_0

    invoke-virtual {v10}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->getX()F

    move-result v0

    invoke-virtual {v10}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->getY()F

    move-result v1

    const/high16 v3, 0x41700000    # 15.0f

    iget-object v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    aput-object v10, v6, v7

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->isRTL:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->speed:F

    neg-float v9, v0

    :goto_2
    invoke-virtual {v10}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->getX()F

    move-result v0

    add-float/2addr v0, v9

    invoke-virtual {v10, v0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->setX(F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->directionForHalfWave:I

    goto :goto_1

    :cond_2
    iget v9, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->speed:F

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->subDivision:I

    invoke-static {v6, v0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSplineUtils;->subdividePoints([Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;I)[Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;

    move-result-object v11

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->sideType:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathUp:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathUp:Landroid/graphics/Path;

    aget-object v1, v11, v5

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getX()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->sideType:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathDown:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathDown:Landroid/graphics/Path;

    aget-object v1, v11, v5

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getX()F

    move-result v1

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveShapeHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_5
    const/4 v8, 0x1

    :goto_3
    array-length v0, v11

    if-ge v8, v0, :cond_8

    aget-object v10, v11, v8

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->sideType:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathUp:Landroid/graphics/Path;

    invoke-virtual {v10}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getX()F

    move-result v1

    invoke-virtual {v10}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->sideType:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathDown:Landroid/graphics/Path;

    invoke-virtual {v10}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getX()F

    move-result v1

    invoke-virtual {v10}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->sideType:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathUp:Landroid/graphics/Path;

    array-length v1, v11

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v11, v1

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getX()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->sideType:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathDown:Landroid/graphics/Path;

    array-length v1, v11

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v11, v1

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getX()F

    move-result v1

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveShapeHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->isRTL:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->getX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->left:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->getX()F

    move-result v1

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointTotal:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveWidth:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->setX(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->getIsNewWaveUpside()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->setIsUpside(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$XDescCompare;

    invoke-direct {v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$XDescCompare;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->isRTL:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->getX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->right:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->getX()F

    move-result v1

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointTotal:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveWidth:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->setX(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->getIsNewWaveUpside()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->setIsUpside(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$XAscCompare;

    invoke-direct {v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$XAscCompare;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_c
    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->left:I

    if-lez v0, :cond_d

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->left:I

    int-to-float v1, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->right:I

    int-to-float v3, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveShapeHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_d
    return-void
.end method

.method public drawWave(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$1;->$SwitchMap$com$samsung$android$visualeffect$naturalcurve$wave$WaveShape$SideType:[I

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathUp:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintUp:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathDown:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintDown:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathUp:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintUp:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pathDown:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintDown:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setColor(IIZ)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->colorUp:I

    if-eqz p3, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->getOpacityColor(I)I

    move-result p2

    :cond_0
    iput p2, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->colorDown:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintUp:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->colorUp:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintDown:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->colorDown:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColor(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->sideType:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->getOpacityColor(I)I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->colorDown:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintDown:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->colorDown:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->getOpacityColor(I)I

    move-result p1

    :cond_2
    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->colorUp:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintUp:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->colorUp:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setHalfWave(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->directionForHalfWave:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPaintMode(Landroid/graphics/PorterDuff$Mode;Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$1;->$SwitchMap$com$samsung$android$visualeffect$naturalcurve$wave$WaveShape$SideType:[I

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintUp:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintDown:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintUp:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->shapePaintDown:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPercent(F)V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveShapeHeight:I

    int-to-float v0, v0

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->centerY:F

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->speed:F

    return-void
.end method

.method public setSubDivision(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->subDivision:I

    return-void
.end method

.method public setWaveHeight(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveHeight:F

    return-void
.end method

.method public setWaveHeightRatio(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveHeightRatio:F

    return-void
.end method

.method public setWaveRatio(F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveShapeWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->MARGIN:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->waveWidth:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->pointTotal:I

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setPoints()V

    return-void
.end method

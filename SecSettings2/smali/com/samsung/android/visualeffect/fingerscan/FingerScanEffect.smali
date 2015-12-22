.class public Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;
.super Landroid/view/View;
.source "FingerScanEffect.java"


# instance fields
.field private final ANIMATION_DURATION:J

.field private final BACKGROUND_COLOR:Ljava/lang/String;

.field private final GRADIENT_COLORS:[I

.field private final POINT_TOTAL:I

.field private final SUB_DIVISION:I

.field private final TAG:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private blur:Landroid/graphics/BlurMaskFilter;

.field private currentPercents:[F

.field private foregourndImageResId:I

.field private foreground:Landroid/graphics/Bitmap;

.field private imageHeight:I

.field private imageWidth:I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pointAnimationValue:F

.field private pointAnimator:Landroid/animation/ValueAnimator;

.field private pointArray:[Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

.field private pointPaint:Landroid/graphics/Paint;

.field private previousPercentForFail:F

.field private previousPercents:[F

.field private previousPercentsForFail:[F

.field private previousTargetPercent:F

.field private final randomRangePercent:F

.field private showPoint:Z

.field private targetPercent:F

.field private targetPercents:[F

.field private upImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "1.4"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->VERSION:Ljava/lang/String;

    const-string v0, "VisualEffectFingerScan"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->TAG:Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->POINT_TOTAL:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->SUB_DIVISION:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->randomRangePercent:F

    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->ANIMATION_DURATION:J

    const-string v0, "#fff0efef"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->BACKGROUND_COLOR:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->GRADIENT_COLORS:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->showPoint:Z

    iput v2, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercent:F

    iput v2, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousTargetPercent:F

    iput v2, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousPercentForFail:F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercents:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->currentPercents:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousPercents:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousPercentsForFail:[F

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointArray:[Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

    const-string v0, "VisualEffectFingerScan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "FingerScanEffect Constructor : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " x "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", imageResId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectFingerScan"

    const-string v1, "Version = 1.4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v8, v6}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iput p4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->foregourndImageResId:I

    iput p2, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->imageWidth:I

    iput p3, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->imageHeight:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->imageWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->imageWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->imageHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->GRADIENT_COLORS:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->mLinearGradient:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x41100000    # 9.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->blur:Landroid/graphics/BlurMaskFilter;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->blur:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->setAnimator()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->setLayout()V

    return-void

    :array_0
    .array-data 4
        -0xfe392b
        -0xfef774
        -0x7e8501
    .end array-data
.end method

.method static synthetic access$0(Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointAnimationValue:F

    return-void
.end method

.method private recycleIfOtherObject(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private setAnimator()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect$1;-><init>(Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setLayout()V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x7

    const-string v1, "#fff0efef"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->foregourndImageResId:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->foreground:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->foreground:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->imageWidth:I

    iget v5, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->imageHeight:I

    invoke-static {v1, v2, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->upImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->foreground:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->upImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->recycleIfOtherObject(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointArray:[Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointArray:[Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

    aget-object v2, v2, v6

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointArray:[Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

    const/16 v2, 0x8

    iget-object v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointArray:[Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v1, v2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointArray:[Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

    const/16 v2, 0x9

    iget-object v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointArray:[Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aput-object v4, v1, v2

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

    iget v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->imageWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->imageHeight:I

    iget v5, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->imageHeight:I

    div-int/lit8 v5, v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;-><init>(IIIII)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointArray:[Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

    aput-object v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private startEffect()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->stopEffect()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private stopEffect()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x7

    if-lt v2, v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointArray:[Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSplineUtils;->subdividePoints([Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;I)[Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;

    move-result-object v5

    const/4 v1, 0x4

    array-length v6, v5

    add-int/lit8 v0, v6, -0x4

    iget-object v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->path:Landroid/graphics/Path;

    aget-object v7, v5, v1

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;->getX()F

    move-result v7

    aget-object v8, v5, v1

    invoke-virtual {v8}, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v3, v1, 0x1

    :goto_2
    if-lt v3, v0, :cond_4

    iget-object v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    iget-object v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->showPoint:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->upImage:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v10, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->currentPercents:[F

    iget-object v7, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousPercents:[F

    aget v7, v7, v2

    iget-object v8, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercents:[F

    aget v8, v8, v2

    iget-object v9, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousPercents:[F

    aget v9, v9, v2

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointAnimationValue:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v2

    iget-object v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointArray:[Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;

    aget-object v4, v6, v2

    iget-object v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->currentPercents:[F

    aget v6, v6, v2

    invoke-virtual {v4, v6}, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->setPercent(F)V

    iget-boolean v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->showPoint:Z

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->getX()F

    move-result v6

    invoke-virtual {v4}, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->getY()F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    iget-object v9, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->path:Landroid/graphics/Path;

    aget-object v7, v5, v3

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;->getX()F

    move-result v7

    aget-object v8, v5, v3

    invoke-virtual {v8}, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public setPercent(F)V
    .locals 10

    const v9, 0x3f59999a    # 0.85f

    const/4 v8, 0x7

    const-string v4, "VisualEffectFingerScan"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setPercent : percent = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousTargetPercent:F

    iput v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousPercentForFail:F

    iget v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercent:F

    iput v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousTargetPercent:F

    iput p1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercent:F

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v8, :cond_1

    iget v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercent:F

    iget v5, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousTargetPercent:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v8, :cond_3

    iget v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousPercentForFail:F

    iget v5, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercent:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    const-string v4, "VisualEffectFingerScan"

    const-string v5, "scan failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousTargetPercent:F

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v8, :cond_8

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->startEffect()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousPercentsForFail:[F

    iget-object v5, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousPercents:[F

    aget v5, v5, v0

    aput v5, v4, v0

    iget-object v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousPercents:[F

    iget-object v5, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercents:[F

    aget v5, v5, v0

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v2, v4

    const v4, 0x3727c5ac    # 1.0E-5f

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercents:[F

    const/4 v5, 0x0

    aput v5, v4, v0

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const v4, 0x42c7ffff    # 99.99999f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercents:[F

    const/high16 v5, 0x42c80000    # 100.0f

    aput v5, v4, v0

    goto :goto_4

    :cond_6
    const/high16 v4, 0x41700000    # 15.0f

    mul-float v5, v9, p1

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    mul-float v3, v4, v9

    if-nez v1, :cond_7

    iget-object v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercents:[F

    aget v4, v4, v0

    cmpg-float v4, v4, v3

    if-gez v4, :cond_4

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercents:[F

    aput v3, v4, v0

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->targetPercents:[F

    iget-object v5, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->previousPercentsForFail:[F

    aget v5, v5, v0

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

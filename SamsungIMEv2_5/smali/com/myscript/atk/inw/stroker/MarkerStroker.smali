.class public Lcom/myscript/atk/inw/stroker/MarkerStroker;
.super Ljava/lang/Object;
.source "MarkerStroker.java"

# interfaces
.implements Lcom/myscript/atk/inw/stroker/Stroker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;
    }
.end annotation


# static fields
.field private static final MIN_POINT_DISTANCE:F


# instance fields
.field private mBoundingRect:Landroid/graphics/RectF;

.field private mBoundingRectRaw:Landroid/graphics/RectF;

.field private mDirtyPath:Landroid/graphics/Path;

.field private mDirtyRect:Landroid/graphics/RectF;

.field private mDirtyRectRaw:Landroid/graphics/RectF;

.field private mEndCap:Landroid/graphics/Bitmap;

.field private mEndMatrix:Landroid/graphics/Matrix;

.field private mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

.field private mLastMidX:F

.field private mLastMidY:F

.field private mLastPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

.field private mLastX:F

.field private mLastY:F

.field private mPath:Landroid/graphics/Path;

.field private mPointCount:I

.field private mPointSize:Z

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

.field private mStartCap:Landroid/graphics/Bitmap;

.field private mStartMatrix:Landroid/graphics/Matrix;

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPoints:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartMatrix:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndMatrix:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartCap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndCap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private computeAngle(Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;)F
    .locals 6

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    iget v2, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dy:F

    iget v3, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dx:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v1, v5, v0

    iget v2, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dy:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    iget v2, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dx:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    neg-float v1, v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dy:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_2

    iget v2, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dx:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    const/high16 v2, -0x3d4c0000    # -90.0f

    sub-float v1, v2, v0

    goto :goto_0

    :cond_2
    iget v2, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dy:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    iget v2, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dx:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    add-float v1, v5, v0

    goto :goto_0

    :cond_3
    iget v2, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dy:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dx:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_0

    goto :goto_0
.end method

.method private computeScale(Landroid/graphics/Bitmap;)Landroid/graphics/PointF;
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mWidth:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method private computeTranslation(Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;Landroid/graphics/Bitmap;)Landroid/graphics/PointF;
    .locals 4

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method private createResizedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v4, v3, v7

    new-array v1, v4, [I

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int v4, v7, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_0

    const/4 v4, -0x1

    invoke-virtual {v0, v8, v9, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method

.method private setPointPath()V
    .locals 9

    iget v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v1, v4, v5

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPoints:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v2, v0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    iget v3, v0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v3, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    sub-float v5, v2, v1

    sub-float v6, v3, v1

    add-float v7, v2, v1

    add-float v8, v3, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v3, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    sub-float v5, v2, v1

    sub-float v6, v3, v1

    add-float v7, v2, v1

    add-float v8, v3, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateFirstPointMatrix(Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;)V
    .locals 13

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    invoke-virtual {p1, v8}, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->computeDistanceToPreviousPoint(Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v9, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dx:F

    neg-float v9, v9

    iput v9, v8, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dx:F

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v9, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dy:F

    neg-float v9, v9

    iput v9, v8, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dy:F

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v9, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->d:F

    iput v9, v8, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->d:F

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    invoke-direct {p0, v8}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->computeAngle(Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;)F

    move-result v3

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartCap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->computeScale(Landroid/graphics/Bitmap;)Landroid/graphics/PointF;

    move-result-object v4

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartCap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8, v9}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->computeTranslation(Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;Landroid/graphics/Bitmap;)Landroid/graphics/PointF;

    move-result-object v6

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartMatrix:Landroid/graphics/Matrix;

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v10, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartMatrix:Landroid/graphics/Matrix;

    iget v9, v4, Landroid/graphics/PointF;->x:F

    iget v10, v4, Landroid/graphics/PointF;->y:F

    iget v11, v6, Landroid/graphics/PointF;->x:F

    iget v12, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v9, v9, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    iget-object v10, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v10, v10, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    invoke-virtual {v8, v3, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartCap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartCap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v7, v8

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v8, v8, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    sub-float v1, v8, v7

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v8, v8, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    sub-float v5, v8, v7

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v8, v8, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    add-float v2, v8, v7

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v8, v8, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    add-float v0, v8, v7

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v8, v1, v5, v2, v0}, Landroid/graphics/RectF;->union(FFFF)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v8, v1, v5, v2, v0}, Landroid/graphics/RectF;->union(FFFF)V

    return-void
.end method

.method private updateLastPointMatrix()V
    .locals 14

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndMatrix:Landroid/graphics/Matrix;

    iget v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointCount:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    :goto_0
    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iput-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    invoke-virtual {v9, v2}, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->computeDistanceToPreviousPoint(Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;)V

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    invoke-direct {p0, v9}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->computeAngle(Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;)F

    move-result v4

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndCap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v9}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->computeScale(Landroid/graphics/Bitmap;)Landroid/graphics/PointF;

    move-result-object v5

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget-object v10, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndCap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v10}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->computeTranslation(Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;Landroid/graphics/Bitmap;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndMatrix:Landroid/graphics/Matrix;

    iget v10, v7, Landroid/graphics/PointF;->x:F

    iget v11, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndMatrix:Landroid/graphics/Matrix;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v11, v5, Landroid/graphics/PointF;->y:F

    iget v12, v7, Landroid/graphics/PointF;->x:F

    iget v13, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v10, v10, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    iget-object v11, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v11, v11, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    invoke-virtual {v9, v4, v10, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndCap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndCap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v8, v9

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v9, v9, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    sub-float v1, v9, v8

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v9, v9, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    sub-float v6, v9, v8

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v9, v9, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    add-float v3, v9, v8

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v9, v9, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    add-float v0, v9, v8

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v9, v1, v6, v3, v0}, Landroid/graphics/RectF;->union(FFFF)V

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v9, v1, v6, v3, v0}, Landroid/graphics/RectF;->union(FFFF)V

    return-void

    :cond_0
    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPoints:Ljava/util/ArrayList;

    iget v10, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointCount:I

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointSize:Z

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iput v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointCount:I

    iput-object v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndMatrix:Landroid/graphics/Matrix;

    iput-object v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public end()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastX:F

    iget v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastX:F

    iget v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->union(FF)V

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastX:F

    iget v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastX:F

    iget v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->union(FF)V

    invoke-direct {p0}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->updateLastPointMatrix()V

    :cond_0
    iget v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    iput-boolean v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointSize:Z

    :goto_0
    iget-boolean v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointSize:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->setPointPath()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointSize:Z

    goto :goto_0
.end method

.method public getBoundingRect()Landroid/graphics/RectF;
    .locals 4

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRect:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    :cond_0
    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRect:Landroid/graphics/RectF;

    return-object v1
.end method

.method public getDirtyRect()Landroid/graphics/RectF;
    .locals 4

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRect:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    :cond_0
    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRect:Landroid/graphics/RectF;

    return-object v1
.end method

.method public getEndCap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndCap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getEndMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getFactor()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPointCount()I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointCount:I

    return v0
.end method

.method public getPoints()[Lcom/myscript/atk/inw/InkPoint;
    .locals 9

    iget v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointCount:I

    new-array v8, v0, [Lcom/myscript/atk/inw/InkPoint;

    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointCount:I

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    new-instance v0, Lcom/myscript/atk/inw/InkPoint;

    iget v1, v7, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    iget v2, v7, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    iget v3, v7, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->p:F

    iget-wide v4, v7, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->t:J

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/inw/InkPoint;-><init>(FFFJ)V

    aput-object v0, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v8
.end method

.method public getStartCap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartCap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStartMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mWidth:F

    return v0
.end method

.method public isPointSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointSize:Z

    return v0
.end method

.method public moveTo(FFFJZ)V
    .locals 12

    new-instance v1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;-><init>(Lcom/myscript/atk/inw/stroker/MarkerStroker;FFFJ)V

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastX:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastY:F

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v2, v2, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v3, v3, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointCount:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v1}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->updateFirstPointMatrix(Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;)V

    :cond_1
    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPoints:Ljava/util/ArrayList;

    new-instance v3, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;-><init>(Lcom/myscript/atk/inw/stroker/MarkerStroker;FFFJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastX:F

    add-float/2addr v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, v2, v3

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastY:F

    add-float/2addr v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastX:F

    iget v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastY:F

    invoke-virtual {v2, v3, v4, v0, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v10}, Landroid/graphics/RectF;->union(FF)V

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    iget v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastX:F

    iget v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastX:F

    iget v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastY:F

    invoke-virtual {v2, v3, v4, v0, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v10}, Landroid/graphics/RectF;->union(FF)V

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    iget v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastX:F

    iget v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    iput p1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastX:F

    iput p2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastY:F

    iput v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastMidX:F

    iput v10, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastMidY:F

    iput-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointCount:I

    :cond_2
    return-void
.end method

.method public resetDirtyRect()V
    .locals 5

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastMidX:F

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastMidY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    iget v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastMidX:F

    iget v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastMidY:F

    iget v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastMidX:F

    iget v4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastMidY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setCaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->createResizedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mStartCap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p2}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->createResizedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mEndCap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setFactor(F)V
    .locals 0

    return-void
.end method

.method public setStylus(Z)V
    .locals 0

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mWidth:F

    return-void
.end method

.method public startAt(FFFJ)V
    .locals 8

    invoke-virtual {p0}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->clear()V

    new-instance v1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;-><init>(Lcom/myscript/atk/inw/stroker/MarkerStroker;FFFJ)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iput p1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastX:F

    iput p2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastY:F

    iput p1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastMidX:F

    iput p2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mLastMidY:F

    iput-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mFirstPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    iput-object v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;

    const/4 v0, 0x1

    iput v0, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker;->mPointCount:I

    return-void
.end method

.method public strokerType()Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;
    .locals 1

    sget-object v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypeMarker:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    return-object v0
.end method

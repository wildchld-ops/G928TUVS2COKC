.class public Lcom/myscript/atk/inw/stroker/PressureStroker;
.super Ljava/lang/Object;
.source "PressureStroker.java"

# interfaces
.implements Lcom/myscript/atk/inw/stroker/Stroker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/inw/stroker/PressureStroker$Point;
    }
.end annotation


# static fields
.field protected static final DEFAULT_WIDTH:F = 1.0f

.field protected static final MIN_POINT_DISTANCE:F = 5.0f


# instance fields
.field protected mBoundingRect:Landroid/graphics/RectF;

.field protected mDirtyRect:Landroid/graphics/RectF;

.field protected mFullWidth:F

.field protected mHalfCircleRect:Landroid/graphics/RectF;

.field protected mHalfWidth:F

.field protected mPath:Landroid/graphics/Path;

.field protected mPointCount:I

.field protected mPointSize:Z

.field protected mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/myscript/atk/inw/stroker/PressureStroker$Point;",
            ">;"
        }
    .end annotation
.end field

.field protected mPressureSampleAccu:F

.field protected mPressureSampleCount:I

.field protected mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

.field protected mPressureType:I

.field protected mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

.field protected mSegment:Landroid/graphics/Path;

.field protected mSegmentRect:Landroid/graphics/RectF;

.field protected mStrokeLength:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;

    invoke-direct {v1}, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/myscript/atk/inw/stroker/PressureStroker;-><init>(ILcom/myscript/atk/inw/stroker/pressure/PressureService;)V

    return-void
.end method

.method protected constructor <init>(ILcom/myscript/atk/inw/stroker/pressure/PressureService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mFullWidth:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mHalfWidth:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mBoundingRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mHalfCircleRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mDirtyRect:Landroid/graphics/RectF;

    iput p1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureType:I

    iput-object p2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

    return-void
.end method

.method private addFirstSegment(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V
    .locals 11

    const/high16 v10, 0x3f000000    # 0.5f

    iget v0, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    iget v4, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    iget v1, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    iget v5, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    add-float/2addr v8, v9

    mul-float v2, v10, v8

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    add-float/2addr v8, v9

    mul-float v6, v10, v8

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    add-float/2addr v8, v9

    mul-float v3, v10, v8

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    add-float/2addr v8, v9

    mul-float v7, v10, v8

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-direct {p0, v1, v5, v0, v4}, Lcom/myscript/atk/inw/stroker/PressureStroker;->addHalfCircle(FFFF)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mBoundingRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mDirtyRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return-void
.end method

.method private addHalfCircle(FFFF)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    sub-float v4, p1, p3

    sub-float v5, p2, p4

    float-to-double v6, v5

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float v3, v6, v10

    add-float v6, p1, p3

    div-float v1, v6, v10

    add-float v6, p2, p4

    div-float v2, v6, v10

    iget-object v6, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mHalfCircleRect:Landroid/graphics/RectF;

    sub-float v7, v1, v3

    sub-float v8, v2, v3

    add-float v9, v1, v3

    add-float v10, v2, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mHalfCircleRect:Landroid/graphics/RectF;

    const/high16 v8, -0x3ccc0000    # -180.0f

    invoke-virtual {v6, v7, v0, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method private addLastSegment(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V
    .locals 11

    const/high16 v10, 0x3f000000    # 0.5f

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    add-float/2addr v8, v9

    mul-float v0, v10, v8

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    add-float/2addr v8, v9

    mul-float v4, v10, v8

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    add-float/2addr v8, v9

    mul-float v1, v10, v8

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    add-float/2addr v8, v9

    mul-float v5, v10, v8

    iget v2, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    iget v6, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    iget v3, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    iget v7, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-direct {p0, v2, v6, v3, v7}, Lcom/myscript/atk/inw/stroker/PressureStroker;->addHalfCircle(FFFF)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mBoundingRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mDirtyRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return-void
.end method

.method private addPressureSample(F)V
    .locals 1

    iget v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureSampleAccu:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureSampleAccu:F

    iget v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureSampleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureSampleCount:I

    return-void
.end method

.method private addSegment(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Z)V
    .locals 11

    const/high16 v10, 0x3f000000    # 0.5f

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    add-float/2addr v8, v9

    mul-float v0, v10, v8

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    add-float/2addr v8, v9

    mul-float v4, v10, v8

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    add-float/2addr v8, v9

    mul-float v1, v10, v8

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    add-float/2addr v8, v9

    mul-float v5, v10, v8

    iget v8, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    iget v9, p3, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    add-float/2addr v8, v9

    mul-float v2, v10, v8

    iget v8, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    iget v9, p3, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    add-float/2addr v8, v9

    mul-float v6, v10, v8

    iget v8, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    iget v9, p3, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    add-float/2addr v8, v9

    mul-float v3, v10, v8

    iget v8, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    iget v9, p3, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    add-float/2addr v8, v9

    mul-float v7, v10, v8

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    iget v10, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    invoke-virtual {v8, v9, v10, v2, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    if-eqz p4, :cond_0

    invoke-direct {p0, v2, v6, v3, v7}, Lcom/myscript/atk/inw/stroker/PressureStroker;->addHalfCircle(FFFF)V

    :goto_0
    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    iget v9, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    iget v10, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    invoke-virtual {v8, v9, v10, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mBoundingRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mDirtyRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return-void

    :cond_0
    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private computeControlsOfFirstPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V
    .locals 5

    iget v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mHalfWidth:F

    iget v4, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    mul-float v2, v3, v4

    neg-float v3, v2

    iget v4, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->uy:F

    mul-float v0, v3, v4

    iget v3, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->ux:F

    mul-float v1, v2, v3

    iget v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    add-float/2addr v3, v0

    iput v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    iget v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    add-float/2addr v3, v1

    iput v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    iget v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    sub-float/2addr v3, v0

    iput v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    iget v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    sub-float/2addr v3, v1

    iput v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    return-void
.end method

.method private computeControlsOfLastPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V
    .locals 5

    iget v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mHalfWidth:F

    iget v4, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    mul-float v2, v3, v4

    neg-float v3, v2

    iget v4, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->uy:F

    mul-float v0, v3, v4

    iget v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->ux:F

    mul-float v1, v2, v3

    iget v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    add-float/2addr v3, v0

    iput v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    iget v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    add-float/2addr v3, v1

    iput v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    iget v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    sub-float/2addr v3, v0

    iput v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    iget v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    sub-float/2addr v3, v1

    iput v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    return-void
.end method

.method private computeControlsOfPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V
    .locals 10

    iget v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->ux:F

    iget v8, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->ux:F

    add-float v5, v7, v8

    iget v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->uy:F

    iget v8, p2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->uy:F

    add-float v6, v7, v8

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float v4, v7, v8

    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_0

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    iget v7, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mHalfWidth:F

    iget v8, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    mul-float v2, v7, v8

    neg-float v7, v2

    mul-float/2addr v7, v6

    div-float v0, v7, v3

    mul-float v7, v2, v5

    div-float v1, v7, v3

    iget v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    add-float/2addr v7, v0

    iput v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    iget v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    add-float/2addr v7, v1

    iput v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    iget v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    sub-float/2addr v7, v0

    iput v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    iget v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    sub-float/2addr v7, v1

    iput v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    :goto_0
    return-void

    :cond_0
    iget v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    iput v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x1:F

    iget v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    iput v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y1:F

    iget v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    iput v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x2:F

    iget v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    iput v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y2:F

    goto :goto_0
.end method

.method public static createRawPressureStroker()Lcom/myscript/atk/inw/stroker/PressureStroker;
    .locals 3

    new-instance v0, Lcom/myscript/atk/inw/stroker/PressureStroker;

    const/4 v1, 0x0

    new-instance v2, Lcom/myscript/atk/inw/stroker/pressure/RealSimulator;

    invoke-direct {v2}, Lcom/myscript/atk/inw/stroker/pressure/RealSimulator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/inw/stroker/PressureStroker;-><init>(ILcom/myscript/atk/inw/stroker/pressure/PressureService;)V

    return-object v0
.end method

.method public static createSimulatedPressureStroker()Lcom/myscript/atk/inw/stroker/PressureStroker;
    .locals 3

    new-instance v0, Lcom/myscript/atk/inw/stroker/PressureStroker;

    const/4 v1, 0x1

    new-instance v2, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;

    invoke-direct {v2}, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/inw/stroker/PressureStroker;-><init>(ILcom/myscript/atk/inw/stroker/pressure/PressureService;)V

    return-object v0
.end method

.method private endPath()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mBoundingRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mHalfWidth:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mBoundingRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mHalfWidth:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iput-boolean v6, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointSize:Z

    :goto_0
    iget v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    if-lez v3, :cond_2

    iget-boolean v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointSize:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    invoke-direct {p0, v3}, Lcom/myscript/atk/inw/stroker/PressureStroker;->setPointSegment(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput-boolean v5, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointSize:Z

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    if-ne v3, v7, :cond_3

    iget-object v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    invoke-direct {p0, v1}, Lcom/myscript/atk/inw/stroker/PressureStroker;->computeControlsOfLastPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V

    invoke-direct {p0, v0, v1}, Lcom/myscript/atk/inw/stroker/PressureStroker;->addFirstSegment(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V

    invoke-direct {p0, v0, v1}, Lcom/myscript/atk/inw/stroker/PressureStroker;->addLastSegment(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    if-le v3, v7, :cond_0

    iget-object v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    iget v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    iget-object v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    iget v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    invoke-direct {p0, v2}, Lcom/myscript/atk/inw/stroker/PressureStroker;->computeControlsOfLastPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/myscript/atk/inw/stroker/PressureStroker;->addSegment(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Z)V

    invoke-direct {p0, v1, v2}, Lcom/myscript/atk/inw/stroker/PressureStroker;->addLastSegment(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V

    goto :goto_1
.end method

.method private getAveragePressure()F
    .locals 2

    iget v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureSampleCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureSampleAccu:F

    iget v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureSampleCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private resetAveragePressure()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureSampleAccu:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureSampleCount:I

    return-void
.end method

.method private setPointSegment(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V
    .locals 5

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    iget v1, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    iget v2, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    iget v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mHalfWidth:F

    invoke-direct {p0}, Lcom/myscript/atk/inw/stroker/PressureStroker;->getAveragePressure()F

    move-result v4

    mul-float/2addr v3, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegment:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mBoundingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mDirtyRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mSegmentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method private startPath()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mBoundingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mDirtyRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method private updatePathWithPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Z)V
    .locals 5

    const/4 v4, 0x2

    iget v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    invoke-direct {p0, v2, p1}, Lcom/myscript/atk/inw/stroker/PressureStroker;->computeControlsOfFirstPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    invoke-direct {p0, v2, p1}, Lcom/myscript/atk/inw/stroker/PressureStroker;->computeControlsOfPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    invoke-direct {p0, v0, v2}, Lcom/myscript/atk/inw/stroker/PressureStroker;->addFirstSegment(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    if-le v2, v4, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    iget v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    iget v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    invoke-direct {p0, v2, p1}, Lcom/myscript/atk/inw/stroker/PressureStroker;->computeControlsOfPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/myscript/atk/inw/stroker/PressureStroker;->addSegment(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Z)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mStrokeLength:F

    invoke-direct {p0}, Lcom/myscript/atk/inw/stroker/PressureStroker;->startPath()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    iput-boolean v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointSize:Z

    return-void
.end method

.method public end()V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    iget v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mStrokeLength:F

    invoke-interface {v0, v1, v2}, Lcom/myscript/atk/inw/stroker/pressure/PressureService;->computePressureLastPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;F)V

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/inw/stroker/PressureStroker;->endPath()V

    return-void
.end method

.method public getBoundingRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mBoundingRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDirtyRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mDirtyRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getFactor()F
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

    invoke-interface {v0}, Lcom/myscript/atk/inw/stroker/pressure/PressureService;->getFactor()F

    move-result v0

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPointCount()I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    return v0
.end method

.method public getPoints()[Lcom/myscript/atk/inw/InkPoint;
    .locals 9

    iget v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    new-array v8, v0, [Lcom/myscript/atk/inw/InkPoint;

    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    new-instance v0, Lcom/myscript/atk/inw/InkPoint;

    iget v1, v7, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    iget v2, v7, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    iget v3, v7, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    iget-wide v4, v7, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->t:J

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/inw/InkPoint;-><init>(FFFJ)V

    aput-object v0, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v8
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mFullWidth:F

    return v0
.end method

.method public isPointSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointSize:Z

    return v0
.end method

.method public moveTo(FFFJZ)V
    .locals 8

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    iget v0, v0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    iget v2, v2, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    new-instance v1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;-><init>(Lcom/myscript/atk/inw/stroker/PressureStroker;FFFJ)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->computeDistanceToPreviousPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V

    iget v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mStrokeLength:F

    iget v2, v1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->d:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mStrokeLength:F

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    iget v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mStrokeLength:F

    invoke-interface {v0, v1, v2, v3}, Lcom/myscript/atk/inw/stroker/pressure/PressureService;->computePressure(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Ljava/util/List;F)V

    :cond_0
    iget v0, v1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    invoke-direct {p0, v0}, Lcom/myscript/atk/inw/stroker/PressureStroker;->addPressureSample(F)V

    invoke-direct {p0, v1, p6}, Lcom/myscript/atk/inw/stroker/PressureStroker;->updatePathWithPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Z)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    iput-object v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    :cond_1
    return-void
.end method

.method public resetDirtyRect()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mDirtyRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method public setFactor(F)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

    invoke-interface {v0, p1}, Lcom/myscript/atk/inw/stroker/pressure/PressureService;->setFactor(F)V

    :cond_0
    return-void
.end method

.method public setStylus(Z)V
    .locals 3

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureType:I

    if-eq v2, v0, :cond_0

    iput v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureType:I

    invoke-direct {p0}, Lcom/myscript/atk/inw/stroker/PressureStroker;->resetAveragePressure()V

    if-ne v0, v1, :cond_2

    new-instance v1, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;

    invoke-direct {v1}, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;-><init>()V

    iput-object v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/myscript/atk/inw/stroker/pressure/RealSimulator;

    invoke-direct {v1}, Lcom/myscript/atk/inw/stroker/pressure/RealSimulator;-><init>()V

    iput-object v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

    goto :goto_1
.end method

.method public setWidth(F)V
    .locals 1

    iput p1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mFullWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mHalfWidth:F

    return-void
.end method

.method public startAt(FFFJ)V
    .locals 8

    invoke-virtual {p0}, Lcom/myscript/atk/inw/stroker/PressureStroker;->clear()V

    new-instance v1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;-><init>(Lcom/myscript/atk/inw/stroker/PressureStroker;FFFJ)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPressureService:Lcom/myscript/atk/inw/stroker/pressure/PressureService;

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    iget v3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mStrokeLength:F

    invoke-interface {v0, v1, v2, v3}, Lcom/myscript/atk/inw/stroker/pressure/PressureService;->computePressure(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Ljava/util/List;F)V

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPointCount:I

    iput-object v1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker;->mPreviousPoint:Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    return-void
.end method

.method public strokerType()Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;
    .locals 1

    sget-object v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypePressure:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    return-object v0
.end method

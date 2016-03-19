.class public Lcom/myscript/atk/inw/stroker/SimpleStroker;
.super Ljava/lang/Object;
.source "SimpleStroker.java"

# interfaces
.implements Lcom/myscript/atk/inw/stroker/Stroker;


# instance fields
.field protected mBoundingRect:Landroid/graphics/RectF;

.field protected mBoundingRectRaw:Landroid/graphics/RectF;

.field protected mDirtyPath:Landroid/graphics/Path;

.field protected mDirtyRect:Landroid/graphics/RectF;

.field protected mDirtyRectRaw:Landroid/graphics/RectF;

.field protected mLastMidX:F

.field protected mLastMidY:F

.field protected mLastX:F

.field protected mLastY:F

.field protected mPath:Landroid/graphics/Path;

.field protected mPointSize:Z

.field protected mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/myscript/atk/inw/InkPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPoints:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPointSize:Z

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method public end()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastX:F

    iget v3, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    iget v2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastX:F

    iget v3, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->union(FF)V

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastX:F

    iget v3, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    iget v2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastX:F

    iget v3, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->union(FF)V

    :cond_0
    iget v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    iput-boolean v4, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPointSize:Z

    :goto_0
    iget-boolean v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPointSize:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/myscript/atk/inw/stroker/SimpleStroker;->setPointPath()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPointSize:Z

    goto :goto_0
.end method

.method public getBoundingRect()Landroid/graphics/RectF;
    .locals 4

    iget v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRect:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRect:Landroid/graphics/RectF;

    return-object v1
.end method

.method public getDirtyRect()Landroid/graphics/RectF;
    .locals 4

    iget v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRect:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRect:Landroid/graphics/RectF;

    return-object v1
.end method

.method public getFactor()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPointCount()I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPoints()[Lcom/myscript/atk/inw/InkPoint;
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPoints:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/myscript/atk/inw/InkPoint;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/myscript/atk/inw/InkPoint;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mWidth:F

    return v0
.end method

.method public isPointSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPointSize:Z

    return v0
.end method

.method public moveTo(FFFJZ)V
    .locals 10

    iget v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastY:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPoints:Ljava/util/ArrayList;

    new-instance v0, Lcom/myscript/atk/inw/InkPoint;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/inw/InkPoint;-><init>(FFFJ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastX:F

    add-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    iget v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastY:F

    add-float/2addr v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastX:F

    iget v2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastY:F

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/RectF;->union(FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    iget v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastX:F

    iget v2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->union(FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastX:F

    iget v2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastY:F

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/RectF;->union(FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    iget v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastX:F

    iget v2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->union(FF)V

    iput p1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastX:F

    iput p2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastY:F

    iput v6, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastMidX:F

    iput v7, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastMidY:F

    :cond_1
    return-void
.end method

.method public resetDirtyRect()V
    .locals 5

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastMidX:F

    iget v2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastMidY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    iget v1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastMidX:F

    iget v2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastMidY:F

    iget v3, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastMidX:F

    iget v4, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastMidY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setFactor(F)V
    .locals 0

    return-void
.end method

.method protected setPointPath()V
    .locals 9

    iget v4, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v1, v4, v5

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPoints:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/inw/InkPoint;

    iget v2, v0, Lcom/myscript/atk/inw/InkPoint;->x:F

    iget v3, v0, Lcom/myscript/atk/inw/InkPoint;->y:F

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v3, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    sub-float v5, v2, v1

    sub-float v6, v3, v1

    add-float v7, v2, v1

    add-float v8, v3, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v3, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v4, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    sub-float v5, v2, v1

    sub-float v6, v3, v1

    add-float v7, v2, v1

    add-float v8, v3, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setStylus(Z)V
    .locals 0

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mWidth:F

    return-void
.end method

.method public startAt(FFFJ)V
    .locals 8

    invoke-virtual {p0}, Lcom/myscript/atk/inw/stroker/SimpleStroker;->clear()V

    iget-object v6, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPoints:Ljava/util/ArrayList;

    new-instance v0, Lcom/myscript/atk/inw/InkPoint;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/inw/InkPoint;-><init>(FFFJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iput p1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastX:F

    iput p2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastY:F

    iput p1, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastMidX:F

    iput p2, p0, Lcom/myscript/atk/inw/stroker/SimpleStroker;->mLastMidY:F

    return-void
.end method

.method public strokerType()Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;
    .locals 1

    sget-object v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypeSimple:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    return-object v0
.end method

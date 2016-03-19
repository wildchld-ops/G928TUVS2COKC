.class public Lcom/myscript/atk/inw/stroker/StraightStroker;
.super Lcom/myscript/atk/inw/stroker/SimpleStroker;
.source "StraightStroker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/myscript/atk/inw/stroker/SimpleStroker;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    iget v1, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mPointSize:Z

    :goto_0
    iget-boolean v1, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mPointSize:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/inw/stroker/StraightStroker;->setPointPath()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mPointSize:Z

    goto :goto_0
.end method

.method public moveTo(FFFJZ)V
    .locals 8

    iget v0, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mLastX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mLastY:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mPoints:Ljava/util/ArrayList;

    new-instance v0, Lcom/myscript/atk/inw/InkPoint;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/inw/InkPoint;-><init>(FFFJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mBoundingRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->union(FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mDirtyPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mDirtyRectRaw:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->union(FF)V

    iput p1, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mLastX:F

    iput p2, p0, Lcom/myscript/atk/inw/stroker/StraightStroker;->mLastY:F

    :cond_1
    return-void
.end method

.method public strokerType()Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;
    .locals 1

    sget-object v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypeStraight:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    return-object v0
.end method

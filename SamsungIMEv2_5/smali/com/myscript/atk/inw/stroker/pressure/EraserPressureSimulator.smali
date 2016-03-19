.class public Lcom/myscript/atk/inw/stroker/pressure/EraserPressureSimulator;
.super Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;
.source "EraserPressureSimulator.java"


# static fields
.field private static final ERASER_POINTS_MIN_SPACING_FOR_MAX_RADIUS:F = 250.0f

.field private static final MAX_PRESSURE:F = 1.0f

.field private static final MIN_PRESSURE:F = 0.2f

.field private static final PRESSURE_FIRST_POINT:F = 0.2f

.field private static final PRESSURE_LAST_POINT:F = 0.2f

.field private static final PREVIOUS_POINT_RANGE:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;-><init>()V

    return-void
.end method


# virtual methods
.method public computePressure(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Ljava/util/List;F)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/inw/stroker/PressureStroker$Point;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/inw/stroker/PressureStroker$Point;",
            ">;F)V"
        }
    .end annotation

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x0

    cmpl-float v7, p3, v8

    if-nez v7, :cond_0

    iput v9, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    :goto_0
    return-void

    :cond_0
    iget v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->v:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    iget v7, v7, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    iput v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;->computePressure(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Ljava/util/List;F)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x19

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v7, v2, v4

    add-int/lit8 v1, v7, 0x1

    move v5, v1

    iget v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->d:F

    int-to-float v8, v1

    mul-float v0, v7, v8

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_2

    sub-int v7, v3, v4

    add-int/lit8 v6, v7, 0x1

    add-int/2addr v5, v6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;

    iget v7, v7, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->d:F

    int-to-float v8, v6

    mul-float/2addr v7, v8

    add-float/2addr v0, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    int-to-float v7, v5

    div-float/2addr v0, v7

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3b51b718    # 0.0032000002f

    mul-float/2addr v8, v0

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    goto :goto_0
.end method

.method public computePressureLastPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;F)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;->computePressureLastPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;F)V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    :goto_0
    return-void

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    goto :goto_0
.end method

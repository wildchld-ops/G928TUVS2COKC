.class public Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;
.super Ljava/lang/Object;
.source "PressureSimulator.java"

# interfaces
.implements Lcom/myscript/atk/inw/stroker/pressure/PressureService;


# static fields
.field private static final DEFAULT_PRESSURE:F = 0.7f

.field private static final PRESSURE_FIRST_POINT:F = 0.2f

.field private static final PRESSURE_LAST_POINT:F = 0.2f


# instance fields
.field private mFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;->setFactor(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;->setFactor(F)V

    return-void
.end method


# virtual methods
.method public computePressure(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Ljava/util/List;F)V
    .locals 6
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

    const/4 v1, 0x0

    cmpl-float v0, p3, v1

    if-nez v0, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->v:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const v0, 0x3f333333    # 0.7f

    iput v0, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    goto :goto_0

    :cond_1
    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    iget v3, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->v:F

    iget v4, p0, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;->mFactor:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    goto :goto_0
.end method

.method public computePressureLastPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;F)V
    .locals 1

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

.method public getFactor()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;->mFactor:F

    return v0
.end method

.method public setFactor(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/inw/stroker/pressure/PressureSimulator;->mFactor:F

    return-void
.end method

.class public Lcom/myscript/atk/inw/stroker/pressure/RealSimulator;
.super Ljava/lang/Object;
.source "RealSimulator.java"

# interfaces
.implements Lcom/myscript/atk/inw/stroker/pressure/PressureService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computePressure(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Ljava/util/List;F)V
    .locals 0
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

    return-void
.end method

.method public computePressureLastPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;F)V
    .locals 0

    return-void
.end method

.method public getFactor()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public setFactor(F)V
    .locals 0

    return-void
.end method

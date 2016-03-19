.class public interface abstract Lcom/myscript/atk/inw/stroker/pressure/PressureService;
.super Ljava/lang/Object;
.source "PressureService.java"


# static fields
.field public static final TYPE_ERASER:I = 0x2

.field public static final TYPE_RAW:I = 0x0

.field public static final TYPE_SIMULATED:I = 0x1


# virtual methods
.method public abstract computePressure(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;Ljava/util/List;F)V
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
.end method

.method public abstract computePressureLastPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;F)V
.end method

.method public abstract getFactor()F
.end method

.method public abstract setFactor(F)V
.end method

.class public Lcom/myscript/atk/inw/stroker/PressureStroker$Point;
.super Ljava/lang/Object;
.source "PressureStroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myscript/atk/inw/stroker/PressureStroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Point"
.end annotation


# instance fields
.field public d:F

.field public p:F

.field public t:J

.field final synthetic this$0:Lcom/myscript/atk/inw/stroker/PressureStroker;

.field public ux:F

.field public uy:F

.field public v:F

.field public x:F

.field public x1:F

.field public x2:F

.field public y:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>(Lcom/myscript/atk/inw/stroker/PressureStroker;FFFJ)V
    .locals 1

    iput-object p1, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->this$0:Lcom/myscript/atk/inw/stroker/PressureStroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    iput p3, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    iput p4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->p:F

    iput-wide p5, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->t:J

    return-void
.end method


# virtual methods
.method public computeDistanceToPreviousPoint(Lcom/myscript/atk/inw/stroker/PressureStroker$Point;)V
    .locals 9

    const/4 v8, 0x0

    iget-wide v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->t:J

    iget-wide v6, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->t:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    iget v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    iget v5, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->x:F

    sub-float v2, v4, v5

    iget v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    iget v5, p1, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->y:F

    sub-float v3, v4, v5

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float v0, v4, v5

    cmpl-float v4, v0, v8

    if-eqz v4, :cond_0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->d:F

    iget v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->d:F

    div-float v4, v2, v4

    iput v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->ux:F

    iget v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->d:F

    div-float v4, v3, v4

    iput v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->uy:F

    :cond_0
    cmpl-float v4, v1, v8

    if-lez v4, :cond_1

    iget v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->d:F

    div-float/2addr v4, v1

    iput v4, p0, Lcom/myscript/atk/inw/stroker/PressureStroker$Point;->v:F

    :cond_1
    return-void
.end method

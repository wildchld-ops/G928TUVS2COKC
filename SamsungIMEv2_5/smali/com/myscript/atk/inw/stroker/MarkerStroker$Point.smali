.class public Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;
.super Ljava/lang/Object;
.source "MarkerStroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myscript/atk/inw/stroker/MarkerStroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Point"
.end annotation


# instance fields
.field public d:F

.field public dx:F

.field public dy:F

.field public p:F

.field public t:J

.field final synthetic this$0:Lcom/myscript/atk/inw/stroker/MarkerStroker;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/myscript/atk/inw/stroker/MarkerStroker;FFFJ)V
    .locals 1

    iput-object p1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->this$0:Lcom/myscript/atk/inw/stroker/MarkerStroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    iput p3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    iput p4, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->p:F

    iput-wide p5, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->t:J

    return-void
.end method


# virtual methods
.method public computeDistanceToPreviousPoint(Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;)V
    .locals 6

    iget v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    iget v4, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->x:F

    sub-float v1, v3, v4

    iget v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    iget v4, p1, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->y:F

    sub-float v2, v3, v4

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float v0, v3, v4

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->d:F

    iput v1, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dx:F

    iput v2, p0, Lcom/myscript/atk/inw/stroker/MarkerStroker$Point;->dy:F

    :cond_0
    return-void
.end method

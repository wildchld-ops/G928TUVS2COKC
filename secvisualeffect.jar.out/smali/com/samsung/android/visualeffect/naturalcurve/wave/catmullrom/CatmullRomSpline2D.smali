.class public Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline2D;
.super Ljava/lang/Object;
.source "CatmullRomSpline2D.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private splineXVals:Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline;

.field private splineYVals:Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline2D;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline2D;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline2D;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "p0 cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline2D;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "p1 cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline2D;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "p2 cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    sget-boolean v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline2D;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "p3 cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline;

    invoke-virtual {p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getX()F

    move-result v2

    invoke-virtual {p3}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getX()F

    move-result v3

    invoke-virtual {p4}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getX()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline2D;->splineXVals:Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline;

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline;

    invoke-virtual {p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getY()F

    move-result v2

    invoke-virtual {p3}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getY()F

    move-result v3

    invoke-virtual {p4}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;->getY()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline2D;->splineYVals:Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline;

    return-void
.end method


# virtual methods
.method public q(F)Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;
    .locals 3

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline2D;->splineXVals:Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline;

    invoke-virtual {v1, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline;->q(F)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline2D;->splineYVals:Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline;

    invoke-virtual {v2, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/CatmullRomSpline;->q(F)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;-><init>(FF)V

    return-object v0
.end method

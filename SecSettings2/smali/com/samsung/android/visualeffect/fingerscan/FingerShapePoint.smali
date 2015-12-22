.class public Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;
.super Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;
.source "FingerShapePoint.java"


# instance fields
.field private angle:F

.field private maxDistance:I

.field private radian:D

.field private startX:I

.field private startY:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;-><init>()V

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->startX:I

    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->startY:I

    iput p5, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->maxDistance:I

    mul-int/lit16 v0, p3, 0x168

    div-int/2addr v0, p4

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->angle:F

    iget v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->angle:F

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->radian:D

    return-void
.end method


# virtual methods
.method public setPercent(F)V
    .locals 10

    iget v3, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->maxDistance:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v0, v3, v4

    iget v3, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->startX:I

    int-to-double v4, v3

    iget-wide v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->radian:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v1, v4

    iget v3, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->startY:I

    int-to-double v4, v3

    iget-wide v6, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->radian:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v2, v4

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->setX(F)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/fingerscan/FingerShapePoint;->setY(F)V

    return-void
.end method

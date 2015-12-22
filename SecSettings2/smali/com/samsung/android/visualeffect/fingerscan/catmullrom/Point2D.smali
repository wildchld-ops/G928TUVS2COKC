.class public Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;
.super Ljava/lang/Object;
.source "Point2D.java"


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;->x:F

    iput p2, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;->y:F

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;->y:F

    return v0
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/Point2D;->y:F

    return-void
.end method

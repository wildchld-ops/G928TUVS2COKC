.class public Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;
.super Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;
.source "WavePoint.java"


# instance fields
.field private isUpside:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;-><init>()V

    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/catmullrom/Point2D;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->setX(F)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->setY(F)V

    iput-boolean p3, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->isUpside:Z

    return-void
.end method


# virtual methods
.method public getIsUpside()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->isUpside:Z

    return v0
.end method

.method public setIsUpside(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->isUpside:Z

    return-void
.end method

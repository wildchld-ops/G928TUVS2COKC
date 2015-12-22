.class Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$XDescCompare;
.super Ljava/lang/Object;
.source "WaveShape.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XDescCompare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;->getX()F

    move-result v2

    sub-float v0, v1, v2

    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;

    check-cast p2, Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$XDescCompare;->compare(Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;Lcom/samsung/android/visualeffect/naturalcurve/wave/WavePoint;)I

    move-result v0

    return v0
.end method

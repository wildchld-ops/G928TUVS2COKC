.class public Landroid/view/animation/interpolator/CircEaseInOut;
.super Landroid/view/animation/BaseInterpolator;
.source "CircEaseInOut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method private inout(F)F
    .locals 3

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    const/high16 v0, -0x41000000    # -0.5f

    mul-float v1, p1, p1

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v1

    mul-float v1, p1, p1

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/CircEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method

.class public Landroid/view/animation/interpolator/BackEaseOut;
.super Landroid/view/animation/BaseInterpolator;
.source "BackEaseOut.java"


# instance fields
.field private overshot:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    iput p1, p0, Landroid/view/animation/interpolator/BackEaseOut;->overshot:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/interpolator/BackEaseOut;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/internal/R$styleable;->BackEaseOut:[I

    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/interpolator/BackEaseOut;->overshot:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->BackEaseOut:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method private out(FF)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const p2, 0x3fd9cd60

    :cond_0
    sub-float/2addr p1, v2

    mul-float v0, p1, p1

    add-float v1, p2, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    iget v0, p0, Landroid/view/animation/interpolator/BackEaseOut;->overshot:F

    invoke-direct {p0, p1, v0}, Landroid/view/animation/interpolator/BackEaseOut;->out(FF)F

    move-result v0

    return v0
.end method

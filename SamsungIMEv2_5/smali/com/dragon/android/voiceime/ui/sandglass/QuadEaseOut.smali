.class public Lcom/dragon/android/voiceime/ui/sandglass/QuadEaseOut;
.super Ljava/lang/Object;
.source "QuadEaseOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public s:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/QuadEaseOut;->s:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/QuadEaseOut;->s:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    return v0
.end method

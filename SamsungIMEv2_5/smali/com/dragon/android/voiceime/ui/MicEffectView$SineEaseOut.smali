.class public Lcom/dragon/android/voiceime/ui/MicEffectView$SineEaseOut;
.super Ljava/lang/Object;
.source "MicEffectView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dragon/android/voiceime/ui/MicEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SineEaseOut"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FloatMath"
        }
    .end annotation

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, p1, v2

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    mul-float/2addr v0, v2

    const/4 v1, 0x0

    add-float/2addr v0, v1

    return v0
.end method

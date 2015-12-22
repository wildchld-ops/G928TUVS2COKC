.class public Lcom/android/keyguard/DisappearAnimationUtils;
.super Lcom/android/keyguard/AppearAnimationUtils;
.source "DisappearAnimationUtils.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v2, 0xdc

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/DisappearAnimationUtils;->mScaleTranslationWithRow:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/DisappearAnimationUtils;->mAppearing:Z

    return-void
.end method


# virtual methods
.method protected calculateDelay(II)J
    .locals 8

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-int/lit8 v0, p1, 0x3c

    int-to-double v0, v0

    int-to-double v2, p2

    int-to-double v4, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/keyguard/DisappearAnimationUtils;->mDelayScale:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.class public Lcom/android/systemui/ViewInvertHelper;
.super Ljava/lang/Object;
.source "ViewInvertHelper.java"


# instance fields
.field private final mDarkPaint:Landroid/graphics/Paint;

.field private final mFadeDuration:J

.field private final mGrayscaleMatrix:Landroid/graphics/ColorMatrix;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mMatrix:Landroid/graphics/ColorMatrix;

.field private final mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mDarkPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mMatrix:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mGrayscaleMatrix:Landroid/graphics/ColorMatrix;

    iput-object p1, p0, Lcom/android/systemui/ViewInvertHelper;->mTarget:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-wide p2, p0, Lcom/android/systemui/ViewInvertHelper;->mFadeDuration:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ViewInvertHelper;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ViewInvertHelper;->updateInvertPaint(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/ViewInvertHelper;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mDarkPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/ViewInvertHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method private updateInvertPaint(F)V
    .locals 7

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p1

    sub-float v0, v5, v2

    const/16 v2, 0x14

    new-array v1, v2, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/4 v2, 0x4

    mul-float v3, v6, p1

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    aput v0, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    const/16 v2, 0x8

    aput v4, v1, v2

    const/16 v2, 0x9

    mul-float v3, v6, p1

    aput v3, v1, v2

    const/16 v2, 0xa

    aput v4, v1, v2

    const/16 v2, 0xb

    aput v4, v1, v2

    const/16 v2, 0xc

    aput v0, v1, v2

    const/16 v2, 0xd

    aput v4, v1, v2

    const/16 v2, 0xe

    mul-float v3, v6, p1

    aput v3, v1, v2

    const/16 v2, 0xf

    aput v4, v1, v2

    const/16 v2, 0x10

    aput v4, v1, v2

    const/16 v2, 0x11

    aput v4, v1, v2

    const/16 v2, 0x12

    aput v5, v1, v2

    const/16 v2, 0x13

    aput v4, v1, v2

    iget-object v2, p0, Lcom/android/systemui/ViewInvertHelper;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object v2, p0, Lcom/android/systemui/ViewInvertHelper;->mGrayscaleMatrix:Landroid/graphics/ColorMatrix;

    sub-float v3, v5, p1

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v2, p0, Lcom/android/systemui/ViewInvertHelper;->mMatrix:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Lcom/android/systemui/ViewInvertHelper;->mGrayscaleMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    iget-object v2, p0, Lcom/android/systemui/ViewInvertHelper;->mDarkPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v4, p0, Lcom/android/systemui/ViewInvertHelper;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public fade(ZJ)V
    .locals 6

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/ViewInvertHelper$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/ViewInvertHelper$1;-><init>(Lcom/android/systemui/ViewInvertHelper;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/android/systemui/ViewInvertHelper$2;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/ViewInvertHelper$2;-><init>(Lcom/android/systemui/ViewInvertHelper;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v4, p0, Lcom/android/systemui/ViewInvertHelper;->mFadeDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/ViewInvertHelper;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method public update(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/ViewInvertHelper;->updateInvertPaint(F)V

    iget-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mTarget:Landroid/view/View;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/ViewInvertHelper;->mDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mTarget:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

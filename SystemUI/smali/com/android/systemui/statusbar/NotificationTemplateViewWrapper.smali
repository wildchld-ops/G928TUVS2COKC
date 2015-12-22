.class public Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/NotificationViewWrapper;
.source "NotificationTemplateViewWrapper.java"


# instance fields
.field private final mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconBackgroundColor:I

.field private final mIconBackgroundDarkColor:I

.field private final mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mIconDarkAlpha:I

.field private mIconForceGraysaleWhenDark:Z

.field private mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field protected mPicture:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/NotificationViewWrapper;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconDarkAlpha:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconBackgroundDarkColor:I

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->resolveViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;Landroid/widget/ImageView;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateIconColorFilter(Landroid/widget/ImageView;F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconDarkAlpha:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateGrayscaleMatrix(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;)Landroid/graphics/ColorMatrix;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    return-object v0
.end method

.method private fadeIconAlpha(Landroid/widget/ImageView;ZJ)V
    .locals 7

    new-instance v2, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;Landroid/widget/ImageView;)V

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private fadeIconColorFilter(Landroid/widget/ImageView;ZJ)V
    .locals 7

    new-instance v2, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;Landroid/widget/ImageView;)V

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private static interpolateColor(IIF)I
    .locals 13

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v8, v0

    sub-float v9, v12, p2

    mul-float/2addr v8, v9

    int-to-float v9, v1

    mul-float/2addr v9, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v9, v6

    sub-float v10, v12, p2

    mul-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v10, v4

    sub-float v11, v12, p2

    mul-float/2addr v10, v11

    int-to-float v11, v5

    mul-float/2addr v11, p2

    add-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v11, v2

    sub-float/2addr v12, p2

    mul-float/2addr v11, v12

    int-to-float v12, v3

    mul-float/2addr v12, p2

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method private resolveBackgroundColor(Landroid/widget/ImageView;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resolveIcon(Landroid/widget/ImageView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private resolvePicture(Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private resolveViews()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v4, 0x1020034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->resolveIcon(Landroid/widget/ImageView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->resolvePicture(Landroid/widget/ImageView;)Landroid/widget/ImageView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->resolveBackgroundColor(Landroid/widget/ImageView;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconBackgroundColor:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconForceGraysaleWhenDark:Z

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 7

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    move v2, v3

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method private updateGrayscaleMatrix(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    return-void
.end method

.method private updateIconAlpha(Landroid/widget/ImageView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconDarkAlpha:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void

    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private updateIconColorFilter(Landroid/widget/ImageView;F)V
    .locals 4

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconBackgroundColor:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconBackgroundDarkColor:I

    invoke-static {v2, v3, p2}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->interpolateColor(IIF)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v1}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private updateIconColorFilter(Landroid/widget/ImageView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateIconColorFilter(Landroid/widget/ImageView;F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected fadeGrayscale(Landroid/widget/ImageView;ZJ)V
    .locals 7

    new-instance v2, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$3;-><init>(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;Landroid/widget/ImageView;)V

    new-instance v6, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$4;

    invoke-direct {v6, p0, p2, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$4;-><init>(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;ZLandroid/widget/ImageView;)V

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public notifyContentUpdated()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->notifyContentUpdated()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->resolveViews()V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->fadeIconColorFilter(Landroid/widget/ImageView;ZJ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->fadeIconAlpha(Landroid/widget/ImageView;ZJ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconForceGraysaleWhenDark:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->setPictureGrayscale(ZZJ)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateIconColorFilter(Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateIconAlpha(Landroid/widget/ImageView;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconForceGraysaleWhenDark:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateGrayscale(Landroid/widget/ImageView;Z)V

    goto :goto_1
.end method

.method protected setPictureGrayscale(ZZJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateGrayscale(Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method protected updateGrayscale(Landroid/widget/ImageView;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateGrayscaleMatrix(F)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.class public Lcom/android/systemui/statusbar/ToggleSliderView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "ToggleSliderView.java"


# instance fields
.field private mAnimating:Z

.field private final mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mContent:Landroid/view/View;

.field private final mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mHeight:I

.field private mIsVisible:Z

.field private mWillBeGone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ToggleSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c041b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mHeight:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->setNotification(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->setDescendantFocusability(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/ToggleSliderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mAnimating:Z

    return p1
.end method

.method private animateText(ZLjava/lang/Runnable;)V
    .locals 6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mIsVisible:Z

    if-eq p1, v2, :cond_3

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mAnimating:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x104

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/ToggleSliderView$1;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/statusbar/ToggleSliderView$1;-><init>(Lcom/android/systemui/statusbar/ToggleSliderView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mIsVisible:Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method protected getInitialHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mHeight:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mHeight:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mIsVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    const v0, 0x7f0e025b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ToggleSliderView;->setInvisible()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableView;->onLayout(ZIIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ToggleSliderView;->measureChildren(II)V

    iget v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mHeight:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ToggleSliderView;->setActualHeight(I)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public performAddAnimation(JJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->performVisibilityAnimation(Z)V

    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->performVisibilityAnimation(Z)V

    return-void
.end method

.method public performVisibilityAnimation(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->animateText(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public performVisibilityAnimation(ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ToggleSliderView;->animateText(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public setInvisible()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mIsVisible:Z

    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setWillBeGone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mWillBeGone:Z

    return-void
.end method

.method public willBeGone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView;->mWillBeGone:Z

    return v0
.end method

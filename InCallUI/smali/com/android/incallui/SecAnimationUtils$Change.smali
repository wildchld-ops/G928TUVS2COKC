.class public Lcom/android/incallui/SecAnimationUtils$Change;
.super Ljava/lang/Object;
.source "SecAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Change"
.end annotation


# direct methods
.method public static changeHeight(Landroid/view/View;IZ)V
    .locals 8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    move v2, v5

    :goto_1
    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v1, p1, v3

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/SecAnimationUtils$Change$2;

    invoke-direct {v6, p0, v1, v3}, Lcom/android/incallui/SecAnimationUtils$Change$2;-><init>(Landroid/view/View;II)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/SecAnimationUtils$Change$1;

    invoke-direct {v6, p0, p1}, Lcom/android/incallui/SecAnimationUtils$Change$1;-><init>(Landroid/view/View;I)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method public static changeToHide(Landroid/view/View;)V
    .locals 10

    const/4 v7, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v7, v7}, Landroid/view/View;->measure(II)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    rsub-int/lit8 v1, v4, 0x0

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/incallui/SecAnimationUtils$Change$6;

    invoke-direct {v7, p0, v1, v4}, Lcom/android/incallui/SecAnimationUtils$Change$6;-><init>(Landroid/view/View;II)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/incallui/SecAnimationUtils$Change$5;

    invoke-direct {v7, p0, v4}, Lcom/android/incallui/SecAnimationUtils$Change$5;-><init>(Landroid/view/View;I)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public static changeToShow(Landroid/view/View;)V
    .locals 10

    const/4 v7, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v7, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    add-int/lit8 v1, v3, 0x0

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/incallui/SecAnimationUtils$Change$4;

    invoke-direct {v7, p0, v1}, Lcom/android/incallui/SecAnimationUtils$Change$4;-><init>(Landroid/view/View;I)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/incallui/SecAnimationUtils$Change$3;

    invoke-direct {v7, p0, v3}, Lcom/android/incallui/SecAnimationUtils$Change$3;-><init>(Landroid/view/View;I)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public static changeTopMargin(Landroid/view/View;I)V
    .locals 8

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v1, p1, v2

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/SecAnimationUtils$Change$8;

    invoke-direct {v5, v3, v1, v2, p0}, Lcom/android/incallui/SecAnimationUtils$Change$8;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/SecAnimationUtils$Change$7;

    invoke-direct {v5, v3, p1, p0}, Lcom/android/incallui/SecAnimationUtils$Change$7;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;ILandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

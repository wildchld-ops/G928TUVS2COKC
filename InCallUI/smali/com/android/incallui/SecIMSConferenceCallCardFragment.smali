.class public Lcom/android/incallui/SecIMSConferenceCallCardFragment;
.super Lcom/android/incallui/SecCallCardFragment;
.source "SecIMSConferenceCallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/SecCallCardUi;


# instance fields
.field private mManageButton:Landroid/widget/Button;

.field private mMergeButton:Landroid/widget/Button;

.field private mPrimaryCallInfoContainer:Landroid/view/View;

.field private mPrimaryPhotoText:Landroid/widget/TextView;

.field private mSecondaryCallInfoContainer:Landroid/view/View;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryPanel:Landroid/view/View;

.field private mSecondaryPhoto:Landroid/widget/ImageView;

.field private mSecondaryPhotoContainer:Landroid/view/View;

.field private mSecondaryPhotoText:Landroid/widget/TextView;

.field private mSwapButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;-><init>()V

    return-void
.end method

.method private animateForMerge()V
    .locals 15

    const-string v10, "animateForMerge..."

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0013

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v10, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v10, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v10, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0149

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v10, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    neg-float v14, v1

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v10, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int v6, v8, v10

    iget-object v10, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const-string v11, "top"

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v8, v12, v13

    const/4 v13, 0x1

    aput v6, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v10, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v10, v2

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v10

    new-instance v11, Lcom/android/incallui/SecIMSConferenceCallCardFragment$2;

    invoke-direct {v11, p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment$2;-><init>(Lcom/android/incallui/SecIMSConferenceCallCardFragment;)V

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private animateForSwap()V
    .locals 15

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v7, "animateForSwap..."

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0149

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v7, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v12, [F

    aput v1, v9, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v7, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v12, [F

    neg-float v10, v1

    aput v10, v9, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v7, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v7, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v7, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    neg-float v8, v1

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    iget-object v7, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v12, [F

    aput v14, v9, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v12, [F

    aput v14, v9, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v7, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v8, v2

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v7

    new-instance v8, Lcom/android/incallui/SecIMSConferenceCallCardFragment$1;

    invoke-direct {v8, p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment$1;-><init>(Lcom/android/incallui/SecIMSConferenceCallCardFragment;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPrimaryCallMoreMenu()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->needToShowMenu()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecInCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    :cond_0
    return-void
.end method

.method private showConferenceCallManager(Z)V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    const-string v1, "showConferenceCallManager...1"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->showConferenceCallManager()V

    const-string v1, "showConferenceCallManager...2"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->showManageConferenceCallButton(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateBgColorForCallState(I)V
    .locals 3

    const v2, 0x7f09007a

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateDisplayChildCallChanged(Lcom/android/incallui/Call;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayChildCallChanged childCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%d"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayChildCallChanged callState :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMultipartyCallButtons()V
    .locals 9

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v5, v8, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    const/16 v5, 0x80

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v5, :cond_1

    iget-object v8, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCallCount(Lcom/android/incallui/Call;)I

    move-result v5

    if-le v5, v4, :cond_5

    :goto_2
    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v4, :cond_6

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v5, v7

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_2

    :cond_6
    move v6, v7

    goto :goto_3
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    const v0, 0x7f120001

    return v0
.end method

.method protected inflateRecordInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    const-string v1, "onClick: call super onClick"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->animateForMerge()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->animateForSwap()V

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->showConferenceCallManager(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100031 -> :sswitch_1
        0x7f100035 -> :sswitch_0
        0x7f10022e -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f0400b7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->resetSwapAnimation()V

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->resetMergeAnimation()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPulseAnimation:Landroid/view/animation/Animation;

    const v0, 0x7f10017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v0, 0x7f100233

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const v0, 0x7f1000d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f1000d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f10008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const v0, 0x7f100137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v0, 0x7f10003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const v0, 0x7f1000d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v0, 0x7f1000d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f100038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v0, 0x7f1000cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v0, 0x7f100139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    const v0, 0x7f100234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    const v0, 0x7f100236

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const v0, 0x7f100230

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    const v0, 0x7f100231

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100232

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const v0, 0x7f10022f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const v0, 0x7f100035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mMergeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSwapButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mManageButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    return-void
.end method

.method protected resetMergeAnimation()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    return-void
.end method

.method protected resetSwapAnimation()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->updateMultipartyCallButtons()V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->updateBgColorForCallState(I)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v0

    iget-object v4, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 9

    const/4 v8, 0x0

    const-string v6, "Setting primary call"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p6, :cond_0

    iget-object v4, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v5, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    iget-boolean v2, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d01c0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p1, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getCallerSize(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d01c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%d"

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v2}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->setPrimaryCallMoreMenu()V

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->resetSwapAnimation()V

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->resetMergeAnimation()V

    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/SecInCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 10

    const v9, 0x7f0a013c

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-static {v5, v8, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "setPrimaryImage"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getCallerSize(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-static {p1, v2}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, p1}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_4

    iget-boolean v5, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-static {p1, v2}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, p1}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 6

    const-string v4, "Setting secondary call"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    iget-object v1, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v3, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    :cond_0
    const/4 v2, 0x0

    if-eqz p3, :cond_1

    const/4 v2, 0x3

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 10

    const v9, 0x7f0a013c

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/incallui/InCallUtils;->getBgCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCallCount(Lcom/android/incallui/Call;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-static {p1, v2}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, p1}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_4

    iget-boolean v5, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-static {p1, v2}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, p1}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDisplayChildCallChanged()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->updateDisplayChildCallChanged(Lcom/android/incallui/Call;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/incallui/InCallUtils;->getBgCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->updateDisplayChildCallChanged(Lcom/android/incallui/Call;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

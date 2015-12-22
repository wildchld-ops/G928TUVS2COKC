.class public Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;
.super Lcom/android/incallui/SecEasyVoiceCallButtonFragment;
.source "SecEasyOnehandVoiceCallButtonFragment.java"


# instance fields
.field private mEasyOnehandClickListener:Landroid/view/View$OnClickListener;

.field private mLeftArrowButton:Landroid/view/View;

.field private mRightArrowButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;-><init>()V

    new-instance v0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment$1;-><init>(Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mEasyOnehandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public animateForMoveDialpad(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0464

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0465

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v6, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v10, [F

    if-eqz p1, :cond_3

    :goto_1
    aput v2, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v10, [F

    if-eqz p1, :cond_4

    :goto_2
    aput v1, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v6}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_2
.end method

.method public changeArrow(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecInCallActivity;->changeSideDialPad(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->updateOnehandLayout(I)V

    return-void

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0400c6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->initView(Landroid/view/View;)V

    const v1, 0x7f100243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mEasyOnehandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f100244

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mEasyOnehandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->updateOneHandMode()V

    return-object v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->updateOneHandMode()V

    return-void
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0464

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0465

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public updateOneHandMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getCurrentArrowSide()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->changeArrow(I)V

    return-void
.end method

.method public updateOnehandLayout(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mCallButtonContainer:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0434

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->mCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0435

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_1
.end method

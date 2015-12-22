.class public Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;
.super Lcom/android/incallui/SecVoiceCallButtonFragment;
.source "SecOnehandVoiceCallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecOnehandVoiceCallButtonFragment$OnehandInCallPagerAdapter;
    }
.end annotation


# instance fields
.field private mLeftArrowButton:Landroid/view/View;

.field private mOnehandClickListener:Landroid/view/View$OnClickListener;

.field private mPagerAdapter:Lcom/android/incallui/SecOnehandVoiceCallButtonFragment$OnehandInCallPagerAdapter;

.field private mRightArrowButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;-><init>()V

    new-instance v0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment$1;-><init>(Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mOnehandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public animateForManager(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v4, "support_move_button_conference_manage"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "animateForManager...isRunning"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0018

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a0445

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v6, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v10, [F

    if-eqz p1, :cond_3

    move v4, v0

    :goto_1
    aput v4, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    if-eqz p1, :cond_4

    :goto_2
    aput v0, v7, v9

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    move v0, v5

    goto :goto_2
.end method

.method public animateForMoveDialpad(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz p1, :cond_4

    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0431

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0432

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v10, [F

    if-eqz p1, :cond_5

    :goto_2
    aput v2, v9, v6

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v10, [F

    if-eqz p1, :cond_6

    :goto_3
    aput v1, v9, v6

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v6}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    :cond_5
    move v2, v7

    goto :goto_2

    :cond_6
    move v1, v7

    goto :goto_3
.end method

.method public changeArrow(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecInCallActivity;->changeSideDialPad(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->updateOnehandLayout(I)V

    return-void

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public declared-synchronized inflatePagerContainer()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "not_support_extra_view_page"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->inflatePagerContainer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100253

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->inflateInCallButtons(Landroid/view/View;)V

    const-string v1, "inflatePagerContainer: mOutgoingButtonLayout"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mLastestPagePosition:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100254

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v1, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment$OnehandInCallPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment$OnehandInCallPagerAdapter;-><init>(Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mPagerAdapter:Lcom/android/incallui/SecOnehandVoiceCallButtonFragment$OnehandInCallPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mPagerAdapter:Lcom/android/incallui/SecOnehandVoiceCallButtonFragment$OnehandInCallPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const-string v1, "inflatePagerContainer: inCallButtonsPager"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0400c7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f10024e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f10024f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/16 v1, 0x5051

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->inflatePagerContainer()V

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100250

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100251

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mOnehandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100244

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mOnehandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->updateOneHandMode()V

    iget-object v0, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->updateOneHandMode()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->onStop()V

    return-void
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz p1, :cond_4

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0431

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0432

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_3
.end method

.method public updateOneHandMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getCurrentArrowSide()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->changeArrow(I)V

    return-void
.end method

.method public updateOnehandLayout(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mCallButtonContainer:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0434

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->mCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0435

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_1
.end method

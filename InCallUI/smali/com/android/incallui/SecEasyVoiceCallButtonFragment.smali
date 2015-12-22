.class public Lcom/android/incallui/SecEasyVoiceCallButtonFragment;
.super Lcom/android/incallui/SecVoiceCallButtonFragment;
.source "SecEasyVoiceCallButtonFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public animateForMoveDialpad(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01a7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01a8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const-string v6, "support_dialpad_by_hardkey"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a037c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v10, [F

    if-eqz p1, :cond_4

    :goto_1
    aput v2, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v10, [F

    if-eqz p1, :cond_5

    :goto_2
    aput v1, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v6}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_4
    move v2, v5

    goto :goto_1

    :cond_5
    move v1, v5

    goto :goto_2
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const v0, 0x7f100247

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    const v0, 0x7f100246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mCallButtonContainer:Landroid/view/View;

    const v0, 0x7f10024a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "disable_button_sound_effects"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_0
    const v0, 0x7f10024b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "disable_button_sound_effects"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_1
    const v0, 0x7f10024d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "disable_button_sound_effects"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_2
    const v0, 0x7f10002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    const-string v0, "not_support_end_button"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f100249

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100245

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_5
    const-string v0, "suppor_mute_button_in_easy_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f100312

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMuteButtonStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMuteButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMuteButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f10002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMuteButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->returnButtonsForDialpad(Z)V

    return-void
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
    .locals 3

    const v1, 0x7f04012b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->onResume()V

    return-void
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const-string v3, "support_dialpad_by_hardkey"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a037c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public setEndCallButtonIcon(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const v0, 0x7f02033f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void

    :cond_0
    const v0, 0x7f0202c4

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;->updateMuteButton()V

    return-void
.end method

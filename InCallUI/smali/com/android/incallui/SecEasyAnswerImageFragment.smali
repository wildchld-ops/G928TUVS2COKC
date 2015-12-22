.class public Lcom/android/incallui/SecEasyAnswerImageFragment;
.super Lcom/android/incallui/SecAnswerImageFragment;
.source "SecEasyAnswerImageFragment.java"


# instance fields
.field protected mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerImageFragment;-><init>()V

    return-void
.end method

.method private checkEasyModeFirstCallEnd()Z
    .locals 13

    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v2

    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-eq v6, v12, :cond_1

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-ne v6, v11, :cond_2

    :cond_1
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFirstCallPhoneType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mWaitingCallPhoneType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", domain : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v2, v9, :cond_4

    if-ne v3, v9, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v6

    if-ne v6, v8, :cond_4

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkEasyModeFirstCallEnd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_4
    if-eq v3, v8, :cond_5

    if-eq v3, v10, :cond_5

    if-eq v3, v11, :cond_5

    if-eq v3, v12, :cond_5

    if-eq v2, v8, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v6

    if-ne v6, v9, :cond_2

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected animateForShowInCallButtons()V
    .locals 7

    const/16 v4, 0x8

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f10010c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100246

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "voice_call_recording_menu"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f10024b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100249

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    const-string v2, "suppor_mute_button_in_easy_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f10024a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100312

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mMuteButtonStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mMuteButtonStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mMuteButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mMuteButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_3
    const-string v2, "not_support_end_button"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f10024e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mEndCallButtonContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->getOneHandDirection(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecEasyAnswerImageFragment;->updateOnehandLayout(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f10010b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    goto/16 :goto_0
.end method

.method protected getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;
    .locals 7

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f040056

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->clearDrawable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/SecAnswerImageFragment;->onDestroyView()V

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f10010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    iput-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    iget-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->setOnTriggerListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    :cond_0
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDialTrigger(whichHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v5, "LEFT_HANDLE: answer!"

    invoke-static {p0, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Lcom/android/incallui/SecCallButtonUi;->setCallButtonContainerVisibility(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v3}, Lcom/android/incallui/SecCallCardUi;->stopWaveEffect(Z)V

    invoke-interface {v1, v7}, Lcom/android/incallui/SecCallCardUi;->changeCallCardForAM(I)V

    invoke-interface {v1}, Lcom/android/incallui/SecCallCardUi;->clearAMView()V

    invoke-interface {v1, v3}, Lcom/android/incallui/SecCallCardUi;->showMenu(Z)V

    invoke-interface {v1}, Lcom/android/incallui/SecCallCardUi;->showModifySwitchButtonAM()V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getWideBandAMR()I

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-interface {v1, v3}, Lcom/android/incallui/SecCallCardUi;->showHighQualitySoundText(Z)V

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/incallui/SecEasyAnswerImageFragment;->showAnswerUi(Z)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    const-string v3, "smart_auto_answering"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v4}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->checkEasyModeFirstCallEnd()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3, v4}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    goto :goto_0

    :cond_6
    const-string v3, "ui_for_chn"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "ui_for_hktw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "feature_dcm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallType()I

    move-result v2

    if-ne v2, v7, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v5, "RIGHT_HANDLE: reject!"

    invoke-static {p0, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->aMEndButtonClick()V

    :cond_a
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/SecCallCardUi;->clearAMView()V

    goto/16 :goto_0

    :cond_b
    const-string v3, "smart_auto_answering"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v4}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showAnswerUi(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/SecAnswerImageFragment;->showAnswerUi(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->reset()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->updateIncomingCallWidgetLayout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->removeArrowMsg()V

    goto :goto_0
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/SecEasyAnswerImageFragment;->mIncomingCallEasyImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v2, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

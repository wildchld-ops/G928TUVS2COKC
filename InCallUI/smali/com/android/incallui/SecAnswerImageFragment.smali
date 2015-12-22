.class public Lcom/android/incallui/SecAnswerImageFragment;
.super Lcom/android/incallui/SecAnswerFragment;
.source "SecAnswerImageFragment.java"

# interfaces
.implements Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;
.implements Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;
.implements Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# instance fields
.field protected mAddCallButton:Landroid/widget/Button;

.field private mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

.field private mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

.field protected mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mBluetoothButton:Landroid/widget/ToggleButton;

.field protected mCameraButton:Landroid/widget/Button;

.field protected mDialpadButton:Landroid/widget/Button;

.field protected mEndCallButtonContainer:Landroid/view/View;

.field protected mExtraVolumeButton:Landroid/widget/ToggleButton;

.field protected mInCallButtonForAnim:Landroid/view/View;

.field protected mInCallButtonForAnimStub:Landroid/view/ViewStub;

.field protected mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

.field private mIncomingCallImageWidgetBackground:Landroid/view/View;

.field private mIsAlreadyAnimationProcessing:Z

.field private mIsAnswerAnimationRunning:Z

.field private mMaskPanelForSlidingDrawer:Landroid/view/View;

.field protected mMuteButtonStub:Landroid/view/ViewStub;

.field protected mOneWayCameraButton:Landroid/widget/Button;

.field protected mOneWayCameraButtonStub:Landroid/view/ViewStub;

.field protected mRecordButtonStub:Landroid/view/ViewStub;

.field private mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

.field protected mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/view/View;

.field private mRejectCallWithMsgHandleText:Landroid/widget/TextView;

.field private mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecAnswerImageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/SecAnswerImageFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecAnswerImageFragment;->setDescriptionToHandle(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/SecAnswerImageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerImageFragment;->animateHideForMaskPanel()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/SecAnswerImageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerImageFragment;->animateShowForMaskPanel()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/SecAnswerImageFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/SecAnswerImageFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/incallui/SecAnswerImageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIsAnswerAnimationRunning:Z

    return p1
.end method

.method private animateHideForMaskPanel()V
    .locals 6

    const-string v1, "animateHideForMaskPanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/SecAnswerImageFragment$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecAnswerImageFragment$5;-><init>(Lcom/android/incallui/SecAnswerImageFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateShowForMaskPanel()V
    .locals 6

    const-string v1, "animateShowForMaskPanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/SecAnswerImageFragment$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecAnswerImageFragment$4;-><init>(Lcom/android/incallui/SecAnswerImageFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private setDescriptionToHandle(Landroid/view/View;Z)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0d0186

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0d0182

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0d0183

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall(I)V
    .locals 6

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIsAlreadyAnimationProcessing:Z

    if-eqz v2, :cond_1

    const-string v2, "animateForAnswerCall...already processing"

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Autoanswered so returning not showing animation..."

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "animateForAnswerCall...already running"

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    :cond_4
    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "incoming_call_widget_for_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    const-string v2, "animateForAnswerCall..."

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecAnswerImageFragment;->getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/incallui/SecAnswerImageFragment$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecAnswerImageFragment$6;-><init>(Lcom/android/incallui/SecAnswerImageFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v4, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIsAlreadyAnimationProcessing:Z

    iput-boolean v4, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIsAnswerAnimationRunning:Z

    iget-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->animateForShowInCallButtons()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/SecCallCardUi;->animateForAnswerCall()V

    goto/16 :goto_0
.end method

.method protected animateForShowInCallButtons()V
    .locals 10

    const v8, 0x7f100257

    const/16 v7, 0x8

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    if-nez v5, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100112

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    :goto_0
    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100255

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    const-string v5, "voice_call_recording"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "voice_call_recording_menu"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100249

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10024a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const-string v5, "support_swis"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {}, Lcom/android/incallui/SwisHelper;->needToShow()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100259

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10028b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secservice/SecVideoCallManager;->isLTEVideoCallMenuShow()Z

    move-result v2

    const-string v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100256

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10025b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100241

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mOneWayCameraButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mOneWayCameraButton:Landroid/widget/Button;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    const-string v5, "not_support_end_button"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10024e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mEndCallButtonContainer:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const-string v5, "support_folder_single_lcd"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10002f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_9
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->getOneHandDirection(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecAnswerImageFragment;->updateOnehandLayout(I)V

    :cond_a
    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_b
    return-void

    :cond_c
    const-string v5, "support_folder_single_lcd"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100114

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100113

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    goto/16 :goto_0

    :cond_e
    const-string v5, "not_support_easy_incoming_widget"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10010b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100111

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    goto/16 :goto_0

    :cond_10
    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/SecAnswerImageFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public closeDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->animateClose()V

    :cond_0
    return-void
.end method

.method public configureRejectMsgList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, p1}, Lcom/android/incallui/RejectMsgContent;->configureRejectMsgList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;
    .locals 7

    iget-object v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v3, "support_dialpad_by_hardkey"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getAnimatorForAnswerCallforWithHardkey()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    div-int/lit8 v4, v0, 0x2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    div-int/lit8 v3, v0, 0x2

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public isAnswerAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIsAnswerAnimationRunning:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v3, 0x7f040057

    const/4 v2, 0x0

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f040058

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/SecAnswerImageFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0

    :cond_0
    invoke-virtual {p1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    iput-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->unregisterDetector()V

    iput-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-super {p0}, Lcom/android/incallui/SecAnswerFragment;->onDestroyView()V

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f10010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    :cond_0
    const v0, 0x7f10010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x7f1000ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    iput-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->registerDetector(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/SecAnswerImageFragment;->setDescriptionToHandle(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v1, Lcom/android/incallui/SecAnswerImageFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecAnswerImageFragment$1;-><init>(Lcom/android/incallui/SecAnswerImageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v1, Lcom/android/incallui/SecAnswerImageFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecAnswerImageFragment$2;-><init>(Lcom/android/incallui/SecAnswerImageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v1, Lcom/android/incallui/SecAnswerImageFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecAnswerImageFragment$3;-><init>(Lcom/android/incallui/SecAnswerImageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerAnimateListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;)V

    const v0, 0x7f100110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setBackgroundPanel(Landroid/view/View;)V

    :cond_2
    const v0, 0x7f10001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    const v0, 0x7f1000ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/RejectMsgContent;

    iput-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, p0}, Lcom/android/incallui/RejectMsgContent;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, p0}, Lcom/android/incallui/RejectMsgContent;->setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_4
    const v0, 0x7f10001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    const v0, 0x7f100020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecAnswerImageFragment;->showAnswerUi(Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecAnswerImageFragment;->showRejectCallWithMessage(Z)V

    :cond_5
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDialTrigger(whichHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v4, "LEFT_HANDLE: answer!"

    invoke-static {p0, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/android/incallui/SecCallButtonUi;->setCallButtonContainerVisibility(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Lcom/android/incallui/SecCallCardUi;->stopWaveEffect(Z)V

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Lcom/android/incallui/SecCallCardUi;->changeCallCardForAM(I)V

    invoke-interface {v1}, Lcom/android/incallui/SecCallCardUi;->clearAMView()V

    invoke-interface {v1, v2}, Lcom/android/incallui/SecCallCardUi;->showMenu(Z)V

    invoke-interface {v1}, Lcom/android/incallui/SecCallCardUi;->showModifySwitchButtonAM()V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getWideBandAMR()I

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-interface {v1, v2}, Lcom/android/incallui/SecCallCardUi;->showHighQualitySoundText(Z)V

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/incallui/SecAnswerImageFragment;->showAnswerUi(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/SecInCallActivity;->updateKeepScreenOnFlag()V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    const-string v2, "smart_auto_answering"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v2, v3}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto/16 :goto_0

    :pswitch_1
    const-string v4, "RIGHT_HANDLE: reject!"

    invoke-static {p0, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->aMEndButtonClick()V

    :cond_6
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/SecCallCardUi;->clearAMView()V

    goto/16 :goto_0

    :cond_7
    const-string v2, "smart_auto_answering"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    return-void
.end method

.method public rejectWithAnswerMemo()V
    .locals 3

    const-string v1, "rejectWithAnswerMemo!"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->answeringMode()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_1
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "resetAnswerCallAnimator..."

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iput-boolean v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIsAlreadyAnimationProcessing:Z

    iput-boolean v3, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIsAnswerAnimationRunning:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecCallCardUi;->resetAnswerCallAnimator()V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->resetAnswerCallAnimator()V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/SecAnswerFragment;->showAnswerUi(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->reset()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->updateIncomingCallWidgetLayout()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    goto :goto_0
.end method

.method public showRejectCallWithMessage(Z)V
    .locals 2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 0

    return-void
.end method

.method protected updateOnehandLayout(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0434

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecAnswerImageFragment;->mInCallButtonForAnim:Landroid/view/View;

    invoke-virtual {v2, v1, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0435

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    goto :goto_1
.end method

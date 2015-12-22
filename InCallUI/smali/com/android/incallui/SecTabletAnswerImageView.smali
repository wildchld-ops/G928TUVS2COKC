.class public Lcom/android/incallui/SecTabletAnswerImageView;
.super Lcom/android/incallui/SecTabletAnswerView;
.source "SecTabletAnswerImageView.java"

# interfaces
.implements Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;
.implements Lcom/android/incallui/SecAnswerUi;
.implements Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# instance fields
.field protected mAddCallButton:Landroid/widget/Button;

.field private mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

.field private mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

.field protected mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAnswered:Z

.field protected mBluetoothButton:Landroid/widget/ToggleButton;

.field protected mCameraButton:Landroid/widget/Button;

.field protected mExtraVolumeButton:Landroid/widget/ToggleButton;

.field protected mInCallButtonForAnim:Landroid/view/View;

.field protected mInCallButtonForAnimStub:Landroid/view/ViewStub;

.field protected mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

.field private mIsAlreadyAnimationProcessing:Z

.field private mIsAnswerAnimationRunning:Z

.field private mMaskPanelForSlidingDrawer:Landroid/view/View;

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletAnswerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecTabletAnswerImageView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/SecTabletAnswerImageView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecTabletAnswerImageView;->setDescriptionToHandle(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/SecTabletAnswerImageView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/SecTabletAnswerImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->animateHideForMaskPanel()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/SecTabletAnswerImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->animateShowForMaskPanel()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/SecTabletAnswerImageView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/SecTabletAnswerImageView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/incallui/SecTabletAnswerImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIsAnswerAnimationRunning:Z

    return p1
.end method

.method private animateHideForMaskPanel()V
    .locals 6

    const-string v1, "animateHideForMaskPanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/SecTabletAnswerImageView$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecTabletAnswerImageView$5;-><init>(Lcom/android/incallui/SecTabletAnswerImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateShowForMaskPanel()V
    .locals 6

    const-string v1, "animateShowForMaskPanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/SecTabletAnswerImageView$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecTabletAnswerImageView$4;-><init>(Lcom/android/incallui/SecTabletAnswerImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_0
    return-object v0
.end method

.method private getAnimatorForHideRejectMsg()Landroid/animation/Animator;
    .locals 7

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandle:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method private setDescriptionToHandle(Landroid/view/View;Z)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0d0185

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

    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

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

.method private updateRejectCallWithMsgHandlerLayout()V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0201e0

    const v1, 0x7f090069

    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall(I)V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "animateforanswercall start"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIsAlreadyAnimationProcessing:Z

    if-eqz v2, :cond_1

    const-string v2, "animateorAnswerCall...already processing"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "animateForAnswerCall...already running"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    new-instance v3, Lcom/android/incallui/SecEventAnswerTriggered;

    sget-object v4, Lcom/android/incallui/SecEventAnswerTriggered$STATE;->TRIGGERED:Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    invoke-direct {v3, v4}, Lcom/android/incallui/SecEventAnswerTriggered;-><init>(Lcom/android/incallui/SecEventAnswerTriggered$STATE;)V

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecEventBusManager;->post(Ljava/lang/Object;)V

    iput-boolean v5, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIsAnswerAnimationRunning:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletAnswerImageView;->getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getAnimatorForHideRejectMsg()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Lcom/android/incallui/SecTabletAnswerImageView$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecTabletAnswerImageView$6;-><init>(Lcom/android/incallui/SecTabletAnswerImageView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v5, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIsAlreadyAnimationProcessing:Z

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->animateForShowInCallButtons()V

    goto :goto_0
.end method

.method protected animateForShowInCallButtons()V
    .locals 8

    const/16 v5, 0x8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100111

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mInCallButtonForAnimStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100255

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mInCallButtonForAnim:Landroid/view/View;

    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "voice_call_disable_record_button"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100257

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100249

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRecordButtonStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRecordButtonStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAddCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->isLTEVideoCallMenuShow()Z

    move-result v2

    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10024b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10024a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100256

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10025b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100241

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mOneWayCameraButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mInCallButtonForAnim:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mInCallButtonForAnim:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mInCallButtonForAnim:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mInCallButtonForAnim:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_6
    return-void
.end method

.method public closeDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

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

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, p1}, Lcom/android/incallui/RejectMsgContent;->configureRejectMsgList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/incallui/SecTabletAnswerView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040057

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f10010f

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletAnswerImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iput-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    :cond_0
    const v1, 0x7f1000ea

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletAnswerImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    iput-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->registerDetector(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/SecTabletAnswerImageView;->setDescriptionToHandle(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v2, Lcom/android/incallui/SecTabletAnswerImageView$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecTabletAnswerImageView$1;-><init>(Lcom/android/incallui/SecTabletAnswerImageView;)V

    invoke-virtual {v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v2, Lcom/android/incallui/SecTabletAnswerImageView$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecTabletAnswerImageView$2;-><init>(Lcom/android/incallui/SecTabletAnswerImageView;)V

    invoke-virtual {v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v2, Lcom/android/incallui/SecTabletAnswerImageView$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecTabletAnswerImageView$3;-><init>(Lcom/android/incallui/SecTabletAnswerImageView;)V

    invoke-virtual {v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerAnimateListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;)V

    const v1, 0x7f100110

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletAnswerImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setBackgroundPanel(Landroid/view/View;)V

    :cond_1
    const v1, 0x7f10001d

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletAnswerImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandle:Landroid/view/View;

    const v1, 0x7f10001e

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletAnswerImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    const v1, 0x7f1000ec

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletAnswerImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/RejectMsgContent;

    iput-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v1, p0}, Lcom/android/incallui/RejectMsgContent;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_3
    const v1, 0x7f10001f

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletAnswerImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    const v1, 0x7f100020

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletAnswerImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->updateRejectCallWithMsgHandlerLayout()V

    return-void
.end method

.method public isAnswerAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIsAnswerAnimationRunning:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    iput-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->unregisterDetector()V

    iput-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-super {p0}, Lcom/android/incallui/SecTabletAnswerView;->onDetachedFromWindow()V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger(whichHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "LEFT_HANDLE: answer!"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnswered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1, v4}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0

    :pswitch_1
    const-string v1, "RIGHT_HANDLE: reject!"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean v4, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnswered:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "resetAnswerCallAnimator..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iput-boolean v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIsAlreadyAnimationProcessing:Z

    iput-boolean v2, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIsAnswerAnimationRunning:Z

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->resetAnswerCallAnimator()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandle:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mInCallButtonForAnim:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mInCallButtonForAnim:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletAnswerView;->showAnswerUi(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->reset()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerImageView;->updateIncomingCallWidgetLayout()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    goto :goto_0
.end method

.method public showRejectCallWithMessage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 0

    return-void
.end method

.class public Lcom/android/incallui/accessory/CoverScreen;
.super Landroid/widget/RelativeLayout;
.source "CoverScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/Chronometer$OnChronometerTickListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;
.implements Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;
.implements Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;
.implements Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;
    }
.end annotation


# instance fields
.field private amCurrentStatusText:Ljava/lang/String;

.field private amStatusImage:Landroid/widget/ImageView;

.field private amStatusText:Landroid/widget/TextView;

.field private amTextTimer:Ljava/util/Timer;

.field private amTimerTask:Ljava/util/TimerTask;

.field private amViewStub:Landroid/view/ViewStub;

.field private mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

.field private mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

.field private mAnswerButtons:Landroid/view/View;

.field private mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

.field private mCallInfoContainer:Landroid/widget/RelativeLayout;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mCoverCallCardContainer:Landroid/widget/RelativeLayout;

.field private mCoverMuteButton:Landroid/widget/ToggleButton;

.field private mCoverSpeakerButton:Landroid/widget/ToggleButton;

.field private mElpasedTime:Landroid/widget/Chronometer;

.field private mEndCallButtons:Landroid/view/View;

.field private mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

.field private mGuideText:Landroid/widget/TextView;

.field protected final mHandler:Landroid/os/Handler;

.field private mInCallButtons:Landroid/view/View;

.field private mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

.field private mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mIsClearFlipCover:Z

.field private mIsWaveEffectShowing:Z

.field private mLabelAndNumber:Landroid/widget/LinearLayout;

.field private mMaskPanelForSlidingDrawer:Landroid/view/View;

.field private mModifyCallGuideView:Landroid/view/ViewGroup;

.field private mModifyCallView:Landroid/view/View;

.field private mModifyCallViewStub:Landroid/view/ViewStub;

.field private mNumberLabel:Landroid/widget/TextView;

.field private mParentWindow:Landroid/view/Window;

.field private mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPeriodMarkContainer:Landroid/view/View;

.field private mPeriodMarkList:[Landroid/widget/ImageView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoContainer:Landroid/view/View;

.field private mPrimaryCall:Lcom/android/incallui/Call;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRecordIcon:Landroid/widget/ImageView;

.field private mRecordInfoStub:Landroid/view/ViewStub;

.field private mRecordText:Landroid/widget/TextView;

.field private mRecordTime:Landroid/widget/Chronometer;

.field private mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

.field private mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

.field private mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

.field private mRejectCallWithMsgHandle:Landroid/view/View;

.field private mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

.field private mResumeButton:Landroid/widget/Button;

.field private mVideoCallGuideText:Landroid/widget/TextView;

.field private mVideoCallViews:Landroid/view/View;

.field private mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

.field private mWaveEffectContainer:Landroid/widget/FrameLayout;

.field private mWaveEffectHeight:I

.field private mWaveEffectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->amViewStub:Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->amTextTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->amTimerTask:Ljava/util/TimerTask;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amCurrentStatusText:Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/accessory/CoverScreen$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/CoverScreen$1;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-direct {v0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    return-void
.end method

.method private acceptCallClicked()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingOrActive()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->checkEasyModeFirstCallEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/AnswerPresenter;->controlWaitingCall(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->dismissPopupWindow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateForPeriodMarkContainer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/accessory/CoverScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/accessory/CoverScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/accessory/CoverScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amCurrentStatusText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hideWaveEffectContainer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/accessory/CoverScreen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->updateRejectHandleDrawer(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateHideForMaskPanel()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateShowForMaskPanel()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/accessory/CoverScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkContainer:Landroid/view/View;

    return-object v0
.end method

.method private declared-synchronized animateForPeriodMarkContainer()V
    .locals 13

    const/4 v12, 0x3

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkContainer:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v7, "animateForPeriodMarkContainer..."

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v12, :cond_2

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkList:[Landroid/widget/ImageView;

    aget-object v7, v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkContainer:Landroid/view/View;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkContainer:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v7, :cond_4

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v8, v2

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v7, 0x3

    new-array v4, v7, [Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v12, :cond_3

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkList:[Landroid/widget/ImageView;

    aget-object v7, v7, v3

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v3

    aget-object v7, v4, v3

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    mul-int v8, v5, v3

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/incallui/accessory/CoverScreen$6;

    invoke-direct {v8, p0}, Lcom/android/incallui/accessory/CoverScreen$6;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x68

    const-wide/16 v10, 0x514

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private animateHideForMaskPanel()V
    .locals 6

    const-string v1, "animateHideForMaskPanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$8;

    invoke-direct {v2, p0}, Lcom/android/incallui/accessory/CoverScreen$8;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateShowForMaskPanel()V
    .locals 6

    const-string v1, "animateShowForMaskPanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/accessory/CoverScreen$7;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private answeringMode()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "answeringMode - sView!"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->acceptCallClicked()V

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method private arrangePrimaryLayout()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0395

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mLabelAndNumber:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a039b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a039c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a039a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a039d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_1
.end method

.method private canShowRejectCallWithMessage(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private checkEasyModeFirstCallEnd()Z
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    invoke-virtual {v0, v10}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v4

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFirstCallPhoneType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mWaitingCallPhoneType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    if-ne v4, v9, :cond_4

    if-ne v5, v9, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v6

    if-ne v6, v8, :cond_4

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    const/4 v3, 0x0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkEasyModeFirstCallEnd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v6, v3

    goto :goto_0

    :cond_4
    if-eq v5, v8, :cond_5

    if-eq v5, v10, :cond_5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5

    if-eq v4, v8, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v6

    if-ne v6, v9, :cond_2

    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private clearAMView()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "answeringMode - sView! clearAMView "

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amViewStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->amViewStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amTextTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amTextTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amTextTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->amTimerTask:Ljava/util/TimerTask;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->amTextTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private dismissPopupWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGuideText()V

    return-void
.end method

.method private enableVoiceCallButtons()V
    .locals 11

    const/16 v10, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0x9

    if-eq v8, v9, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/4 v3, 0x0

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_a

    :cond_4
    move v2, v7

    :goto_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    if-ne v8, v10, :cond_b

    move v4, v7

    :goto_2
    const/16 v8, 0x40

    invoke-virtual {v0, v8}, Lcom/android/incallui/Call;->can(I)Z

    move-result v8

    if-eqz v8, :cond_c

    if-nez v2, :cond_c

    if-nez v4, :cond_c

    move v1, v7

    :goto_3
    const/16 v8, 0x10

    invoke-static {v8}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v1, 0x0

    :cond_5
    const/4 v5, 0x1

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v5, 0x0

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v5, 0x0

    :cond_7
    const-string v8, "support_nsri_secure"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v1, 0x0

    const/4 v5, 0x0

    :cond_8
    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_9

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_d

    if-eqz v5, :cond_d

    move v8, v7

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_9
    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_e

    if-eqz v1, :cond_e

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    move v2, v6

    goto :goto_1

    :cond_b
    move v4, v6

    goto :goto_2

    :cond_c
    move v1, v6

    goto :goto_3

    :cond_d
    move v8, v6

    goto :goto_4

    :cond_e
    move v7, v6

    goto :goto_5
.end method

.method private endCallClicked()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->updateNotUpdatingCalls(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method private getCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNumber()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :cond_0
    return-object v2
.end method

.method private getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 3

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/incallui/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "geo_description_disable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private hidePeriodMark()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideWaveEffectContainer()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->clearEffect()V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->removeEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    :cond_1
    iput-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isAudio(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->getAudioMode()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToRepeatPeriodMark(I)Z
    .locals 3

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToRepeatPeriodMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToShowMuteButton()Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private needToStartEffect(I)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFinishInflateForAnswer(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f10010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    :cond_0
    const v0, 0x7f1000ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    const v0, 0x7f10001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    const v0, 0x7f100020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->registerDetector(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->setDescriptionToHandle(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$2;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$3;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$4;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerAnimateListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;)V

    :cond_1
    const v0, 0x7f100110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setBackgroundPanel(Landroid/view/View;)V

    :cond_2
    const v0, 0x7f10001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    const v0, 0x7f1000ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/RejectMsgContentCover;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-virtual {v0, p0}, Lcom/android/incallui/RejectMsgContentCover;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContentCover;->showCreateRejectMsg(Ljava/lang/Boolean;)V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-virtual {v0, p0}, Lcom/android/incallui/RejectMsgContentCover;->setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private onFinishInflateForEndCall(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f100178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    :cond_0
    return-void
.end method

.method private onFinishInflateForInCall(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    const v0, 0x7f100176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    :cond_0
    const v0, 0x7f100174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const-string v0, "disable_button_sound_effects"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_1
    const v0, 0x7f100175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->needToShowMuteButton()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private onFinishInflateForModifyCall()V
    .locals 2

    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f100179

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallView:Landroid/view/View;

    const v1, 0x7f10017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallGuideView:Landroid/view/ViewGroup;

    :cond_1
    return-void
.end method

.method private onFinishInflateForVideoCall(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f100182

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    return-void
.end method

.method private rejectCallClicked()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setAMView()V
    .locals 6

    const/16 v3, 0x8

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answeringMode - sView! amViewStub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->amViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f100188

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v0, 0x7f1000fd

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amStatusImage:Landroid/widget/ImageView;

    const v0, 0x7f1000fe

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amStatusText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answeringMode - sView! amStatusImage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->amStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d039c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amCurrentStatusText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->amCurrentStatusText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amTextTimer:Ljava/util/Timer;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amTextTimer:Ljava/util/Timer;

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;-><init>(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/accessory/CoverScreen$1;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amTextTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->amTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d039b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amCurrentStatusText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->amStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setCallTime()V
    .locals 12

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v3, v9, v10}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v8, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    :cond_0
    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v6

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v0, v10, v4

    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-lez v9, :cond_3

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    invoke-virtual {v9, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    invoke-virtual {v9}, Landroid/widget/Chronometer;->start()V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Chronometer;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    invoke-virtual {v9, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-wide/16 v6, -0x1

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    invoke-virtual {v9}, Landroid/widget/Chronometer;->stop()V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_1
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

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

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

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 13

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v6, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v9, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_6

    const/4 v8, 0x1

    :goto_1
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v10

    iget-object v11, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v3

    if-eqz v8, :cond_7

    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x1

    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-eqz v9, :cond_3

    if-eqz v7, :cond_9

    if-eqz v5, :cond_9

    const/4 v9, 0x0

    :cond_3
    :goto_3
    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mResumeButton:Landroid/widget/Button;

    if-eqz v10, :cond_4

    iget-object v11, p0, Lcom/android/incallui/accessory/CoverScreen;->mResumeButton:Landroid/widget/Button;

    if-eqz v8, :cond_a

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v10, :cond_5

    iget-object v11, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v9, :cond_b

    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->arrangePrimaryLayout()V

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    :cond_7
    if-eqz v9, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0392

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    invoke-static {v6, v4}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v10, v6}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_2

    iget-object v10, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    const-string v10, "CallerImage From ContactAgent"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a030f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    iget-object v10, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v10, v4}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v10, v6}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_a
    const/16 v10, 0x8

    goto :goto_4

    :cond_b
    const/16 v10, 0x8

    goto :goto_5
.end method

.method private setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method private setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method private setupWaveEffectInternal(I)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    move v10, v12

    :goto_0
    const-string v4, "#ff4fa630"

    const-string v5, "#664fa630"

    const-string v6, "#fffafafa"

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const-string v0, "create WaveEffect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectHeight:I

    sget-object v7, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;FF)V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0, v11}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setAutoStopOnWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0, v12}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setWaveSineEffect(Z)V

    return-void

    :cond_1
    move v10, v11

    goto :goto_0
.end method

.method private showPopupWindow()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d022c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private showWaveEffectContainer()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private startContactInfoSearch(Lcom/android/incallui/Call;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$5;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/accessory/CoverScreen$5;-><init>(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    return-void
.end method

.method private startWaveEffect()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->showWaveEffectContainer()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v0, :cond_1

    const-string v0, "startWaveEffect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->startEffect()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsWaveEffectShowing:Z

    goto :goto_0
.end method

.method private tearDown()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hidePeriodMark()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    :cond_5
    return-void
.end method

.method private toggleMute(Z)V
    .locals 3

    const-string v0, "CoverScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoverScreen toggleMute() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    return-void
.end method

.method private toggleSpeaker(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    const-string v1, "CoverScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoverScreen toggleSpeaker() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    return-void

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private updateAnswerButtons()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-nez v0, :cond_0

    const-string v0, "mIncomingCallImageWidget is null -> reinflate"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->reset()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private updateAudioButtons()V
    .locals 3

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->isAudio(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSpeakerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateMuteButton()V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->enableVoiceCallButtons()V

    return-void
.end method

.method private updateBgColorForCallState(I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-eq v2, p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    iget-boolean v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mParentWindow:Landroid/view/Window;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mParentWindow:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V
    .locals 10

    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    const-string v4, "CoverScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIncomingMissed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "CoverScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateCallButtons..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v6, :cond_8

    move v1, v4

    :goto_1
    if-nez p3, :cond_9

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v6, :cond_9

    move v3, v4

    :goto_2
    move v2, p3

    invoke-static {p2}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    :cond_3
    const-string v6, "automatic_answering_machine"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "CoverScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateCallButtons :  isAutoAnswered - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x1

    const/4 v3, 0x0

    :cond_4
    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v1, :cond_a

    move v6, v5

    :goto_3
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_5

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateVideoCallAnswerButtons()V

    :cond_5
    :goto_4
    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    if-eqz v3, :cond_c

    move v6, v5

    :goto_5
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateInCallButtons()V

    :cond_6
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    if-eqz v2, :cond_d

    :goto_6
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateEndCallButtons()V

    :cond_7
    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v5, v4, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    goto/16 :goto_0

    :cond_8
    move v1, v5

    goto/16 :goto_1

    :cond_9
    move v3, v5

    goto :goto_2

    :cond_a
    move v6, v7

    goto :goto_3

    :cond_b
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateAnswerButtons()V

    goto :goto_4

    :cond_c
    move v6, v7

    goto :goto_5

    :cond_d
    move v5, v7

    goto :goto_6
.end method

.method private updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateVideoCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v4}, Landroid/widget/Chronometer;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->init(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    :cond_3
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_6

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_1
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d039c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v4}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabelforDisconnect(Lcom/android/incallui/Call;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setCallTime()V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private updateCallStateLabelforDisconnect(Lcom/android/incallui/Call;Ljava/lang/CharSequence;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    invoke-virtual {v3}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->start(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateClearCoverBgColor()V
    .locals 5

    const v3, 0x7f0900ff

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AccessoryEventHandler;->getCoverColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->setBackgroundColor(I)V

    const-string v2, "CoverScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateClearCoverBgColor, coverColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coverBgColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090102

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateEndCallButtons()V
    .locals 9

    const/16 v8, 0x8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    iget v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEmergency : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNumberExists : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_9

    if-eqz v4, :cond_9

    const/4 v1, 0x1

    :goto_2
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "updateEndCallButtons : come here"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_4
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v6}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v6, v8}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v6}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v6, v8}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_6
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v6, :cond_0

    if-eqz v1, :cond_a

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v6}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->reset()V

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v6, v5}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_9
    move v1, v5

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v5}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v5, v8}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateInCallButtons()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->reset()V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->needToShowMuteButton()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private updateMuteButton()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMuteState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updatePeriodMark(I)V
    .locals 4

    const/16 v1, 0x68

    const-string v0, "support_period_mark"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->needToRepeatPeriodMark(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hidePeriodMark()V

    goto :goto_0
.end method

.method private updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 12

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    const-string v9, "CoverScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updatePrimaryDisplayInfo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    if-eqz v3, :cond_7

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d01c0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v9, "tmo_volte_ui"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    :goto_1
    if-eqz v4, :cond_8

    iget-object v9, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    :goto_2
    invoke-direct {p0, v4, v5}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-direct {p0, v6}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    if-eqz v3, :cond_9

    move-object v7, v8

    :goto_3
    invoke-direct {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d01c1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%d"

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_7
    invoke-static {p2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-static {v9, v8, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v9, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v4, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_8
    move v5, v7

    goto :goto_2

    :cond_9
    iget-object v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    goto :goto_3
.end method

.method private updateRecordTime(Lcom/android/incallui/Call;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "voice_call_recording"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v7, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v8, :cond_4

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v7, :cond_5

    :cond_1
    move v2, v4

    :goto_1
    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v8, :cond_6

    :goto_2
    or-int/2addr v2, v4

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/accessory/CoverScreen;->manageRecordInfo(ZZ)V

    :cond_3
    return-void

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2
.end method

.method private updateRejectHandleDrawer(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    const v1, 0x7f0202a5

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_6

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v3, v1}, Lcom/android/incallui/accessory/CoverScreen;->setDescriptionToHandle(Landroid/view/View;Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    const/16 v1, 0x11

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a03b4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_4
    return-void

    :cond_5
    const v1, 0x7f0202a7

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    const/16 v1, 0x31

    goto :goto_2
.end method

.method private updateRejectMsgContent(Lcom/android/incallui/Call;)V
    .locals 5

    const/16 v2, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-virtual {v3, v1}, Lcom/android/incallui/RejectMsgContentCover;->configureRejectMsgList(Ljava/util/List;)V

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->canShowRejectCallWithMessage(Lcom/android/incallui/Call;)Z

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {v3, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_6
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v3, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateVideoCallAnswerButtons()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->reset()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateVideoCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v4}, Landroid/widget/Chronometer;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->init(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    :cond_2
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_5

    :cond_3
    const-string v1, "change_call_state_label"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_8

    const-string v1, "change_call_state_label"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0218

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0219

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabelforDisconnect(Lcom/android/incallui/Call;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setCallTime()V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateVideoCallViews(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    const v1, 0x7f0d022a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    const v1, 0x7f0d0228

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateWaveEffectForCallState(I)V
    .locals 5

    const-string v3, "support_wave_effect"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->needToStartEffect(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->setupWaveEffectInternal(I)V

    :cond_2
    const v3, 0x7f10018a

    invoke-virtual {p0, v3}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->startWaveEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWaveEffectForCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v3, 0x9

    if-eq p1, v3, :cond_5

    const/16 v3, 0xa

    if-eq p1, v3, :cond_5

    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    :cond_5
    const/4 v1, 0x1

    :goto_1
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->stopWaveEffect(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWaveEffectForCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private voiceCallClicked()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isFlightMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "isFlightMode = true"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0229

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public attemptFinish(Z)V
    .locals 3

    const-string v0, "CoverScreen"

    const-string v1, "tearDown"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->removeListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->tearDown()V

    :cond_3
    return-void
.end method

.method protected inflateRecordInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f100141

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100183

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    const v0, 0x7f100184

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    const v0, 0x7f100185

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    :cond_0
    return-void
.end method

.method public manageAMRecordInfo(ZZ)V
    .locals 7

    const/4 v2, 0x0

    const v6, 0x7f090092

    const v5, 0x7f090078

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manageRecordInfo(showRecordInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isPaused="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->inflateRecordInfo()V

    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateAMRecordTime(Z)V

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    iget-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setAMView()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    move-object v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020330

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0201df

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto :goto_3
.end method

.method public manageRecordInfo(ZZ)V
    .locals 7

    const/4 v2, 0x0

    const v6, 0x7f090092

    const v5, 0x7f090078

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manageRecordInfo(showRecordInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isPaused="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->inflateRecordInfo()V

    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordTime(Z)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    move-object v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020330

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0201df

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto :goto_3
.end method

.method public onAudioMode(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateAudioButtons()V

    return-void
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "CoverScreen"

    const-string v1, "call is null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    goto :goto_0
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    sparse-switch v1, :sswitch_data_0

    const-string v2, "onClick: call super onClick"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->showPopupWindow()V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->pokeUserActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :sswitch_2
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->showPopupWindow()V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->pokeUserActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x7f100174 -> :sswitch_1
        0x7f100175 -> :sswitch_2
        0x7f10017d -> :sswitch_0
    .end sparse-switch
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailsChanged... call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v0, p1, v1, p0}, Lcom/android/incallui/secutils/SecCallerInfoUtils;->refreshContactInfoCache(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->enableVoiceCallButtons()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const-string v2, "CoverScreen"

    const-string v3, "CoverScreen onFinishInflate()"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AccessoryEventHandler;->getCoverType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iput-boolean v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateClearCoverBgColor()V

    :cond_0
    const v2, 0x7f10017a

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f10017b

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mIndicatorArea:Landroid/view/ViewGroup;

    const v2, 0x7f1000d3

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    const v2, 0x7f1000d7

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Chronometer;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mElpasedTime:Landroid/widget/Chronometer;

    const v2, 0x7f10017c

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallInfoContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f100137

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    const v2, 0x7f10003b

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f10017d

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mResumeButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mResumeButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f1000d4

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const v2, 0x7f1000d5

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mLabelAndNumber:Landroid/widget/LinearLayout;

    const v2, 0x7f10008e

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    const v2, 0x7f1000d6

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectHeight:I

    iget-boolean v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v2, :cond_1

    const v2, 0x7f10013c

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkContainer:Landroid/view/View;

    new-array v2, v4, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkList:[Landroid/widget/ImageView;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkList:[Landroid/widget/ImageView;

    aget v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x7f100172

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForAnswer(Landroid/view/View;)V

    const v2, 0x7f100173

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForInCall(Landroid/view/View;)V

    const v2, 0x7f100177

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForEndCall(Landroid/view/View;)V

    const v2, 0x7f100181

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForVideoCall(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForModifyCall()V

    return-void

    :array_0
    .array-data 4
        0x7f10013d
        0x7f10013e
        0x7f10013f
    .end array-data
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->pokeUserActivity(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/accessory/CoverScreen;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->toggleSpeaker(Z)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->pokeUserActivity(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->toggleMute(Z)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->pokeUserActivity(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100174
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMute(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateMuteButton()V

    return-void
.end method

.method public onNumberChanged(Lcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNumberChanged... call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "CoverScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStateChange: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    invoke-static {p3, v5, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "CoverScreen"

    const-string v5, "call is null"

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    move v1, v3

    :goto_1
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v5, :cond_5

    if-eqz v1, :cond_5

    move v2, v3

    :goto_2
    if-nez v1, :cond_2

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_6

    move v5, v3

    :goto_3
    invoke-static {v6, v0, v5}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    :cond_2
    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0, v5}, Lcom/android/incallui/accessory/CoverScreen;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/incallui/accessory/CoverScreen;->updatePeriodMark(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/incallui/accessory/CoverScreen;->updateBgColorForCallState(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateVideoCallViews(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateAudioButtons()V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGuideText()V

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordTime(Lcom/android/incallui/Call;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/incallui/accessory/CoverScreen;->updateWaveEffectForCallState(I)V

    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "CoverScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStateChange :  isAutoAnswered - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/accessory/CoverScreen;->manageAMRecordInfo(ZZ)V

    iget-boolean v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setAMView()V

    :cond_3
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->clearAMView()V

    goto/16 :goto_0

    :cond_4
    move v1, v4

    goto/16 :goto_1

    :cond_5
    move v2, v4

    goto/16 :goto_2

    :cond_6
    move v5, v4

    goto/16 :goto_3
.end method

.method public onSupportedAudioMode(I)V
    .locals 0

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "LEFT_HANDLE"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->clearAMView()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->acceptCallClicked()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->voiceCallClicked()V

    goto :goto_0

    :pswitch_1
    const-string v0, "RIGHT_HANDLE"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->clearAMView()V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->endCallClicked()V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->rejectCallClicked()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->endCallClicked()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdateCoreAppsContact()V
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "CoverScreen"

    const-string v5, "call is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v5, :cond_3

    if-nez v2, :cond_3

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryName(Ljava/lang/String;Z)V

    :cond_2
    iget-object v4, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public rejectWithAnswerMemo()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "rejectWithAnswerMemo!"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->answeringMode()V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    :cond_2
    return-void
.end method

.method public setParentWindow(Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen;->mParentWindow:Landroid/view/Window;

    return-void
.end method

.method public setUp()V
    .locals 3

    const-string v0, "CoverScreen"

    const-string v1, "setUp"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->addListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    return-void
.end method

.method public stopWaveEffect(Z)V
    .locals 5

    const/16 v4, 0x65

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopWaveEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->stopEffect()V

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "hide wave effect container"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hideWaveEffectContainer()V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsWaveEffectShowing:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsWaveEffectShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "fire EVENT_HIDE_WAVE_EFFECT"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateAMRecordTime(Z)V
    .locals 8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAMRecordTime isPaused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v2

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v2

    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    const-string v5, "start record time"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Lcom/android/incallui/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

.method public updateGuideText()V
    .locals 11

    const/4 v8, 0x2

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-nez v7, :cond_2

    const v7, 0x7f100180

    invoke-virtual {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    :cond_2
    const-string v0, "%s"

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/SecModifyCallProcessor;->isShowingModifyCallDialog()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->updateModifyCallGuide(Z)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0230

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v7

    if-ne v7, v8, :cond_4

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v7

    if-eq v7, v8, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d022e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d022f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d022d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const-string v7, "support_swis"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getSwisState()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSwisState() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getSwisState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0235

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateModifyCallGuide(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecModifyCallProcessor;->dismissModifyCallDialog()V

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d022b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateRecordTime(Z)V
    .locals 8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRecordTime isPaused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/incallui/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v2

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v2

    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    const-string v5, "start record time"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Lcom/android/incallui/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

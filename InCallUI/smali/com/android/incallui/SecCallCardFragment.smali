.class public Lcom/android/incallui/SecCallCardFragment;
.super Lcom/android/incallui/BaseFragment;
.source "SecCallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/InCallPresenter$EmergencyModeListener;
.implements Lcom/android/incallui/SecCallCardUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallCardPresenter;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/incallui/InCallPresenter$EmergencyModeListener;",
        "Lcom/android/incallui/SecCallCardUi;"
    }
.end annotation


# static fields
.field protected static sIsWindowRevealed:Z


# instance fields
.field protected mCallBannerContainer:Landroid/view/View;

.field protected mCallInfoContainer:Landroid/view/View;

.field protected mCallNumberAndLabel:Landroid/view/View;

.field protected mCallStateContainer:Landroid/view/View;

.field protected mCallStateIcon:Landroid/widget/ImageView;

.field protected mCallStateLabel:Landroid/widget/TextView;

.field protected mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mElapsedTime:Landroid/widget/TextView;

.field private mEndCallRepeatCount:I

.field protected mHandler:Landroid/os/Handler;

.field protected mInCallMenu:Lcom/android/incallui/InCallMenu;

.field protected mIncomingPhoto:Landroid/widget/ImageView;

.field protected mIndicatorArea:Landroid/view/ViewGroup;

.field private mIsActivityCreated:Z

.field protected mIsDialpadShowing:Z

.field protected mIsOutgoingAnimationRunning:Z

.field private mIsWaveEffectShowing:Z

.field protected mLastestCallStateLabel:Ljava/lang/CharSequence;

.field protected mLastestCallTime:Ljava/lang/String;

.field protected mMoreButtonContainer:Landroid/view/View;

.field protected mMultiTouchDummyStub:Landroid/view/ViewStub;

.field private mMultiTouchDummyView:Landroid/view/View;

.field protected mNameContainer:Landroid/view/View;

.field protected mNumberLabel:Landroid/widget/TextView;

.field protected mOldCallState:I

.field protected mOnScreenMenuBtn:Landroid/widget/Button;

.field protected mOnScreenMenuBtnView:Landroid/view/View;

.field protected mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mPeriodMarkContainer:Landroid/view/View;

.field protected mPeriodMarkList:[Landroid/widget/ImageView;

.field protected mPhoneNumber:Landroid/widget/TextView;

.field protected mPhoneNumberForTalkBack:Landroid/widget/TextView;

.field protected mPhoto:Landroid/widget/ImageView;

.field protected mPhotoContainer:Landroid/view/View;

.field protected mPrimaryCallCardContainer:Landroid/view/View;

.field protected mPrimaryCallInfo:Landroid/view/ViewGroup;

.field protected mPrimaryName:Landroid/widget/TextView;

.field protected mPrimaryNameForTalkBack:Landroid/widget/TextView;

.field protected mPulseAnimation:Landroid/view/animation/Animation;

.field protected mRecordIcon:Landroid/widget/ImageView;

.field protected mRecordInfoStub:Landroid/view/ViewStub;

.field protected mRecordText:Landroid/widget/TextView;

.field protected mRecordTime:Landroid/widget/Chronometer;

.field protected mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

.field protected mWaveEffectContainer:Landroid/widget/FrameLayout;

.field protected mWaveEffectHeight:I

.field protected mWaveEffectWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecCallCardFragment;->mIsActivityCreated:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOldCallState:I

    new-instance v0, Lcom/android/incallui/SecCallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCallCardFragment$1;-><init>(Lcom/android/incallui/SecCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;->hideVideoTogglingViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/SecCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;->stopCallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/SecCallCardFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecCallCardFragment;->mEndCallRepeatCount:I

    return v0
.end method

.method static synthetic access$206(Lcom/android/incallui/SecCallCardFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecCallCardFragment;->mEndCallRepeatCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/incallui/SecCallCardFragment;->mEndCallRepeatCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/SecCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;->animateForBlinkCallTime()V

    return-void
.end method

.method private animateForBlinkCallTime()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    aput v7, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/incallui/SecCallCardFragment$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecCallCardFragment$2;-><init>(Lcom/android/incallui/SecCallCardFragment;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private getStringForElapsedTime(III)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-array v0, v10, [Ljava/lang/String;

    const-string v8, "%d"

    aput-object v8, v0, v9

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    const v8, 0x7f0d01c6

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecCallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8, v0, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v7, v10, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const v8, 0x7f0d01c7

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecCallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8, v0, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    if-lez p1, :cond_0

    new-array v5, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v9

    const v8, 0x7f0d01c5

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecCallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8, v0, v5}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private hideVideoTogglingViews()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->hideVideoTogglingViews()V

    return-void
.end method

.method private menuButtonClicked()V
    .locals 11

    const v10, 0x7f0d025a

    const v9, 0x7f0d01bc

    const v8, 0x7f0d01bb

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "menuButtonClicked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d019e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecUiAdapter;->dismissInCallMenu()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecUiAdapter;->showInCallMenu()V

    goto :goto_0

    :cond_3
    const-string v4, "activity is not SecInCallActivity"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0158

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "common_volte_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "can not hold volte call"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    goto/16 :goto_0

    :cond_5
    const-string v4, "feature_dcm"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->checkPrimaryEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "can not hold volte call"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0154

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0155

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->callTransferClicked()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0341

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->addVoiceUserClicked()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->addVoiceUserClicked()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d018f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->extraVolumeClicked()V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->recordstopClicked()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_f
    iget-object v4, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private needToRepeatPeriodMark(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->hasWindowFocus()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    :cond_1
    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "needToRepeatPeriodMark: callStateLable is not visible"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_3
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

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setupInCallPopupMenu(I)V
    .locals 2

    const-string v0, "setupInCallPopupMenu()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/SecInCallActivity;->setupInCallMenu(ILandroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecInCallActivity;->setInCallMenuInstance(Lcom/android/incallui/InCallMenu;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "activity is not SecInCallActivity"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startWaveEffect()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->showWaveEffectContainer()V

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v1, :cond_1

    const-string v1, "startWaveEffect"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1, v3}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->startEffect()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecCallCardFragment;->mIsWaveEffectShowing:Z

    goto :goto_0
.end method

.method private stopCallEndTimeBlink()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "stopCallEndTimeBlink"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->removeMessageForBlinkTime()V

    iput-object v2, p0, Lcom/android/incallui/SecCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/SecCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method private updateAnswerMemoRecordTime()V
    .locals 8

    const-string v1, "updateAnswerMemoRecordTime"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v4

    const-wide/16 v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v4

    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    const-string v1, "start record time"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {p0, v4, v5, v1}, Lcom/android/incallui/SecCallCardFragment;->setTTS(JLandroid/view/View;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-static {v6, v7}, Lcom/android/incallui/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    return-void
.end method

.method public animateForHideManager(Z)V
    .locals 0

    return-void
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0

    return-void
.end method

.method public animateForNewOutgoingCall(Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized animateForPeriodMarkContainer()V
    .locals 13

    const/4 v12, 0x3

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkContainer:Landroid/view/View;
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

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v12, :cond_2

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkList:[Landroid/widget/ImageView;

    aget-object v7, v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkContainer:Landroid/view/View;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkContainer:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v7, :cond_4

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkContainer:Landroid/view/View;

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

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v7, 0x3

    new-array v4, v7, [Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v12, :cond_3

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkList:[Landroid/widget/ImageView;

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

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/incallui/SecCallCardFragment$3;

    invoke-direct {v8, p0}, Lcom/android/incallui/SecCallCardFragment$3;-><init>(Lcom/android/incallui/SecCallCardFragment;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x6a

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

.method public changeCallCardForAM(I)V
    .locals 0

    return-void
.end method

.method public changeViewForMoveDialpad(Z)V
    .locals 0

    return-void
.end method

.method public clearAMView()V
    .locals 0

    return-void
.end method

.method createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->createPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected dismissInCallMenu()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->dismissInCallMenu()V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    const v0, 0x7f120001

    return v0
.end method

.method public getPrimaryPhotoView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method getUi()Lcom/android/incallui/SecCallCardUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    return-object v0
.end method

.method public hasAnimationMsg()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasMessageForBlinkTime()Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method protected hidePeriodMark()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected hideWaveEffectContainer()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->clearEffect()V

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->removeEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

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

.method protected inflateRecordInfo()V
    .locals 0

    return-void
.end method

.method public isAnimationRunning()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsOutgoingAnimationRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/SecCallCardFragment;->mIsOutgoingAnimationRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/SecCallCardFragment;->mIsOutgoingAnimationRunning:Z

    return v0
.end method

.method public isInExceptionArea(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimaryVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwapProcessing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public manageAnswerMemoRecord(Z)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manageAnswerMemoRecord "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnswerMemoUtils.isAutoAnswered() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recorderMgr.isRecording() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->inflateRecordInfo()V

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;->updateAnswerMemoRecordTime()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method protected manageCallEndTimeBlink(I)V
    .locals 4

    const/16 v3, 0x69

    const/16 v2, 0xa

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eq p1, v2, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/SecCallCardFragment;->setTTS(Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_2

    const-string v0, "manageCallEndTimeBlink"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCallEndTimeBlink mLastestCallTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    const-string v0, "dcm_end_call_time_blink_extension"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x834

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "dcm_end_call_time_blink_extension"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/android/incallui/SecCallCardFragment;->mEndCallRepeatCount:I

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;->animateForBlinkCallTime()V

    :cond_2
    return-void

    :cond_3
    const-wide/16 v0, 0x5dc

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public manageMultiTouchStub(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public manageRecordInfo(ZZ)V
    .locals 7

    const/4 v2, 0x0

    const v6, 0x7f090092

    const v5, 0x7f090078

    const/16 v4, 0x8

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

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fragment is detached from activity, return"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->inflateRecordInfo()V

    invoke-virtual {p0, p2}, Lcom/android/incallui/SecCallCardFragment;->updateRecordTime(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    const-string v1, "ctc_call_time_duration"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    move-object v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020330

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordText:Landroid/widget/TextView;

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0201df

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto/16 :goto_0
.end method

.method public needToShowMenu()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "needToShowMenu"

    invoke-static {p0, v6, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0x9

    if-eq v6, v7, :cond_7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_7

    move v0, v4

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    const-string v6, "true"

    const-string v7, "ril.domesticOtaStart"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallMenu;->isExistOptionsItem()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallMenu;->getUniqueMenuItem()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uniqueMenuItem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecCallCardFragment;->setMenuText(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setHoverPopupType(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a019f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-static {v4, v2, v2}, Lcom/android/incallui/InCallUtils;->setRippleSizeWithViewWidth(Landroid/view/View;II)V

    :cond_4
    const-string v4, "support_nsri_secure"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x0

    :cond_5
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToShowMenu :  isAutoAnswered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x0

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToShowMenu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_7
    move v0, v5

    goto/16 :goto_0
.end method

.method public needToShowVolumeButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected needToStartEffect(I)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->isAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->hasWindowFocus()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    :cond_2
    :goto_1
    and-int/2addr v0, v2

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToStartEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "onActivityCreated"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/incallui/SecCallCardFragment;->mIsActivityCreated:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/CallCardPresenter;->init(Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/incallui/SecInCallActivity;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->needToAnimateForNewOutgoingCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getTouchPointForNewOutgoingCall()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecCallCardFragment;->animateForNewOutgoingCall(Landroid/graphics/Point;)V

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

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    packed-switch v0, :pswitch_data_0

    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;->menuButtonClicked()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10019a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v1, "onCreateView"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroy()V

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->hidePeriodMark()V

    iput-boolean v1, p0, Lcom/android/incallui/SecCallCardFragment;->mIsOutgoingAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecCallCardFragment;->mIsActivityCreated:Z

    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    :cond_1
    return-void
.end method

.method public onDialpadVisiblityChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecCallCardFragment;->mIsDialpadShowing:Z

    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->needToShowMenu()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallCardFragment;->showMenu(Z)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "onViewCreated"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->setupWaveEffect()V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->setupInCallMenu(Landroid/view/View;)V

    return-void
.end method

.method protected removeMessageForBlinkTime()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->hasMessageForBlinkTime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecCallCardFragment;->mEndCallRepeatCount:I

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 0

    return-void
.end method

.method protected resetMergeAnimation()V
    .locals 0

    return-void
.end method

.method public resetRevealAnimator()V
    .locals 0

    return-void
.end method

.method protected resetSplitAnimation()V
    .locals 0

    return-void
.end method

.method protected resetSwapAnimation()V
    .locals 0

    return-void
.end method

.method public setAMView(Z)V
    .locals 0

    return-void
.end method

.method public setCallCharge(I)V
    .locals 3

    const/4 v2, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallCharge mOldCallState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/SecCallCardFragment;->mOldCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOldCallState:I

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOldCallState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    :cond_0
    if-ne p1, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecModifyCallProcessor;->setCallCharge(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOldCallState:I

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecModifyCallProcessor;->setCallCharge(Z)V

    goto :goto_0
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCallbackNumber(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 0

    return-void
.end method

.method public setMenuText(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMenuText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d019e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    const v1, 0x7f0d019f

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecCallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPhotoVisible(Z)V
    .locals 0

    return-void
.end method

.method public setPresenceIcon(I)V
    .locals 0

    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method public setPrimaryCallElapsedTime(ZJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/SecCallCardFragment;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    return-void
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 0

    return-void
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 0

    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setSecondaryCallElapsedTime(ZJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/SecCallCardFragment;->setSecondaryCallElapsedTime(ZLjava/lang/String;)V

    return-void
.end method

.method public setSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTTS(JLandroid/view/View;)V
    .locals 11

    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    div-long v4, p1, v8

    long-to-int v0, v4

    rem-long v4, p1, v8

    div-long/2addr v4, v6

    long-to-int v1, v4

    rem-long v4, p1, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/SecCallCardFragment;->getStringForElapsedTime(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setTTS(Ljava/lang/String;Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-lt v7, v10, :cond_0

    array-length v7, v6

    if-gt v7, v11, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v7, v6

    if-ne v7, v11, :cond_2

    aget-object v0, v6, v8

    aget-object v4, v6, v9

    aget-object v5, v6, v10

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallCardFragment;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v4}, Lcom/android/incallui/SecCallCardFragment;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v5}, Lcom/android/incallui/SecCallCardFragment;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/incallui/SecCallCardFragment;->getStringForElapsedTime(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    aget-object v4, v6, v8

    aget-object v5, v6, v9

    goto :goto_1
.end method

.method public setViewStatePostSplit()V
    .locals 4

    const/16 v1, 0x68

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "setVisible - - getView() == null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupInCallMenu(Landroid/view/View;)V
    .locals 2

    const-string v0, "setupInCallMenu()"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez p1, :cond_1

    const-string v0, "setupInCallMenu() view is null !!"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f10019a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    const v0, 0x7f10019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getMenuRes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallCardFragment;->setupInCallPopupMenu(I)V

    goto :goto_0
.end method

.method protected setupWaveEffect()V
    .locals 0

    return-void
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showCdmaMultipartyBtn()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showHighQualitySoundText(Z)V
    .locals 0

    return-void
.end method

.method public showIncomingPopupForSecondCall(III)V
    .locals 0

    return-void
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 0

    return-void
.end method

.method public showMenu(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallCardFragment;->setupInCallMenu(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    const-string v0, "china_cdma_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->showCdmaMultipartyBtn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMenu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showModifySwitchButtonAM()V
    .locals 0

    return-void
.end method

.method public showVolumeButton(Z)V
    .locals 0

    return-void
.end method

.method protected showWaveEffectContainer()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget v2, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffectHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public stopWaveEffect(Z)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x65

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopWaveEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->stopEffect()V

    :cond_3
    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-string v1, "hide wave effect container"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->hideWaveEffectContainer()V

    :cond_4
    :goto_1
    iput-boolean v5, p0, Lcom/android/incallui/SecCallCardFragment;->mIsWaveEffectShowing:Z

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/incallui/SecCallCardFragment;->mIsWaveEffectShowing:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v1, "fire EVENT_HIDE_WAVE_EFFECT"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateCallCardCleanMode(Z)V
    .locals 0

    return-void
.end method

.method public updateCallCardIndicatorArea()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->isPenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallCardFragment;->showCallCardIndicatorArea(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallCardFragment;->showCallCardIndicatorArea(Z)V

    goto :goto_0
.end method

.method public updateCallCardIndicatorAreaBg()V
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    :cond_0
    const v1, 0x7f09007e

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const v1, 0x7f09007f

    goto :goto_0

    :cond_3
    const v1, 0x7f09007d

    goto :goto_0
.end method

.method public updateDisplayChildCallChanged()V
    .locals 0

    return-void
.end method

.method public updateEri()V
    .locals 0

    return-void
.end method

.method public updateHDIconByIntent()V
    .locals 0

    return-void
.end method

.method public updateIncomingHideButton()V
    .locals 0

    return-void
.end method

.method public updatePeriodMark(I)V
    .locals 4

    const/16 v1, 0x6a

    const-string v0, "support_period_mark"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mPeriodMarkContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->needToRepeatPeriodMark(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragment;->hidePeriodMark()V

    goto :goto_0
.end method

.method public updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
    .locals 0

    return-void
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

    iget-object v5, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

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

    iget-object v5, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v5, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Lcom/android/incallui/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SecCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

.method public updateWaveEffectForCallState(I)V
    .locals 4

    const-string v2, "support_wave_effect"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWaveEffectForCallState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->needToStartEffect(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;->startWaveEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWaveEffectForCallState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x9

    if-eq p1, v2, :cond_3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_1
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecCallCardFragment;->stopWaveEffect(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

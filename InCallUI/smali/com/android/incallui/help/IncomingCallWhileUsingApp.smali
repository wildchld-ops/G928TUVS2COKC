.class public Lcom/android/incallui/help/IncomingCallWhileUsingApp;
.super Landroid/app/Activity;
.source "IncomingCallWhileUsingApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/help/IncomingCallWhileUsingApp$9;,
        Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;
    }
.end annotation


# static fields
.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private callTimerCount:I

.field private mAddButton:Landroid/widget/Button;

.field private mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

.field private mAnswerViaSpeakerBtnOsup:Landroid/widget/Button;

.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mCallCard:Landroid/widget/RelativeLayout;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCurrentState:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFullScreenBtn:Landroid/widget/ImageButton;

.field mHandler:Landroid/os/Handler;

.field private mHelpTabView:Landroid/widget/ImageView;

.field private mIncomingCallPopup:Landroid/widget/RelativeLayout;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mIsWaveEffectShowing:Z

.field private mOnScreenMenuBtn:Landroid/widget/Button;

.field private mOutgoingPager:Landroid/view/View;

.field private mPagerIndicator:Landroid/view/View;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhotoContainer:Landroid/view/View;

.field private mPopupCallStateLabel:Landroid/widget/TextView;

.field private mPopupCallerName:Landroid/widget/TextView;

.field private mPopupCallerNumberOrLocation:Landroid/widget/TextView;

.field private mPopupCallerPhoto:Landroid/widget/ImageView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallStateContainer:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRecordButton:Landroid/widget/Button;

.field private mRejectMsgBtn:Landroid/widget/Button;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTipComplete:Landroid/widget/FrameLayout;

.field private mTutorialLayout:Landroid/widget/RelativeLayout;

.field private mTutorialPopupCallAnswer:Landroid/view/View;

.field private mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

.field private mTutorialPopupCallEnd:Landroid/view/View;

.field private mTutorialPopupCallEndcall:Landroid/widget/Button;

.field private mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

.field private mTutorialPopupCallReject:Landroid/view/View;

.field private mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

.field private mTutorialPopupDuringCallButtons:Landroid/view/View;

.field private mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

.field private mTutorialPopupRingingCallButtons:Landroid/view/View;

.field private mTutorialPopupSpeakerBtn:Landroid/view/View;

.field private mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

.field private mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

.field private mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

.field private mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

.field private mWaveEffectContainer:Landroid/widget/FrameLayout;

.field private mWaveEffectHeight:I

.field private mWaveEffectWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    iput v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$8;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$008(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->dispCallDuration()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 5

    const v4, 0x7f050002

    const v0, 0x7f050010

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-void
.end method

.method private dispCallDuration()V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    div-int/lit8 v1, v1, 0x3c

    if-ge v1, v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private duringCallFullScreen()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v1, 0x7f100017

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    const v2, 0x7f1000d4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryName:Landroid/widget/TextView;

    const-string v2, "Jenette McHale"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    const v2, 0x7f1000d6

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoneNumber:Landroid/widget/TextView;

    const-string v2, "012-345-6789"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    const v2, 0x7f100137

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhotoContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    const v2, 0x7f1000d3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    :cond_3
    const v1, 0x7f10017b

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIndicatorArea:Landroid/view/ViewGroup;

    const v1, 0x7f100139

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    const v1, 0x7f1000cf

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const v1, 0x7f10019a

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    :cond_5
    const v1, 0x7f100253

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOutgoingPager:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOutgoingPager:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOutgoingPager:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const v1, 0x7f100257

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    const v1, 0x7f100245

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    const v1, 0x7f10024f

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mEndButton:Landroid/widget/ImageButton;

    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "voice_call_recording_menu"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mEndButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const v1, 0x7f100250

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPagerIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPagerIndicator:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    :cond_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhotoContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_d
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private initIncomingCallPopup()V
    .locals 28

    const v24, 0x7f10009c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    const-string v24, "mIncomingCallPopup null return"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v23

    if-eqz v23, :cond_1

    const/16 v22, 0x0

    invoke-virtual/range {v23 .. v23}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v24, 0x7f1000d4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    const v24, 0x7f1000d6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    const v24, 0x7f10003b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerPhoto:Landroid/widget/ImageView;

    const v24, 0x7f1000d3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    const v24, 0x7f100130

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRejectMsgBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const-string v25, "Jenette McHale"

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const-string v25, "012-345-6789"

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerPhoto:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f020071

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a030f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v6, v0

    invoke-static {v11, v6}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerPhoto:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerPhoto:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d0136

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f100142

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageButton;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFullScreenBtn:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFullScreenBtn:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFullScreenBtn:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFullScreenBtn:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const-string v24, "incoming_call_popup_osup"

    invoke-static/range {v24 .. v24}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f1000c7

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtnOsup:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtnOsup:Landroid/widget/Button;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtnOsup:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtnOsup:Landroid/widget/Button;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRejectMsgBtn:Landroid/widget/Button;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f100131

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    const-string v24, "popup_call_service_has_icon"

    invoke-static/range {v24 .. v24}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f100132

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewStub;

    invoke-virtual {v15}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f1000c5

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v24, "support_wave_effect"

    invoke-static/range {v24 .. v24}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0307

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f100133

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v24, "support_wave_effect"

    invoke-static/range {v24 .. v24}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0307

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_3
    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f10012d

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const-string v24, "popup_call_service_has_icon"

    invoke-static/range {v24 .. v24}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    const/16 v24, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f10012e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f1000c0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    :cond_a
    const v24, 0x7f1000c1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/view/View;

    const v24, 0x7f1000c3

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f1000c9

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEnd:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f1000c7

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupSpeakerBtn:Landroid/view/View;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v24, "support_wave_effect"

    invoke-static/range {v24 .. v24}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a030a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    move-object/from16 v0, v21

    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0309

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v18

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v18

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v24, "popup_call_service_has_icon"

    invoke-static/range {v24 .. v24}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, 0x3

    const v25, 0x7f1000c0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEnd:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setupWaveEffect()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f1000c7

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ToggleButton;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ToggleButton;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0306

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a03f4

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a03f6

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    iput v5, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0306

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_3

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0306

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    move-object/from16 v0, v21

    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_4
.end method

.method private setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V
    .locals 6

    const/16 v5, 0x64

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v0, "IncomingCallWhileUsingApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIncomingCallTutorialMode() state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    iput-object p1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCurrentState:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHelpTabView:Landroid/widget/ImageView;

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$9;->$SwitchMap$com$android$incallui$help$IncomingCallWhileUsingApp$IncomingCallTutorialStep:[I

    invoke-virtual {p1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->updateSpeakerButton()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iput v4, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTipComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTipComplete:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setupWaveEffect()V
    .locals 11

    const-string v0, "support_wave_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f100136

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0324

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectHeight:I

    const-string v4, "#ff4fa630"

    const-string v5, "#664fa630"

    const-string v10, "#fffafafa"

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const-string v0, "create WaveEffect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectHeight:I

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;FF)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setAutoStopOnWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setWaveSineEffect(Z)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private showToast()V
    .locals 3

    const v2, 0x7f0d0350

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private startWaveEffect()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "support_wave_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v0, "startWaveEffect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->startEffect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIsWaveEffectShowing:Z

    goto :goto_0
.end method

.method private stopWaveEffect()V
    .locals 3

    const-string v1, "support_wave_effect"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v1, :cond_0

    const-string v1, "stopWaveEffect"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->stopEffect()V

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->clearEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIsWaveEffectShowing:Z

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

.method private updateSpeakerButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupSpeakerBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupSpeakerBtn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupSpeakerBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c1 -> :sswitch_0
        0x7f1000c3 -> :sswitch_1
        0x7f1000c9 -> :sswitch_2
        0x7f100133 -> :sswitch_2
        0x7f10024f -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "IncomingCallWhileUsingApp"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f040031

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setContentView(I)V

    :goto_0
    const v1, 0x7f10009e

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    const v1, 0x7f1000a6

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    const v1, 0x7f1000a2

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    const v1, 0x7f10009f

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    const v1, 0x7f1000a7

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    const v1, 0x7f1000a3

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    const v1, 0x7f100027

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTipComplete:Landroid/widget/FrameLayout;

    const v1, 0x7f100131

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupDuringCallButtons:Landroid/view/View;

    const v1, 0x7f10012c

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    const v1, 0x7f10012f

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    const/16 v0, 0x400

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->initIncomingCallPopup()V

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->duringCallFullScreen()V

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->animationInit(Landroid/content/Context;)V

    sget-object v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->INIT:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    const v1, 0x7f10009b

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$2;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcall:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcall:Landroid/widget/Button;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$3;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_1
    const v1, 0x7f040030

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "IncomingCallWhileUsingApp"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "IncomingCallWhileUsingApp"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "IncomingCallWhileUsingApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCurrentState:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    sget-object v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->startWaveEffect()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->stopWaveEffect()V

    goto :goto_0
.end method

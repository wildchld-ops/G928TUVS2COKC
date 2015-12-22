.class public Lcom/android/incallui/help/AcceptingAndRejectingCalls;
.super Landroid/app/Activity;
.source "AcceptingAndRejectingCalls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/help/AcceptingAndRejectingCalls$6;,
        Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;
    }
.end annotation


# static fields
.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private answer_passed:Z

.field private callTimerCount:I

.field private endbutton_clicked:Z

.field private isEasyMode:Z

.field private mAddButton:Landroid/widget/Button;

.field private mBlueToothButton:Landroid/widget/ToggleButton;

.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mCurrentState:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExtraVolBtn:Landroid/widget/ToggleButton;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mHandler:Landroid/os/Handler;

.field private mHelpTabView:Landroid/widget/ImageView;

.field private mHelpTapAccept:Landroid/widget/ImageView;

.field private mHelpTapReject:Landroid/widget/ImageView;

.field private mInCallControls:Landroid/view/View;

.field private mIncomingCallWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mIsWaveEffectShowing:Z

.field private mLayoutID:I

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mOnScreenMenuBtn:Landroid/widget/Button;

.field private mOutgoingPager:Landroid/view/View;

.field private mPagerIndicator:Landroid/view/View;

.field private mPersonaliseSoundBtn:Landroid/widget/ToggleButton;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhotoContainer:Landroid/view/View;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRecordButton:Landroid/widget/Button;

.field private mRejectHandle:Landroid/widget/LinearLayout;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mTipAccept:Landroid/widget/FrameLayout;

.field private mTipComplete:Landroid/widget/FrameLayout;

.field private mTipEndCall:Landroid/widget/FrameLayout;

.field private mTipReject:Landroid/widget/FrameLayout;

.field private mTutorialLayout:Landroid/widget/FrameLayout;

.field private mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

.field private mWaveEffectContainer:Landroid/widget/FrameLayout;

.field private mWaveEffectHeight:I

.field private mWaveEffectWidth:I

.field private reject_passed:Z

.field private show_toast:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->isEasyMode:Z

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$2;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$3;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$008(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->dispCallDuration()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/incallui/help/AcceptingAndRejectingCalls;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    return-void
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 5

    const v4, 0x7f050002

    const v0, 0x7f050010

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation1:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-void
.end method

.method private dispCallDuration()V
    .locals 4

    const/16 v3, 0xa

    iget v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    div-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private initIncomingTutorial()V
    .locals 8

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->isEasyMode:Z

    if-eqz v4, :cond_3

    const v4, 0x7f040001

    iput v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    :goto_0
    const/high16 v0, 0x8000000

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09007d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    iget v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setContentView(I)V

    const v4, 0x7f10017b

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIndicatorArea:Landroid/view/ViewGroup;

    const v4, 0x7f1000cf

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0117

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v4, 0x7f10017c

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const v4, 0x7f1000d3

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    const v4, 0x7f1000d4

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryName:Landroid/widget/TextView;

    const v4, 0x7f1000d6

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoneNumber:Landroid/widget/TextView;

    const v4, 0x7f100137

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    const v4, 0x7f100253

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOutgoingPager:Landroid/view/View;

    const v4, 0x7f10019a

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0158

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setClickable(Z)V

    const v4, 0x7f10024a

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setClickable(Z)V

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPersonaliseSoundBtn:Landroid/widget/ToggleButton;

    const v4, 0x7f1000d8

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallTypeLabel:Landroid/widget/TextView;

    const v4, 0x7f100018

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v4, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v4, v7}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    const v4, 0x7f100019

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    const v4, 0x7f100025

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    const v4, 0x7f10001b

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    const v4, 0x7f100027

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipComplete:Landroid/widget/FrameLayout;

    const v4, 0x7f10001d

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    const v4, 0x7f100023

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    const v4, 0x7f100024

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    const v4, 0x7f100257

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mAddButton:Landroid/widget/Button;

    const v4, 0x7f100245

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRecordButton:Landroid/widget/Button;

    const v4, 0x7f10002f

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mDialpadButton:Landroid/widget/Button;

    const v4, 0x7f10024d

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mSpeakerButton:Landroid/widget/ToggleButton;

    const v4, 0x7f10002e

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mMuteButton:Landroid/widget/ToggleButton;

    const v4, 0x7f10024b

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBlueToothButton:Landroid/widget/ToggleButton;

    const v4, 0x7f100250

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPagerIndicator:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPagerIndicator:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    :cond_2
    const v4, 0x7f100021

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    const v4, 0x7f100022

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    const v4, 0x7f10024f

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEndButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f100016

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;

    invoke-direct {v5, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setupWaveEffect()V

    sget-object v4, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->INIT:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updatePanelForCallState(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f040002

    iput v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    goto/16 :goto_0

    :cond_4
    const/high16 v4, 0x7f040000

    iput v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    goto/16 :goto_0
.end method

.method private setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V
    .locals 6

    const/16 v5, 0x64

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string v0, "AcceptingAndRejectingCalls"

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

    iput v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    iput-object p1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentState:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, p1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updatePanelForCallState(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$6;->$SwitchMap$com$android$incallui$help$AcceptingAndRejectingCalls$IncomingCallTutorialStep:[I

    invoke-virtual {p1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->startWaveEffect()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPersonaliseSoundBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPersonaliseSoundBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iput v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->stopWaveEffect()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPersonaliseSoundBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPersonaliseSoundBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->startWaveEffect()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipComplete:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setupWaveEffect()V
    .locals 13

    const/4 v4, 0x0

    const-string v0, "support_wave_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f10018a

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectHeight:I

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const-string v11, "#ff4fa630"

    const-string v10, "#664fa630"

    const-string v6, "#fffafafa"

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const-string v0, "create WaveEffect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectHeight:I

    sget-object v7, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;FF)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setAutoStopOnWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setWaveSineEffect(Z)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method private showToast()V
    .locals 3

    const v2, 0x7f0d0350

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

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
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v0, "startWaveEffect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->startEffect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIsWaveEffectShowing:Z

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
    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v1, :cond_0

    const-string v1, "stopWaveEffect"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->stopEffect()V

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->clearEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIsWaveEffectShowing:Z

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

.method private updateCallCard()V
    .locals 6

    const v5, 0x7f090048

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryName:Landroid/widget/TextView;

    const-string v1, "Jenette McHale"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, "012-345-6789"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOutgoingPager:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOutgoingPager:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOutgoingPager:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPersonaliseSoundBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPersonaliseSoundBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallTypeLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private updatePanelForCallState(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :cond_0
    :goto_0
    sget-object v2, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    if-eq p1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :cond_1
    :goto_1
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10024f
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->initIncomingTutorial()V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateCallCard()V

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->isEasyMode:Z

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->initIncomingTutorial()V

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->animationInit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateCallCard()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->stopWaveEffect()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentState:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    sget-object v1, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->startWaveEffect()V

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    iput-boolean v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    iput-boolean v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "AcceptingAndRejectingCalls"

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

    return-void
.end method

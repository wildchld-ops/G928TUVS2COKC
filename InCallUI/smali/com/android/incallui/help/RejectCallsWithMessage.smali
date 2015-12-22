.class public Lcom/android/incallui/help/RejectCallsWithMessage;
.super Landroid/app/Activity;
.source "RejectCallsWithMessage.java"

# interfaces
.implements Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;
    }
.end annotation


# static fields
.field public static defaultRejectMsgList:[I

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mCreateButton:Landroid/view/View;

.field private mDragUpImageLayout:Landroid/widget/FrameLayout;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mHandler:Landroid/os/Handler;

.field private mIncomingCallWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

.field private mIsWaveEffectShowing:Z

.field private mOnScreenMenuBtn:Landroid/widget/Button;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhotoContainer:Landroid/view/View;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallStateContainer:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

.field private mRejectCallWithMessageItemList:Landroid/widget/ListView;

.field public mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgHandleText:Landroid/widget/TextView;

.field private mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

.field private mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

.field private mRejectCallWithMsgTab:Landroid/widget/LinearLayout;

.field private mSendMsgComplete:Landroid/widget/FrameLayout;

.field private mSendMsgLayout:Landroid/view/ViewGroup;

.field private mSendMsgTip:Landroid/widget/FrameLayout;

.field private mSendMsgTipBubble:Landroid/widget/FrameLayout;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

.field private mWaveEffectContainer:Landroid/widget/FrameLayout;

.field private mWaveEffectHeight:I

.field private mWaveEffectWidth:I

.field private mrejectMsgTip:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->defaultRejectMsgList:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d0351
        0x7f0d0352
        0x7f0d0355
        0x7f0d0354
        0x7f0d0353
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleCount:I

    new-instance v0, Lcom/android/incallui/help/RejectCallsWithMessage$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$7;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/help/RejectCallsWithMessage$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$8;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/RejectCallsWithMessage$9;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$9;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/RejectCallsWithMessage$10;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$10;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->showToast()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/help/RejectCallsWithMessage;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1008(Lcom/android/incallui/help/RejectCallsWithMessage;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->clickRejectCallsWithMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/help/RejectCallsWithMessage;)Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->hideDragUpAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private buttonAnimationInit(Landroid/content/Context;)V
    .locals 5

    const v4, 0x7f050002

    const v0, 0x7f050010

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation1:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-void
.end method

.method private clickRejectCallsWithMessage()V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgComplete:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private hideDragUpAnimation()V
    .locals 2

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "hideDragUpAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
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

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectHeight:I

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectContainer:Landroid/widget/FrameLayout;

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

    iget v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectHeight:I

    sget-object v7, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;FF)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setAutoStopOnWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setWaveSineEffect(Z)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method private showDragUpAnimation()V
    .locals 2

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "showDragUpAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showToast()V
    .locals 3

    const v2, 0x7f0d0350

    sget-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->mToast:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->mToast:Landroid/widget/Toast;

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
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v0, "startWaveEffect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->startEffect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIsWaveEffectShowing:Z

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
    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v1, :cond_0

    const-string v1, "stopWaveEffect"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->stopEffect()V

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->clearEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIsWaveEffectShowing:Z

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
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryName:Landroid/widget/TextView;

    const-string v1, "Jenette McHale"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, "012-345-6789"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallTypeLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private updateHandlerLayout()V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f090066

    const v1, 0x7f090069

    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const v12, 0x7f10001d

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v8, "RejectCallsWithMessage"

    const-string v9, "onCreate()"

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x8000000

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09007d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f04004e

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->setContentView(I)V

    :goto_0
    const v8, 0x7f10017c

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const v8, 0x7f100139

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    const v8, 0x7f1000cf

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0116

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_1
    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v8, 0x7f1000d3

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallStateLabel:Landroid/widget/TextView;

    const v8, 0x7f1000d4

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryName:Landroid/widget/TextView;

    const v8, 0x7f1000d6

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoneNumber:Landroid/widget/TextView;

    const v8, 0x7f100137

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhotoContainer:Landroid/view/View;

    const v8, 0x7f10019a

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mOnScreenMenuBtn:Landroid/widget/Button;

    const v8, 0x7f1000d8

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallTypeLabel:Landroid/widget/TextView;

    const v8, 0x7f1000ee

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v8, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    const v8, 0x7f1000ea

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    const v8, 0x7f10001e

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v12}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$1;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$1;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f10001f

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    const v8, 0x7f100020

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    const v8, 0x7f1000ec

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/RejectMsgContent;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

    const v8, 0x7f1000e8

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v12}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgTab:Landroid/widget/LinearLayout;

    const v8, 0x7f1000ed

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$2;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$2;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v8, 0x7f1000f0

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;

    const v8, 0x7f1000f3

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTip:Landroid/widget/FrameLayout;

    const v8, 0x7f1000f6

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    const v8, 0x7f1000f7

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgComplete:Landroid/widget/FrameLayout;

    const v8, 0x7f1000f8

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->buttonAnimationInit(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_2
    sget-object v8, Lcom/android/incallui/help/RejectCallsWithMessage;->defaultRejectMsgList:[I

    array-length v8, v8

    if-ge v1, v8, :cond_2

    sget-object v8, Lcom/android/incallui/help/RejectCallsWithMessage;->defaultRejectMsgList:[I

    aget v8, v8, v1

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "RejectCallsWithMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Reject Message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    const v8, 0x7f04004d

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->setContentView(I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00d7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v8, v7}, Lcom/android/incallui/RejectMsgContent;->configureRejectMsgList(Ljava/util/List;)V

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v8}, Lcom/android/incallui/RejectMsgContent;->getRejectMsgList()Landroid/widget/ListView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;Lcom/android/incallui/help/RejectCallsWithMessage$1;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_3
    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$3;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$3;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$4;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$4;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$5;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$5;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerScrollListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;)V

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

    const v9, 0x7f1000e4

    invoke-virtual {v8, v9}, Lcom/android/incallui/RejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setFocusable(Z)V

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setClickable(Z)V

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$6;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$6;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->setupWaveEffect()V

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->updateCallCard()V

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->updateHandlerLayout()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->hideDragUpAnimation()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->showDragUpAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->showToast()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->showToast()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "RejectCallsWithMessage"

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

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->startWaveEffect()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->stopWaveEffect()V

    goto :goto_0
.end method

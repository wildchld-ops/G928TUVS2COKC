.class public Lcom/android/systemui/twscreenmanager/TwSwitchModeView;
.super Landroid/widget/FrameLayout;
.source "TwSwitchModeView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwSwitchModeView"


# instance fields
.field private final ANIMATION_DURATION:I

.field private final SWIPE_THRESHOLD_DISTANCE:I

.field private final SWIPE_THRESHOLD_DISTANCE_MAX:I

.field private final debug:Z

.field private mAppMoveIgnoreList:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mCurrentTouchDisplay:I

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mIsDualScreenEnabled:Z

.field private mIsExtendedMode:Z

.field private mMarginLayoutParamsMain:Landroid/view/ViewGroup$MarginLayoutParams;

.field private mMarginLayoutParamsSub:Landroid/view/ViewGroup$MarginLayoutParams;

.field private mMoveIgnoreMain:Z

.field private mMoveIgnoreSub:Z

.field private mPreTouchPositionX:I

.field private mScaleInAnimation:Landroid/view/animation/Animation;

.field private mScaleOutAnimation:Landroid/view/animation/Animation;

.field private mScreen:Lcom/samsung/android/dualscreen/DualScreen;

.field private mScreenShotMain:Landroid/widget/ImageView;

.field private mScreenShotSub:Landroid/widget/ImageView;

.field private mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

.field private mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

.field private mTopRunningAppInMain:Ljava/lang/String;

.field private mTopRunningAppInSub:Ljava/lang/String;

.field private mTouchDownX:I

.field onTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->debug:Z

    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mIsExtendedMode:Z

    iput v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->SWIPE_THRESHOLD_DISTANCE:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->SWIPE_THRESHOLD_DISTANCE_MAX:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->ANIMATION_DURATION:I

    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.incallui"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mAppMoveIgnoreList:[Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->debug:Z

    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mIsExtendedMode:Z

    iput v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->SWIPE_THRESHOLD_DISTANCE:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->SWIPE_THRESHOLD_DISTANCE_MAX:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->ANIMATION_DURATION:I

    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.incallui"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mAppMoveIgnoreList:[Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->debug:Z

    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mIsExtendedMode:Z

    iput v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->SWIPE_THRESHOLD_DISTANCE:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->SWIPE_THRESHOLD_DISTANCE_MAX:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->ANIMATION_DURATION:I

    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.incallui"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mAppMoveIgnoreList:[Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->isMainScreen(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->stopTwScreenManagerServiceWithMoveToScrren(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mIsExtendedMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->followFingerAnimation(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;ILandroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->loadScreenAnimation(ILandroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Lcom/samsung/android/dualscreen/TaskInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->stopTwScreenManagerService(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Lcom/samsung/android/dualscreen/TaskInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTouchDownX:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTouchDownX:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mCurrentTouchDisplay:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mCurrentTouchDisplay:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    return-object v0
.end method

.method private followFingerAnimation(II)V
    .locals 2

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMarginLayoutParamsMain:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMarginLayoutParamsSub:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0400e4

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0e0437

    invoke-virtual {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0e0436

    invoke-virtual {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0e0435

    invoke-virtual {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mIsDualScreenEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMarginLayoutParamsMain:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMarginLayoutParamsSub:Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->isMoveIgnore(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->isMoveIgnore(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    iget-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->startScaleInAnimation(I)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->startScaleInAnimation(I)V

    :cond_1
    return-void
.end method

.method private isMainScreen(I)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0
.end method

.method private isMoveIgnore(I)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v6

    if-ne p1, v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskType()I

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    return v6

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v6

    if-ne p1, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskType()I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4, v7, p1}, Landroid/app/ActivityManager;->getRunningTasks(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mAppMoveIgnoreList:[Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v2, v0, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_0
.end method

.method private loadScreenAnimation(ILandroid/view/MotionEvent;)V
    .locals 4

    const/16 v3, 0xfa

    iget v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTouchDownX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    sub-int v0, v1, v2

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_3

    if-lez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->moveToOtherScreen(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->snapBack(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->snapBack(I)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_0

    if-gez v0, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->moveToOtherScreen(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->snapBack(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->snapBack(I)V

    goto :goto_0
.end method

.method private moveToOtherScreen(I)V
    .locals 14

    iget-object v5, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    move v2, p1

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v9, 0x438

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 v10, 0x438

    new-instance v0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$3;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;IILandroid/view/ViewGroup$MarginLayoutParams;Landroid/widget/ImageView;ILandroid/view/ViewGroup$MarginLayoutParams;Landroid/widget/ImageView;)V

    const-wide/16 v12, 0x12c

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$4;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$4;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private snapBack(I)V
    .locals 14

    iget-object v5, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    move v2, p1

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x0

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v10, 0x0

    new-instance v0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;IILandroid/view/ViewGroup$MarginLayoutParams;Landroid/widget/ImageView;ILandroid/view/ViewGroup$MarginLayoutParams;Landroid/widget/ImageView;)V

    const-wide/16 v12, 0x12c

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startScaleInAnimation(I)V
    .locals 9

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-ne v0, v5, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-ne v0, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleInAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startScaleOutAnimation(I)V
    .locals 9

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private stopTwScreenManagerService(Z)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->startScaleOutAnimation(I)V

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->startScaleOutAnimation(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$1;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private stopTwScreenManagerServiceWithMoveToScrren(I)V
    .locals 10

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    move v9, p1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;

    invoke-direct {v1, p0, v9}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->stopTwScreenManagerService(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public setScreenShotMain(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setScreenShotSub(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public swapScreenShot()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
